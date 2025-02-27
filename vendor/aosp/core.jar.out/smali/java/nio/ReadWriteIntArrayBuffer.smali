.class final Ljava/nio/ReadWriteIntArrayBuffer;
.super Ljava/nio/IntArrayBuffer;
.source "ReadWriteIntArrayBuffer.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/nio/IntArrayBuffer;-><init>(I)V

    .line 48
    return-void
.end method

.method constructor <init>(I[II)V
    .locals 0
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/IntArrayBuffer;-><init>(I[II)V

    .line 52
    return-void
.end method

.method constructor <init>([I)V
    .locals 0
    .parameter "array"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/nio/IntArrayBuffer;-><init>([I)V

    .line 44
    return-void
.end method

.method static copy(Ljava/nio/IntArrayBuffer;I)Ljava/nio/ReadWriteIntArrayBuffer;
    .locals 4
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 34
    new-instance v0, Ljava/nio/ReadWriteIntArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/IntArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteIntArrayBuffer;-><init>(I[II)V

    .line 36
    .local v0, buf:Ljava/nio/ReadWriteIntArrayBuffer;
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 37
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    .line 38
    iput p1, v0, Ljava/nio/Buffer;->mark:I

    .line 39
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyIntArrayBuffer;->copy(Ljava/nio/IntArrayBuffer;I)Ljava/nio/ReadOnlyIntArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/IntBuffer;
    .locals 5

    .prologue
    .line 61
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    iget v2, p0, Ljava/nio/IntArrayBuffer;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/IntArrayBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 63
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    iput v0, p0, Ljava/nio/Buffer;->limit:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/Buffer;->mark:I

    .line 65
    return-object p0
.end method

.method public duplicate()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadWriteIntArrayBuffer;->copy(Ljava/nio/IntArrayBuffer;I)Ljava/nio/ReadWriteIntArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protectedArray()[I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Ljava/nio/IntArrayBuffer;->offset:I

    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public put(I)Ljava/nio/IntBuffer;
    .locals 4
    .parameter "c"

    .prologue
    .line 92
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    aput p1, v0, v1

    .line 96
    return-object p0
.end method

.method public put(II)Ljava/nio/IntBuffer;
    .locals 2
    .parameter "index"
    .parameter "c"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)V

    .line 102
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    .line 103
    return-object p0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .locals 3
    .parameter "src"
    .parameter "srcOffset"
    .parameter "intCount"

    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 109
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v1, p0, Ljava/nio/IntArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 113
    return-object p0
.end method

.method public slice()Ljava/nio/IntBuffer;
    .locals 5

    .prologue
    .line 118
    new-instance v0, Ljava/nio/ReadWriteIntArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/IntArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadWriteIntArrayBuffer;-><init>(I[II)V

    return-object v0
.end method
