.class abstract Ljava/nio/HeapByteBuffer;
.super Ljava/nio/BaseByteBuffer;
.source "HeapByteBuffer.java"


# instance fields
.field final backingArray:[B

.field final offset:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 48
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    .line 49
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .parameter "backingArray"

    .prologue
    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/HeapByteBuffer;-><init>([BII)V

    .line 45
    return-void
.end method

.method constructor <init>([BII)V
    .locals 3
    .parameter "backingArray"
    .parameter "capacity"
    .parameter "offset"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/nio/BaseByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    .line 53
    iput-object p1, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    .line 54
    iput p3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    .line 55
    add-int v0, p3, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backingArray.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", capacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public final get()B
    .locals 4

    .prologue
    .line 107
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 108
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    return v0
.end method

.method public final get(I)B
    .locals 2
    .parameter "index"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)V

    .line 116
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "byteCount"

    .prologue
    .line 63
    const/4 v0, 0x1

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    .line 64
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 66
    return-object p0
.end method

.method final get([CII)V
    .locals 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "charCount"

    .prologue
    const/4 v5, 0x2

    .line 70
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v2

    .line 71
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 72
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 73
    return-void
.end method

.method final get([DII)V
    .locals 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "doubleCount"

    .prologue
    const/16 v5, 0x8

    .line 76
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v2

    .line 77
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 78
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 79
    return-void
.end method

.method final get([FII)V
    .locals 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "floatCount"

    .prologue
    const/4 v5, 0x4

    .line 82
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v2

    .line 83
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 84
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 85
    return-void
.end method

.method final get([III)V
    .locals 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "intCount"

    .prologue
    const/4 v5, 0x4

    .line 88
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v2

    .line 89
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 90
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 91
    return-void
.end method

.method final get([JII)V
    .locals 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "longCount"

    .prologue
    const/16 v5, 0x8

    .line 94
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v2

    .line 95
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 96
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 97
    return-void
.end method

.method final get([SII)V
    .locals 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "shortCount"

    .prologue
    const/4 v5, 0x2

    .line 100
    array-length v0, p1

    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/Buffer;->checkGetBounds(IIII)I

    move-result v2

    .line 101
    .local v2, byteCount:I
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int v4, v0, v1

    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 102
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 103
    return-void
.end method

.method public final getChar()C
    .locals 5

    .prologue
    .line 121
    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 122
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    .line 123
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 125
    :cond_0
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v2

    int-to-char v1, v2

    .line 126
    .local v1, result:C
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 127
    return v1
.end method

.method public final getChar(I)C
    .locals 3
    .parameter "index"

    .prologue
    .line 132
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 133
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getDouble()D
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .locals 2
    .parameter "index"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt()I
    .locals 5

    .prologue
    .line 158
    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x4

    .line 159
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    .line 160
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 162
    :cond_0
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v1

    .line 163
    .local v1, result:I
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 164
    return v1
.end method

.method public final getInt(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 169
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 170
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .locals 6

    .prologue
    .line 175
    iget v3, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v3, 0x8

    .line 176
    .local v0, newPosition:I
    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v3, :cond_0

    .line 177
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 179
    :cond_0
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v4, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v5, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v1

    .line 180
    .local v1, result:J
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 181
    return-wide v1
.end method

.method public final getLong(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 186
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 187
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .locals 5

    .prologue
    .line 192
    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 193
    .local v0, newPosition:I
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    if-le v0, v2, :cond_0

    .line 194
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 196
    :cond_0
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v1

    .line 197
    .local v1, result:S
    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 198
    return v1
.end method

.method public final getShort(I)S
    .locals 3
    .parameter "index"

    .prologue
    .line 203
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/Buffer;->checkIndex(II)V

    .line 204
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->backingArray:[B

    iget v1, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method
