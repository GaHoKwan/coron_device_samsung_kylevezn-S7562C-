.class public abstract Ljava/nio/IntBuffer;
.super Ljava/nio/Buffer;
.source "IntBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 93
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 94
    return-void
.end method

.method public static allocate(I)Ljava/nio/IntBuffer;
    .locals 1
    .parameter "capacity"

    .prologue
    .line 46
    if-gez p0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Ljava/nio/ReadWriteIntArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteIntArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([I)Ljava/nio/IntBuffer;
    .locals 2
    .parameter "array"

    .prologue
    .line 63
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([III)Ljava/nio/IntBuffer;
    .locals 2
    .parameter "array"
    .parameter "start"
    .parameter "intCount"

    .prologue
    .line 85
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 86
    new-instance v0, Ljava/nio/ReadWriteIntArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteIntArrayBuffer;-><init>([I)V

    .line 87
    .local v0, buf:Ljava/nio/IntBuffer;
    iput p1, v0, Ljava/nio/Buffer;->position:I

    .line 88
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 89
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    return-object v0
.end method

.method public final array()[I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedArray()[I

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract compact()Ljava/nio/IntBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Ljava/nio/IntBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->compareTo(Ljava/nio/IntBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/IntBuffer;)I
    .locals 7
    .parameter "otherBuffer"

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 147
    .local v0, compareRemaining:I
    :goto_0
    iget v4, p0, Ljava/nio/Buffer;->position:I

    .line 148
    .local v4, thisPos:I
    iget v2, p1, Ljava/nio/Buffer;->position:I

    .line 150
    .local v2, otherPos:I
    :goto_1
    if-lez v0, :cond_3

    .line 151
    invoke-virtual {p0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    .line 152
    .local v3, thisInt:I
    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    .line 153
    .local v1, otherInt:I
    if-eq v3, v1, :cond_2

    .line 154
    if-ge v3, v1, :cond_1

    const/4 v5, -0x1

    .line 160
    .end local v1           #otherInt:I
    .end local v3           #thisInt:I
    :goto_2
    return v5

    .line 145
    .end local v0           #compareRemaining:I
    .end local v2           #otherPos:I
    .end local v4           #thisPos:I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    goto :goto_0

    .line 154
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherInt:I
    .restart local v2       #otherPos:I
    .restart local v3       #thisInt:I
    .restart local v4       #thisPos:I
    :cond_1
    const/4 v5, 0x1

    goto :goto_2

    .line 156
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 158
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 160
    .end local v1           #otherInt:I
    .end local v3           #thisInt:I
    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2
.end method

.method public abstract duplicate()Ljava/nio/IntBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "other"

    .prologue
    const/4 v6, 0x0

    .line 192
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-nez v7, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    .line 195
    check-cast v3, Ljava/nio/IntBuffer;

    .line 197
    .local v3, otherBuffer:Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 201
    iget v1, p0, Ljava/nio/Buffer;->position:I

    .line 202
    .local v1, myPosition:I
    iget v4, v3, Ljava/nio/Buffer;->position:I

    .line 203
    .local v4, otherPosition:I
    const/4 v0, 0x1

    .local v0, equalSoFar:Z
    move v5, v4

    .end local v4           #otherPosition:I
    .local v5, otherPosition:I
    move v2, v1

    .line 204
    .end local v1           #myPosition:I
    .local v2, myPosition:I
    :goto_1
    if-eqz v0, :cond_3

    iget v7, p0, Ljava/nio/Buffer;->limit:I

    if-ge v2, v7, :cond_3

    .line 205
    add-int/lit8 v1, v2, 0x1

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    add-int/lit8 v4, v5, 0x1

    .end local v5           #otherPosition:I
    .restart local v4       #otherPosition:I
    invoke-virtual {v3, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v5, v4

    .end local v4           #otherPosition:I
    .restart local v5       #otherPosition:I
    move v2, v1

    .end local v1           #myPosition:I
    .restart local v2       #myPosition:I
    goto :goto_1

    .end local v2           #myPosition:I
    .end local v5           #otherPosition:I
    .restart local v1       #myPosition:I
    .restart local v4       #otherPosition:I
    :cond_2
    move v0, v6

    goto :goto_2

    .end local v1           #myPosition:I
    .end local v4           #otherPosition:I
    .restart local v2       #myPosition:I
    .restart local v5       #otherPosition:I
    :cond_3
    move v6, v0

    .line 208
    goto :goto_0
.end method

.method public abstract get()I
.end method

.method public abstract get(I)I
.end method

.method public get([I)Ljava/nio/IntBuffer;
    .locals 2
    .parameter "dst"

    .prologue
    .line 234
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .locals 2
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "intCount"

    .prologue
    .line 257
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 258
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 259
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 261
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 262
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v1

    aput v1, p1, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 290
    iget v1, p0, Ljava/nio/Buffer;->position:I

    .line 291
    .local v1, myPosition:I
    const/4 v0, 0x0

    .line 292
    .local v0, hash:I
    :goto_0
    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-ge v1, v3, :cond_0

    .line 293
    add-int/lit8 v2, v1, 0x1

    .end local v1           #myPosition:I
    .local v2, myPosition:I
    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    goto :goto_0

    .line 295
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[I
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(I)Ljava/nio/IntBuffer;
.end method

.method public abstract put(II)Ljava/nio/IntBuffer;
.end method

.method public put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 3
    .parameter "src"

    .prologue
    .line 425
    if-ne p1, p0, :cond_0

    .line 426
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 428
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 429
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 431
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v0, v1, [I

    .line 432
    .local v0, contents:[I
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 433
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 434
    return-object p0
.end method

.method public final put([I)Ljava/nio/IntBuffer;
    .locals 2
    .parameter "src"

    .prologue
    .line 373
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .locals 2
    .parameter "src"
    .parameter "srcOffset"
    .parameter "intCount"

    .prologue
    .line 398
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 399
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 400
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 402
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 403
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/IntBuffer;
.end method
