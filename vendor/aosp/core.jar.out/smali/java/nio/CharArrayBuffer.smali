.class abstract Ljava/nio/CharArrayBuffer;
.super Ljava/nio/CharBuffer;
.source "CharArrayBuffer.java"


# instance fields
.field protected final backingArray:[C

.field protected final offset:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 43
    new-array v0, p1, [C

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/CharArrayBuffer;-><init>(I[CI)V

    .line 44
    return-void
.end method

.method constructor <init>(I[CI)V
    .locals 0
    .parameter "capacity"
    .parameter "backingArray"
    .parameter "offset"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/nio/CharBuffer;-><init>(I)V

    .line 48
    iput-object p2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    .line 49
    iput p3, p0, Ljava/nio/CharArrayBuffer;->offset:I

    .line 50
    return-void
.end method

.method constructor <init>([C)V
    .locals 2
    .parameter "array"

    .prologue
    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/CharArrayBuffer;-><init>(I[CI)V

    .line 40
    return-void
.end method


# virtual methods
.method public final get()C
    .locals 4

    .prologue
    .line 54
    iget v0, p0, Ljava/nio/Buffer;->position:I

    iget v1, p0, Ljava/nio/Buffer;->limit:I

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    aget-char v0, v0, v1

    return v0
.end method

.method public final get(I)C
    .locals 2
    .parameter "index"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)V

    .line 63
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->offset:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final get([CII)Ljava/nio/CharBuffer;
    .locals 3
    .parameter "dst"
    .parameter "srcOffset"
    .parameter "charCount"

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 69
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget v0, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/Buffer;->position:I

    .line 73
    return-object p0
.end method

.method public final isDirect()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Ljava/nio/Buffer;->checkStartEndRemaining(II)V

    .line 89
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 90
    .local v0, result:Ljava/nio/CharBuffer;
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 92
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->offset:I

    iget v2, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
