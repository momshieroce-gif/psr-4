<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class TransactionMedia extends Model
{
    use HasFactory;

    protected $table = 'transaction_media';
    protected $fillable = [
        'path',
        'type',
        'transaction_message_id',
    ];

    public function transactionMessage(): BelongsTo
    {
        return $this->belongsTo(TransactionMessage::class);
    }

    public function getUrlAttribute(): string
    {
        return asset('storage/' . $this->path);
    }
}
