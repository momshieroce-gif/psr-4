<?php

namespace App\Services;

use App\Repositories\TransactionMessageRepository;
use Illuminate\Support\Facades\Auth;
use App\Traits\Obfuscate\OptimusId;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;
use ProtoneMedia\LaravelFFMpeg\Support\FFMpeg;

class TransactionMessageService
{
    use OptimusId;
    private TransactionMessageRepository $repository;
    
    public function __construct(TransactionMessageRepository $repository)
    {
        $this->repository = $repository;
    }

    public function getTransactionMessages(int $transactionId)
    {
        $messages = $this->repository->getTransactionMessages($transactionId);

        foreach ($messages as $message) {
            $message->load('transactionMedia');
        }

        return $messages;
    }

    public function createTransactionMessage(array $data, $files = null)
    {
        $data['user_id'] = Auth::id();
        $data['transaction_id'] = $this->optimus()->decode((int)$data['transaction_id']);
        $this->repository->setParameters($data);
        $result = $this->repository->create();

        // Handle file uploads
        if ($result && $files && is_array($files)) {
            $this->handleFileUploads($result, $files);
        }

        // Load transaction media relationship
        if ($result) {
            $result->load('transactionMedia');
        }

        return $result;
    }

    public function updateTransactionMessage(int $id, array $data)
    {
        return $this->repository->updateTransactionMessage($id, $data);
    }

    public function deleteTransactionMessage(int $id)
    {
        return $this->repository->deleteTransactionMessage($id);
    }

    private function handleFileUploads($transactionMessage, $files)
    {
        foreach ($files as $file) {
            $extension = $file->getClientOriginalExtension();
            $originalName = $file->getClientOriginalName();
            $fileName = uniqid() . '-' . $originalName;
            $filePath = 'images/uploads/' . $fileName;

            $mediaType = in_array($extension, ['mp4', 'mov', 'avi']) ? 'video' : 'image';

            if ($mediaType === 'image') {
                $optimizedImage = $this->optimizeImage($file);
                $optimizedImage->save(public_path($filePath), 85);
            } else {
                $this->optimizeVideo($file, public_path($filePath));
            }

            $transactionMessage->transactionMedia()->create([
                'path' => $filePath,
                'type' => $mediaType,
            ]);
        }
    }

    private function optimizeImage($file)
    {
        $manager = new ImageManager(new Driver());
        $image = $manager->read($file->getPathname());

        $width = $image->width();
        $height = $image->height();

        $maxWidth = 1920;
        $maxHeight = 1080;

        if ($width > $maxWidth || $height > $maxHeight) {
            $image->scale($maxWidth, $maxHeight);
        }

        if ($file->getClientOriginalExtension() !== 'jpg' && $file->getClientOriginalExtension() !== 'jpeg') {
            $image->toJpeg(85);
        }

        return $image;
    }

    private function optimizeVideo($file, $outputPath)
    {
        $tempPath = $file->getPathname();

        FFMpeg::fromDisk('local')
            ->open($tempPath)
            ->export()
            ->toDisk('local')
            ->inFormat(new \FFMpeg\Format\Video\X264('libmp3lame', 'libx264'))
            ->save($outputPath);

        if (file_exists($tempPath)) {
            unlink($tempPath);
        }
    }
}
