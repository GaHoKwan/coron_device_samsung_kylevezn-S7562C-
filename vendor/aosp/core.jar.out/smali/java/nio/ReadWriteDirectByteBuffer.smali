.class final Ljava/nio/ReadWriteDirectByteBuffer;
.super Ljava/nio/DirectByteBuffer;
.source "ReadWriteDirectByteBuffer.java"


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 46
    invoke-static {p1}, Ljava/nio/MemoryBlock;->allocate(I)Ljava/nio/MemoryBlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 47
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .parameter "address"
    .parameter "capacity"

    .prologue
    .line 51
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Ljava/nio/MemoryBlock;->wrapFromJni(IJ)Ljava/nio/MemoryBlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/nio/MemoryBlock;II)V
    .locals 0
    .parameter "block"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 56
    return-void
.end method

.method static copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadWriteDirectByteBuffer;
    .locals 4
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 36
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    .line 38
    .local v0, buf:Ljava/nio/ReadWriteDirectByteBuffer;
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 39
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    .line 40
    iput p1, v0, Ljava/nio/Buffer;->mark:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadOnlyDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 65
    const/4 v1, 0x0

    iget v3, p0, Ljava/nio/Buffer;->position:I

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 66
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 67
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 69
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteDirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;I)Ljava/nio/ReadWriteDirectByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "value"

    .prologue
    .line 84
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 85
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    .line 88
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)V

    .line 94
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    .line 95
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "src"
    .parameter "srcOffset"
    .parameter "byteCount"

    .prologue
    .line 100
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    .line 101
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->pokeByteArray(I[BII)V

    .line 102
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 103
    return-object p0
.end method

.method final put([CII)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "charCount"

    .prologue
    .line 107
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 108
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeCharArray(I[CIIZ)V

    .line 109
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 110
    return-void
.end method

.method final put([DII)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "doubleCount"

    .prologue
    .line 113
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 114
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeDoubleArray(I[DIIZ)V

    .line 115
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 116
    return-void
.end method

.method final put([FII)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "floatCount"

    .prologue
    .line 119
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 120
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeFloatArray(I[FIIZ)V

    .line 121
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 122
    return-void
.end method

.method final put([III)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "intCount"

    .prologue
    .line 125
    const/4 v0, 0x4

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 126
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeIntArray(I[IIIZ)V

    .line 127
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 128
    return-void
.end method

.method final put([JII)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "longCount"

    .prologue
    .line 131
    const/16 v0, 0x8

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 132
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeLongArray(I[JIIZ)V

    .line 133
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 134
    return-void
.end method

.method final put([SII)V
    .locals 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "shortCount"

    .prologue
    .line 137
    const/4 v0, 0x2

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkPutBounds(IIII)I

    move-result v6

    .line 138
    .local v6, byteCount:I
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeShortArray(I[SIIZ)V

    .line 139
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 140
    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 5
    .parameter "value"

    .prologue
    .line 144
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 145
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    .line 146
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 148
    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    int-to-short v3, p1

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 149
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 150
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 155
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 156
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    int-to-short v2, p2

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 157
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 6
    .parameter "value"

    .prologue
    .line 162
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 163
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    .line 164
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 166
    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    iget-object v5, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 167
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 168
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 173
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 174
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 175
    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 5
    .parameter "value"

    .prologue
    .line 180
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 181
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    .line 182
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 184
    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 185
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 186
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 191
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 192
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 193
    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "value"

    .prologue
    .line 198
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x4

    .line 199
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    .line 200
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 202
    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 203
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 204
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 209
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 210
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    .line 211
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 227
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 228
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, p3, v2}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 229
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "value"

    .prologue
    .line 216
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x8

    .line 217
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    .line 218
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 220
    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, p2, v3}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    .line 221
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 222
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 245
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 246
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 247
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "value"

    .prologue
    .line 234
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v1, 0x2

    .line 235
    .local v0, newPosition:I
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v1, :cond_0

    .line 236
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 238
    :cond_0
    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    .line 239
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 240
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 252
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    return-object v0
.end method
