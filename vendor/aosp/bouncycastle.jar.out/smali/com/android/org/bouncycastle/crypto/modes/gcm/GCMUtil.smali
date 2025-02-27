.class abstract Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asInts([B)[I
    .locals 4
    .parameter "bs"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 24
    new-array v0, v3, [I

    .line 25
    .local v0, us:[I
    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, v0, v2

    .line 26
    const/4 v1, 0x1

    invoke-static {p0, v3}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 27
    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 28
    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 29
    return-object v0
.end method

.method static multiply([B[B)V
    .locals 10
    .parameter "block"
    .parameter "val"

    .prologue
    const/4 v6, 0x1

    const/16 v9, 0x10

    const/4 v7, 0x0

    .line 34
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    .line 35
    .local v5, tmp:[B
    new-array v1, v9, [B

    .line 37
    .local v1, c:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v9, :cond_4

    .line 39
    aget-byte v0, p1, v2

    .line 40
    .local v0, bits:B
    const/4 v3, 0x7

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_3

    .line 42
    shl-int v8, v6, v3

    and-int/2addr v8, v0

    if-eqz v8, :cond_0

    .line 44
    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 47
    :cond_0
    const/16 v8, 0xf

    aget-byte v8, v5, v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    move v4, v6

    .line 48
    .local v4, lsb:Z
    :goto_2
    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([B)V

    .line 49
    if-eqz v4, :cond_1

    .line 53
    aget-byte v8, v5, v7

    xor-int/lit8 v8, v8, -0x1f

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 40
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v4           #lsb:Z
    :cond_2
    move v4, v7

    .line 47
    goto :goto_2

    .line 37
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v0           #bits:B
    .end local v3           #j:I
    :cond_4
    invoke-static {v1, v7, p0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-void
.end method

.method static multiplyP([I)V
    .locals 4
    .parameter "x"

    .prologue
    const/4 v1, 0x0

    .line 64
    const/4 v2, 0x3

    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 65
    .local v0, lsb:Z
    :goto_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)V

    .line 66
    if-eqz v0, :cond_0

    .line 70
    aget v2, p0, v1

    const/high16 v3, -0x1f00

    xor-int/2addr v2, v3

    aput v2, p0, v1

    .line 72
    :cond_0
    return-void

    .end local v0           #lsb:Z
    :cond_1
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method static multiplyP8([I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 76
    const/16 v0, 0x8

    .local v0, i:I
    :goto_0
    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    .line 76
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method static oneAsBytes()[B
    .locals 3

    .prologue
    .line 10
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 11
    .local v0, tmp:[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 12
    return-object v0
.end method

.method static oneAsInts()[I
    .locals 3

    .prologue
    .line 17
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 18
    .local v0, tmp:[I
    const/4 v1, 0x0

    const/high16 v2, -0x8000

    aput v2, v0, v1

    .line 19
    return-object v0
.end method

.method static shiftRight([B)V
    .locals 4
    .parameter "block"

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, i:I
    const/4 v1, 0x0

    .line 88
    .local v1, bit:I
    :goto_0
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 89
    .local v0, b:I
    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 96
    return-void

    .line 94
    :cond_0
    and-int/lit8 v3, v0, 0x1

    shl-int/lit8 v1, v3, 0x7

    .line 95
    goto :goto_0
.end method

.method static shiftRight([I)V
    .locals 4
    .parameter "block"

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, i:I
    const/4 v1, 0x0

    .line 104
    .local v1, bit:I
    :goto_0
    aget v0, p0, v2

    .line 105
    .local v0, b:I
    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    aput v3, p0, v2

    .line 106
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    shl-int/lit8 v1, v0, 0x1f

    .line 111
    goto :goto_0
.end method

.method static xor([B[B)V
    .locals 3
    .parameter "block"
    .parameter "val"

    .prologue
    .line 116
    const/16 v0, 0xf

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 118
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 116
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method static xor([I[I)V
    .locals 3
    .parameter "block"
    .parameter "val"

    .prologue
    .line 124
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 126
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 124
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method
