.class abstract Ljava/nio/BaseByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "BaseByteBuffer.java"


# direct methods
.method protected constructor <init>(ILjava/nio/MemoryBlock;)V
    .locals 0
    .parameter "capacity"
    .parameter "block"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/nio/ByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Ljava/nio/CharToByteBufferAdapter;->asCharBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Ljava/nio/DoubleToByteBufferAdapter;->asDoubleBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Ljava/nio/FloatToByteBufferAdapter;->asFloatBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Ljava/nio/IntToByteBufferAdapter;->asIntBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Ljava/nio/LongToByteBufferAdapter;->asLongBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Ljava/nio/ShortToByteBufferAdapter;->asShortBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getChar()C
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public getChar(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "value"

    .prologue
    .line 71
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 76
    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
