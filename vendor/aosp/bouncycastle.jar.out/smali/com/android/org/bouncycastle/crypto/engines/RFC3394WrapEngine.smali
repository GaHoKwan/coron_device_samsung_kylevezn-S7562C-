.class public Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source "RFC3394WrapEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 34
    return-void

    .line 27
    nop

    :array_0
    .array-data 0x1
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
    .end array-data
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .parameter "forWrapping"
    .parameter "param"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 42
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 44
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 47
    .restart local p2
    :cond_0
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2

    .line 49
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 60
    :cond_1
    return-void

    .line 51
    .restart local p2
    :cond_2
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 53
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 54
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV not equal to 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unwrap([BII)[B
    .locals 12
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 124
    iget-boolean v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v9, :cond_0

    .line 126
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "not set for unwrapping"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 129
    :cond_0
    div-int/lit8 v6, p3, 0x8

    .line 131
    .local v6, n:I
    mul-int/lit8 v9, v6, 0x8

    if-eq v9, p3, :cond_1

    .line 133
    new-instance v9, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v10, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 136
    :cond_1
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    sub-int v9, p3, v9

    new-array v1, v9, [B

    .line 137
    .local v1, block:[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    new-array v0, v9, [B

    .line 138
    .local v0, a:[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    add-int/lit8 v9, v9, 0x8

    new-array v2, v9, [B

    .line 140
    .local v2, buf:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {p1, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    sub-int v11, p3, v11

    invoke-static {p1, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v9, v10, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 145
    add-int/lit8 v6, v6, -0x1

    .line 147
    const/4 v4, 0x5

    .local v4, j:I
    :goto_0
    if-ltz v4, :cond_4

    .line 149
    move v3, v6

    .local v3, i:I
    :goto_1
    const/4 v9, 0x1

    if-lt v3, v9, :cond_3

    .line 151
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v0, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/lit8 v9, v3, -0x1

    mul-int/lit8 v9, v9, 0x8

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    const/16 v11, 0x8

    invoke-static {v1, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    mul-int v9, v6, v4

    add-int v7, v9, v3

    .line 155
    .local v7, t:I
    const/4 v5, 0x1

    .local v5, k:I
    :goto_2
    if-eqz v7, :cond_2

    .line 157
    int-to-byte v8, v7

    .line 159
    .local v8, v:B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    sub-int/2addr v9, v5

    aget-byte v10, v2, v9

    xor-int/2addr v10, v8

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 161
    ushr-int/lit8 v7, v7, 0x8

    .line 155
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 164
    .end local v8           #v:B
    :cond_2
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v2, v10, v2, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 165
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v2, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    const/16 v9, 0x8

    add-int/lit8 v10, v3, -0x1

    mul-int/lit8 v10, v10, 0x8

    const/16 v11, 0x8

    invoke-static {v2, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 147
    .end local v5           #k:I
    .end local v7           #t:I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 170
    .end local v3           #i:I
    :cond_4
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    if-nez v9, :cond_5

    .line 172
    new-instance v9, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v10, "checksum failed"

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 175
    :cond_5
    return-object v1
.end method

.method public wrap([BII)[B
    .locals 12
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    .line 72
    iget-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v8, :cond_0

    .line 74
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "not set for wrapping"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 77
    :cond_0
    div-int/lit8 v5, p3, 0x8

    .line 79
    .local v5, n:I
    mul-int/lit8 v8, v5, 0x8

    if-eq v8, p3, :cond_1

    .line 81
    new-instance v8, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v9, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 84
    :cond_1
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    add-int/2addr v8, p3

    new-array v0, v8, [B

    .line 85
    .local v0, block:[B
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    add-int/lit8 v8, v8, 0x8

    new-array v1, v8, [B

    .line 87
    .local v1, buf:[B
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v8, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    invoke-static {p1, v8, v0, v9, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v8, v9, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 92
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    const/4 v8, 0x6

    if-eq v3, v8, :cond_4

    .line 94
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-gt v2, v5, :cond_3

    .line 96
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    invoke-static {v0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    mul-int/lit8 v8, v2, 0x8

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    const/16 v10, 0x8

    invoke-static {v0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v1, v9, v1, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 100
    mul-int v8, v5, v3

    add-int v6, v8, v2

    .line 101
    .local v6, t:I
    const/4 v4, 0x1

    .local v4, k:I
    :goto_2
    if-eqz v6, :cond_2

    .line 103
    int-to-byte v7, v6

    .line 105
    .local v7, v:B
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    sub-int/2addr v8, v4

    aget-byte v9, v1, v8

    xor-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 107
    ushr-int/lit8 v6, v6, 0x8

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 110
    .end local v7           #v:B
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static {v1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    const/16 v8, 0x8

    mul-int/lit8 v9, v2, 0x8

    const/16 v10, 0x8

    invoke-static {v1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 92
    .end local v4           #k:I
    .end local v6           #t:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v2           #i:I
    :cond_4
    return-object v0
.end method
