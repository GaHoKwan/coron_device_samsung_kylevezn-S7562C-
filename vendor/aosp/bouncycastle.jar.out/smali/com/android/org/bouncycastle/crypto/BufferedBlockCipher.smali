.class public Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.super Ljava/lang/Object;
.source "BufferedBlockCipher.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field protected cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field protected forEncryption:Z

.field protected partialBlockOkay:Z

.field protected pgpCFB:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 5
    .parameter "cipher"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 40
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    .line 41
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 46
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, name:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 49
    .local v0, idx:I
    if-lez v0, :cond_0

    const-string v2, "PGP"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    .line 51
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v2, :cond_1

    .line 53
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    .line 59
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 49
    goto :goto_0

    .line 57
    :cond_1
    if-lez v0, :cond_3

    const-string v2, "CFB"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OFB"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OpenPGP"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SIC"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GCTR"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_2
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, resultLen:I
    :try_start_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 268
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short for doFinal()"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    throw v1

    .line 271
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-eqz v1, :cond_2

    .line 273
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    if-nez v1, :cond_1

    .line 275
    new-instance v1, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "data not block size aligned"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 279
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 280
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 281
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    return v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputSize(I)I
    .locals 1
    .parameter "length"

    .prologue
    .line 140
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 4
    .parameter "len"

    .prologue
    .line 113
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 116
    .local v1, total:I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v2, v1, v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 125
    .local v0, leftOver:I
    :goto_0
    sub-int v2, v1, v0

    return v2

    .line 122
    .end local v0           #leftOver:I
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .restart local v0       #leftOver:I
    goto :goto_0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 90
    return-void
.end method

.method public processByte(B[BI)I
    .locals 5
    .parameter "in"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, resultLen:I
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 163
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v2, v4, p2, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 166
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 169
    :cond_0
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 8
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 192
    if-gez p3, :cond_0

    .line 194
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 198
    .local v0, blockSize:I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 200
    .local v2, length:I
    if-lez v2, :cond_1

    .line 202
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_1

    .line 204
    new-instance v4, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_1
    const/4 v3, 0x0

    .line 209
    .local v3, resultLen:I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 211
    .local v1, gapLen:I
    if-le p3, v1, :cond_2

    .line 213
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 217
    iput v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 218
    sub-int/2addr p3, v1

    .line 219
    add-int/2addr p2, v1

    .line 221
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_2

    .line 223
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v3

    invoke-interface {v4, p1, p2, p4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 225
    sub-int/2addr p3, v0

    .line 226
    add-int/2addr p2, v0

    goto :goto_0

    .line 230
    :cond_2
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 234
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v5, v5

    if-ne v4, v5, :cond_3

    .line 236
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v6, p5, v3

    invoke-interface {v4, v5, v7, p4, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 237
    iput v7, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 240
    :cond_3
    return v3
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    aput-byte v2, v1, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 311
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 312
    return-void
.end method
