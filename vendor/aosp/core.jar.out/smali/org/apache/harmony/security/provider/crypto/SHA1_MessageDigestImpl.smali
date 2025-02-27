.class public Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;
.super Ljava/security/MessageDigestSpi;
.source "SHA1_MessageDigestImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# instance fields
.field private buffer:[I

.field private messageLength:J

.field private oneByte:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 54
    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    .line 58
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->engineReset()V

    .line 59
    return-void
.end method

.method private processDigest([BI)V
    .locals 13
    .parameter "digest"
    .parameter "offset"

    .prologue
    const/16 v12, 0x51

    const/16 v11, 0xe

    const/4 v10, 0x0

    const/16 v9, 0xf

    .line 80
    iget-wide v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    const/4 v8, 0x3

    shl-long v4, v6, v8

    .line 82
    .local v4, nBits:J
    const/16 v6, -0x80

    invoke-virtual {p0, v6}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->engineUpdate(B)V

    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, i:I
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aget v6, v6, v12

    add-int/lit8 v6, v6, 0x3

    shr-int/lit8 v3, v6, 0x2

    .line 102
    .local v3, lastWord:I
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aget v6, v6, v12

    if-eqz v6, :cond_0

    .line 104
    if-ge v3, v9, :cond_1

    .line 105
    move v0, v3

    .line 114
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-static {v6, v0, v11, v10}, Ljava/util/Arrays;->fill([IIII)V

    .line 116
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v7, 0x20

    ushr-long v7, v4, v7

    long-to-int v7, v7

    aput v7, v6, v11

    .line 117
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const-wide/16 v7, -0x1

    and-long/2addr v7, v4

    long-to-int v7, v7

    aput v7, v6, v9

    .line 118
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-static {v6}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 121
    move v1, p2

    .line 122
    .local v1, j:I
    const/16 v0, 0x52

    :goto_1
    const/16 v6, 0x57

    if-ge v0, v6, :cond_3

    .line 123
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aget v2, v6, v0

    .line 124
    .local v2, k:I
    ushr-int/lit8 v6, v2, 0x18

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    .line 125
    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 126
    add-int/lit8 v6, v1, 0x2

    ushr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 127
    add-int/lit8 v6, v1, 0x3

    int-to-byte v7, v2

    aput-byte v7, p1, v6

    .line 128
    add-int/lit8 v1, v1, 0x4

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    .end local v1           #j:I
    .end local v2           #k:I
    :cond_1
    if-ne v3, v9, :cond_2

    .line 108
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aput v10, v6, v9

    .line 110
    :cond_2
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-static {v6}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 111
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    .restart local v1       #j:I
    :cond_3
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->engineReset()V

    .line 132
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;

    .line 146
    .local v0, cloneObj:Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;
    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    .line 147
    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    .line 148
    return-object v0
.end method

.method protected engineDigest([BII)I
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buf == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    array-length v0, p1

    if-gt p2, v0, :cond_1

    array-length v0, p1

    if-gt p3, v0, :cond_1

    add-int v0, p3, p2

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 207
    :cond_2
    if-ge p3, v2, :cond_3

    .line 208
    new-instance v0, Ljava/security/DigestException;

    const-string v1, "len < DIGEST_LENGTH"

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_3
    if-gez p2, :cond_4

    .line 211
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 214
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->processDigest([BI)V

    .line 216
    return v2
.end method

.method protected engineDigest()[B
    .locals 2

    .prologue
    .line 163
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 164
    .local v0, hash:[B
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->processDigest([BI)V

    .line 165
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    .prologue
    .line 229
    const/16 v0, 0x14

    return v0
.end method

.method protected engineReset()V
    .locals 3

    .prologue
    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    .line 242
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x51

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 243
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    .line 244
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    .line 245
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    .line 246
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    .line 247
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    .line 248
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 4
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    aput-byte p1, v0, v2

    .line 262
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    invoke-static {v0, v1, v2, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    .line 263
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    .line 264
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 4
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    if-gtz p3, :cond_1

    .line 306
    :goto_0
    return-void

    .line 297
    :cond_1
    if-gez p2, :cond_2

    .line 298
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 300
    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    array-length v0, p1

    if-gt p3, v0, :cond_3

    add-int v0, p3, p2

    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 301
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 304
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    .line 305
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:J

    goto :goto_0
.end method
