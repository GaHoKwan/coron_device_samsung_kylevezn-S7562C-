.class Ljava/math/Primality;
.super Ljava/lang/Object;
.source "Primality.java"


# static fields
.field private static final BIprimes:[Ljava/math/BigInteger;

.field private static final primes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    const/16 v1, 0xac

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Ljava/math/Primality;->primes:[I

    .line 47
    sget-object v1, Ljava/math/Primality;->primes:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/math/BigInteger;

    sput-object v1, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Ljava/math/Primality;->primes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 73
    sget-object v1, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    sget-object v2, Ljava/math/Primality;->primes:[I

    aget v2, v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xe5t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x7t 0x1t 0x0t 0x0t
        0xdt 0x1t 0x0t 0x0t
        0xft 0x1t 0x0t 0x0t
        0x15t 0x1t 0x0t 0x0t
        0x19t 0x1t 0x0t 0x0t
        0x1bt 0x1t 0x0t 0x0t
        0x25t 0x1t 0x0t 0x0t
        0x33t 0x1t 0x0t 0x0t
        0x37t 0x1t 0x0t 0x0t
        0x39t 0x1t 0x0t 0x0t
        0x3dt 0x1t 0x0t 0x0t
        0x4bt 0x1t 0x0t 0x0t
        0x51t 0x1t 0x0t 0x0t
        0x5bt 0x1t 0x0t 0x0t
        0x5dt 0x1t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
        0x67t 0x1t 0x0t 0x0t
        0x6ft 0x1t 0x0t 0x0t
        0x75t 0x1t 0x0t 0x0t
        0x7bt 0x1t 0x0t 0x0t
        0x7ft 0x1t 0x0t 0x0t
        0x85t 0x1t 0x0t 0x0t
        0x8dt 0x1t 0x0t 0x0t
        0x91t 0x1t 0x0t 0x0t
        0x99t 0x1t 0x0t 0x0t
        0xa3t 0x1t 0x0t 0x0t
        0xa5t 0x1t 0x0t 0x0t
        0xaft 0x1t 0x0t 0x0t
        0xb1t 0x1t 0x0t 0x0t
        0xb7t 0x1t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
        0xc1t 0x1t 0x0t 0x0t
        0xc9t 0x1t 0x0t 0x0t
        0xcdt 0x1t 0x0t 0x0t
        0xcft 0x1t 0x0t 0x0t
        0xd3t 0x1t 0x0t 0x0t
        0xdft 0x1t 0x0t 0x0t
        0xe7t 0x1t 0x0t 0x0t
        0xebt 0x1t 0x0t 0x0t
        0xf3t 0x1t 0x0t 0x0t
        0xf7t 0x1t 0x0t 0x0t
        0xfdt 0x1t 0x0t 0x0t
        0x9t 0x2t 0x0t 0x0t
        0xbt 0x2t 0x0t 0x0t
        0x1dt 0x2t 0x0t 0x0t
        0x23t 0x2t 0x0t 0x0t
        0x2dt 0x2t 0x0t 0x0t
        0x33t 0x2t 0x0t 0x0t
        0x39t 0x2t 0x0t 0x0t
        0x3bt 0x2t 0x0t 0x0t
        0x41t 0x2t 0x0t 0x0t
        0x4bt 0x2t 0x0t 0x0t
        0x51t 0x2t 0x0t 0x0t
        0x57t 0x2t 0x0t 0x0t
        0x59t 0x2t 0x0t 0x0t
        0x5ft 0x2t 0x0t 0x0t
        0x65t 0x2t 0x0t 0x0t
        0x69t 0x2t 0x0t 0x0t
        0x6bt 0x2t 0x0t 0x0t
        0x77t 0x2t 0x0t 0x0t
        0x81t 0x2t 0x0t 0x0t
        0x83t 0x2t 0x0t 0x0t
        0x87t 0x2t 0x0t 0x0t
        0x8dt 0x2t 0x0t 0x0t
        0x93t 0x2t 0x0t 0x0t
        0x95t 0x2t 0x0t 0x0t
        0xa1t 0x2t 0x0t 0x0t
        0xa5t 0x2t 0x0t 0x0t
        0xabt 0x2t 0x0t 0x0t
        0xb3t 0x2t 0x0t 0x0t
        0xbdt 0x2t 0x0t 0x0t
        0xc5t 0x2t 0x0t 0x0t
        0xcft 0x2t 0x0t 0x0t
        0xd7t 0x2t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0xe3t 0x2t 0x0t 0x0t
        0xe7t 0x2t 0x0t 0x0t
        0xeft 0x2t 0x0t 0x0t
        0xf5t 0x2t 0x0t 0x0t
        0xf9t 0x2t 0x0t 0x0t
        0x1t 0x3t 0x0t 0x0t
        0x5t 0x3t 0x0t 0x0t
        0x13t 0x3t 0x0t 0x0t
        0x1dt 0x3t 0x0t 0x0t
        0x29t 0x3t 0x0t 0x0t
        0x2bt 0x3t 0x0t 0x0t
        0x35t 0x3t 0x0t 0x0t
        0x37t 0x3t 0x0t 0x0t
        0x3bt 0x3t 0x0t 0x0t
        0x3dt 0x3t 0x0t 0x0t
        0x47t 0x3t 0x0t 0x0t
        0x55t 0x3t 0x0t 0x0t
        0x59t 0x3t 0x0t 0x0t
        0x5bt 0x3t 0x0t 0x0t
        0x5ft 0x3t 0x0t 0x0t
        0x6dt 0x3t 0x0t 0x0t
        0x71t 0x3t 0x0t 0x0t
        0x73t 0x3t 0x0t 0x0t
        0x77t 0x3t 0x0t 0x0t
        0x8bt 0x3t 0x0t 0x0t
        0x8ft 0x3t 0x0t 0x0t
        0x97t 0x3t 0x0t 0x0t
        0xa1t 0x3t 0x0t 0x0t
        0xa9t 0x3t 0x0t 0x0t
        0xadt 0x3t 0x0t 0x0t
        0xb3t 0x3t 0x0t 0x0t
        0xb9t 0x3t 0x0t 0x0t
        0xc7t 0x3t 0x0t 0x0t
        0xcbt 0x3t 0x0t 0x0t
        0xd1t 0x3t 0x0t 0x0t
        0xd7t 0x3t 0x0t 0x0t
        0xdft 0x3t 0x0t 0x0t
        0xe5t 0x3t 0x0t 0x0t
        0xf1t 0x3t 0x0t 0x0t
        0xf5t 0x3t 0x0t 0x0t
        0xfbt 0x3t 0x0t 0x0t
        0xfdt 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 12
    .parameter "n"

    .prologue
    const/4 v9, 0x0

    .line 89
    const/16 v0, 0x400

    .line 90
    .local v0, gapSize:I
    sget-object v10, Ljava/math/Primality;->primes:[I

    array-length v10, v10

    new-array v5, v10, [I

    .line 91
    .local v5, modules:[I
    new-array v2, v0, [Z

    .line 92
    .local v2, isDivisible:[Z
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v6

    .line 94
    .local v6, ni:Ljava/math/BigInt;
    invoke-virtual {v6}, Ljava/math/BigInt;->bitLength()I

    move-result v10

    const/16 v11, 0xa

    if-gt v10, v11, :cond_1

    .line 95
    invoke-virtual {v6}, Ljava/math/BigInt;->longInt()J

    move-result-wide v10

    long-to-int v4, v10

    .line 96
    .local v4, l:I
    sget-object v10, Ljava/math/Primality;->primes:[I

    sget-object v11, Ljava/math/Primality;->primes:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    if-ge v4, v10, :cond_1

    .line 97
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v9, Ljava/math/Primality;->primes:[I

    aget v9, v9, v1

    if-lt v4, v9, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    sget-object v9, Ljava/math/Primality;->BIprimes:[Ljava/math/BigInteger;

    aget-object v9, v9, v1

    .line 137
    .end local v4           #l:I
    :goto_1
    return-object v9

    .line 102
    .end local v1           #i:I
    :cond_1
    invoke-virtual {v6}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v8

    .line 103
    .local v8, startPoint:Ljava/math/BigInt;
    new-instance v7, Ljava/math/BigInt;

    invoke-direct {v7}, Ljava/math/BigInt;-><init>()V

    .line 106
    .local v7, probPrime:Ljava/math/BigInt;
    const/4 v10, 0x2

    invoke-static {v6, v10}, Ljava/math/BigInt;->remainderByPositiveInt(Ljava/math/BigInt;I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/math/BigInt;->addPositiveInt(I)V

    .line 115
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    sget-object v10, Ljava/math/Primality;->primes:[I

    array-length v10, v10

    if-ge v1, v10, :cond_3

    .line 116
    sget-object v10, Ljava/math/Primality;->primes:[I

    aget v10, v10, v1

    invoke-static {v8, v10}, Ljava/math/BigInt;->remainderByPositiveInt(Ljava/math/BigInt;I)I

    move-result v10

    sub-int/2addr v10, v0

    aput v10, v5, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 141
    .local v3, j:I
    :cond_2
    invoke-virtual {v8, v0}, Ljava/math/BigInt;->addPositiveInt(I)V

    .line 121
    .end local v3           #j:I
    :cond_3
    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([ZZ)V

    .line 123
    const/4 v1, 0x0

    :goto_3
    sget-object v10, Ljava/math/Primality;->primes:[I

    array-length v10, v10

    if-ge v1, v10, :cond_6

    .line 124
    aget v10, v5, v1

    add-int/2addr v10, v0

    sget-object v11, Ljava/math/Primality;->primes:[I

    aget v11, v11, v1

    rem-int/2addr v10, v11

    aput v10, v5, v1

    .line 125
    aget v10, v5, v1

    if-nez v10, :cond_4

    move v3, v9

    .line 126
    .restart local v3       #j:I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 127
    const/4 v10, 0x1

    aput-boolean v10, v2, v3

    .line 126
    sget-object v10, Ljava/math/Primality;->primes:[I

    aget v10, v10, v1

    add-int/2addr v3, v10

    goto :goto_4

    .line 125
    .end local v3           #j:I
    :cond_4
    sget-object v10, Ljava/math/Primality;->primes:[I

    aget v10, v10, v1

    aget v11, v5, v1

    sub-int v3, v10, v11

    goto :goto_4

    .line 123
    .restart local v3       #j:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 132
    .end local v3           #j:I
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_5
    if-ge v3, v0, :cond_2

    .line 133
    aget-boolean v10, v2, v3

    if-nez v10, :cond_7

    .line 134
    invoke-virtual {v7, v8}, Ljava/math/BigInt;->putCopy(Ljava/math/BigInt;)V

    .line 135
    invoke-virtual {v7, v3}, Ljava/math/BigInt;->addPositiveInt(I)V

    .line 136
    const/16 v10, 0x64

    invoke-virtual {v7, v10}, Ljava/math/BigInt;->isPrime(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 137
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v7}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_1

    .line 132
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method
