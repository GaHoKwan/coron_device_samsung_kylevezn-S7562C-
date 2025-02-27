.class public Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
.source "PaddedBufferedBlockCipher.java"


# instance fields
.field padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .parameter "cipher"

    .prologue
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1
    .parameter "cipher"
    .parameter "padding"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 33
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 35
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 37
    return-void
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
    const/4 v5, 0x0

    .line 246
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 247
    .local v0, blockSize:I
    const/4 v1, 0x0

    .line 249
    .local v1, resultLen:I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_2

    .line 251
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_1

    .line 253
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 257
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3, v5, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 261
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-interface {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 266
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v4, p2, v1

    invoke-interface {v2, v3, v5, p1, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 268
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 296
    :goto_0
    return v1

    .line 272
    :cond_2
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_3

    .line 274
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 275
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->padCount([B)I

    move-result v2

    sub-int/2addr v1, v2

    .line 288
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 281
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "last block incomplete in decryption"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    throw v2
.end method

.method public getOutputSize(I)I
    .locals 4
    .parameter "len"

    .prologue
    .line 95
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 96
    .local v1, total:I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 98
    .local v0, leftOver:I
    if-nez v0, :cond_1

    .line 100
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 108
    .end local v1           #total:I
    :cond_0
    :goto_0
    return v1

    .restart local v1       #total:I
    :cond_1
    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v3, v3

    add-int v1, v2, v3

    goto :goto_0
.end method

.method public getUpdateOutputSize(I)I
    .locals 3
    .parameter "len"

    .prologue
    .line 122
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 123
    .local v1, total:I
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 125
    .local v0, leftOver:I
    if-nez v0, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    .line 130
    :goto_0
    return v2

    :cond_0
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 68
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 70
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 72
    .local v0, p:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 74
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 82
    .end local v0           #p:Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 80
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method

.method public processByte(B[BI)I
    .locals 4
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
    const/4 v3, 0x0

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, resultLen:I
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 154
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 159
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 7
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
    const/4 v6, 0x0

    .line 182
    if-gez p3, :cond_0

    .line 184
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 188
    .local v0, blockSize:I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 190
    .local v2, length:I
    if-lez v2, :cond_1

    .line 192
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_1

    .line 194
    new-instance v4, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    :cond_1
    const/4 v3, 0x0

    .line 199
    .local v3, resultLen:I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 201
    .local v1, gapLen:I
    if-le p3, v1, :cond_2

    .line 203
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, p4, p5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 207
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 208
    sub-int/2addr p3, v1

    .line 209
    add-int/2addr p2, v1

    .line 211
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v3

    invoke-interface {v4, p1, p2, p4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 215
    sub-int/2addr p3, v0

    .line 216
    add-int/2addr p2, v0

    goto :goto_0

    .line 220
    :cond_2
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 224
    return v3
.end method
