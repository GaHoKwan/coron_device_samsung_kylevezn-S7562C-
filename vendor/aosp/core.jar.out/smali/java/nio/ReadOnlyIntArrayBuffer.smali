.class final Ljava/nio/ReadOnlyIntArrayBuffer;
.super Ljava/nio/IntArrayBuffer;
.source "ReadOnlyIntArrayBuffer.java"


# direct methods
.method constructor <init>(I[II)V
    .locals 0
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "arrayOffset"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/IntArrayBuffer;-><init>(I[II)V

    .line 45
    return-void
.end method

.method static copy(Ljava/nio/IntArrayBuffer;I)Ljava/nio/ReadOnlyIntArrayBuffer;
    .locals 4
    .parameter "other"
    .parameter "markOfOther"

    .prologue
    .line 35
    new-instance v0, Ljava/nio/ReadOnlyIntArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/IntArrayBuffer;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyIntArrayBuffer;-><init>(I[II)V

    .line 37
    .local v0, buf:Ljava/nio/ReadOnlyIntArrayBuffer;
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 38
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/Buffer;->position:I

    .line 39
    iput p1, v0, Ljava/nio/Buffer;->mark:I

    .line 40
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/nio/ReadOnlyIntArrayBuffer;->duplicate()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public duplicate()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    invoke-static {p0, v0}, Ljava/nio/ReadOnlyIntArrayBuffer;->copy(Ljava/nio/IntArrayBuffer;I)Ljava/nio/ReadOnlyIntArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method protectedArray()[I
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protectedArrayOffset()I
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protectedHasArray()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public put(I)Ljava/nio/IntBuffer;
    .locals 1
    .parameter "c"

    .prologue
    .line 81
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(II)Ljava/nio/IntBuffer;
    .locals 1
    .parameter "index"
    .parameter "c"

    .prologue
    .line 86
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 1
    .parameter "buf"

    .prologue
    .line 91
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final put([III)Ljava/nio/IntBuffer;
    .locals 1
    .parameter "src"
    .parameter "srcOffset"
    .parameter "intCount"

    .prologue
    .line 96
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public slice()Ljava/nio/IntBuffer;
    .locals 5

    .prologue
    .line 101
    new-instance v0, Ljava/nio/ReadOnlyIntArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/IntArrayBuffer;->backingArray:[I

    iget v3, p0, Ljava/nio/IntArrayBuffer;->offset:I

    iget v4, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/ReadOnlyIntArrayBuffer;-><init>(I[II)V

    return-object v0
.end method
