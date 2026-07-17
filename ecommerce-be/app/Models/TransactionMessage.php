<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\Obfuscate\OptimusId;
use Illuminate\Database\Eloquent\SoftDeletes;
use OwenIt\Auditing\Contracts\Auditable;

class TransactionMessage extends Model implements Auditable
{
    use HasFactory, OptimusId, SoftDeletes;
    use \OwenIt\Auditing\Auditable;

    protected $table = 'transaction_messages';
   
    protected $fillable = [
        'transaction_id',
        'user_id',
        'message',
    ];

    protected $appends = ['optimus_id'];

    public function transaction()
    {
        return $this->belongsTo(Transaction::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
