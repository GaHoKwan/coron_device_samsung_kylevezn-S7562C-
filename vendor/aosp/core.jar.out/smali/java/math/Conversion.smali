.class Ljava/math/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final bigRadices:[I

.field static final digitFitInInt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/math/Conversion;->digitFitInInt:[I

    .line 43
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljava/math/Conversion;->bigRadices:[I

    return-void

    .line 33
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1ft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0xdbt 0xb3t 0x46t 0x45t
        0x0t 0x0t 0x0t 0x40t
        0x95t 0x73t 0xc2t 0x48t
        0x0t 0xd8t 0x9ft 0x15t
        0x97t 0x9ct 0xdbt 0x75t
        0x0t 0x0t 0x0t 0x40t
        0x49t 0x91t 0x17t 0x17t
        0x0t 0xcat 0x9at 0x3bt
        0x61t 0xdbt 0xc6t 0xct
        0x0t 0x0t 0xa1t 0x19t
        0x21t 0x10t 0x9ft 0x30t
        0x0t 0xc1t 0xf6t 0x57t
        0x6ft 0x1bt 0x2ft 0xat
        0x0t 0x0t 0x0t 0x10t
        0x71t 0x45t 0x75t 0x18t
        0x80t 0xbct 0x7dt 0x24t
        0x7bt 0x66t 0x47t 0x35t
        0x0t 0x40t 0x4bt 0x4ct
        0x1dt 0x6et 0x5at 0x6bt
        0x40t 0xat 0xc2t 0x6t
        0x31t 0xd9t 0xd2t 0x8t
        0x0t 0x0t 0x64t 0xbt
        0x51t 0x4at 0x8dt 0xet
        0x40t 0xaet 0x69t 0x12t
        0x49t 0x91t 0x17t 0x17t
        0x0t 0x10t 0xb9t 0x1ct
        0x99t 0x48t 0x74t 0x23t
        0x40t 0xa8t 0x73t 0x2bt
        0x41t 0x3bt 0xe6t 0x34t
        0x0t 0x0t 0x0t 0x40t
        0xc1t 0x3ct 0xfat 0x4ct
        0x40t 0xd8t 0x13t 0x5ct
        0x19t 0xb5t 0x91t 0x6dt
        0x0t 0xa4t 0x9at 0x3t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigInteger2Double(Ljava/math/BigInteger;)D
    .locals 17
    .parameter "val"

    .prologue
    .line 419
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 421
    move-object/from16 v0, p0

    iget v13, v0, Ljava/math/BigInteger;->numberLength:I

    const/4 v14, 0x2

    if-lt v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Ljava/math/BigInteger;->numberLength:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/math/BigInteger;->digits:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    if-lez v13, :cond_1

    .line 423
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    long-to-double v13, v13

    .line 459
    :goto_0
    return-wide v13

    .line 426
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Ljava/math/BigInteger;->numberLength:I

    const/16 v14, 0x20

    if-le v13, v14, :cond_3

    .line 427
    move-object/from16 v0, p0

    iget v13, v0, Ljava/math/BigInteger;->sign:I

    if-lez v13, :cond_2

    const-wide/high16 v13, 0x7ff0

    goto :goto_0

    :cond_2
    const-wide/high16 v13, -0x10

    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 431
    .local v1, bitLen:I
    add-int/lit8 v13, v1, -0x1

    int-to-long v3, v13

    .line 432
    .local v3, exponent:J
    add-int/lit8 v2, v1, -0x36

    .line 434
    .local v2, delta:I
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    .line 439
    .local v5, lVal:J
    const-wide v13, 0x1fffffffffffffL

    and-long v7, v5, v13

    .line 440
    .local v7, mantissa:J
    const-wide/16 v13, 0x3ff

    cmp-long v13, v3, v13

    if-nez v13, :cond_7

    .line 441
    const-wide v13, 0x1fffffffffffffL

    cmp-long v13, v7, v13

    if-nez v13, :cond_5

    .line 442
    move-object/from16 v0, p0

    iget v13, v0, Ljava/math/BigInteger;->sign:I

    if-lez v13, :cond_4

    const-wide/high16 v13, 0x7ff0

    goto :goto_0

    :cond_4
    const-wide/high16 v13, -0x10

    goto :goto_0

    .line 445
    :cond_5
    const-wide v13, 0x1ffffffffffffeL

    cmp-long v13, v7, v13

    if-nez v13, :cond_7

    .line 446
    move-object/from16 v0, p0

    iget v13, v0, Ljava/math/BigInteger;->sign:I

    if-lez v13, :cond_6

    const-wide v13, 0x7fefffffffffffffL

    goto :goto_0

    :cond_6
    const-wide v13, -0x10000000000001L

    goto :goto_0

    .line 450
    :cond_7
    const-wide/16 v13, 0x1

    and-long/2addr v13, v7

    const-wide/16 v15, 0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_9

    const-wide/16 v13, 0x2

    and-long/2addr v13, v7

    const-wide/16 v15, 0x2

    cmp-long v13, v13, v15

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v2, v13}, Ljava/math/BitLevel;->nonZeroDroppedBits(I[I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 453
    :cond_8
    const-wide/16 v13, 0x2

    add-long/2addr v7, v13

    .line 455
    :cond_9
    const/4 v13, 0x1

    shr-long/2addr v7, v13

    .line 456
    move-object/from16 v0, p0

    iget v13, v0, Ljava/math/BigInteger;->sign:I

    if-gez v13, :cond_a

    const-wide/high16 v9, -0x8000

    .line 457
    .local v9, resSign:J
    :goto_1
    const-wide/16 v13, 0x3ff

    add-long/2addr v13, v3

    const/16 v15, 0x34

    shl-long/2addr v13, v15

    const-wide/high16 v15, 0x7ff0

    and-long v3, v13, v15

    .line 458
    or-long v13, v9, v3

    or-long v11, v13, v7

    .line 459
    .local v11, result:J
    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v13

    goto/16 :goto_0

    .line 456
    .end local v9           #resSign:J
    .end local v11           #result:J
    :cond_a
    const-wide/16 v9, 0x0

    goto :goto_1
.end method

.method static bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 28
    .parameter "val"
    .parameter "radix"

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 55
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigInteger;->sign:I

    move/from16 v18, v0

    .line 56
    .local v18, sign:I
    move-object/from16 v0, p0

    iget v13, v0, Ljava/math/BigInteger;->numberLength:I

    .line 57
    .local v13, numberLength:I
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/math/BigInteger;->digits:[I

    .line 59
    .local v9, digits:[I
    if-nez v18, :cond_0

    .line 60
    const-string v23, "0"

    .line 127
    :goto_0
    return-object v23

    .line 62
    :cond_0
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_2

    .line 63
    add-int/lit8 v23, v13, -0x1

    aget v10, v9, v23

    .line 64
    .local v10, highDigit:I
    int-to-long v0, v10

    move-wide/from16 v23, v0

    const-wide v25, 0xffffffffL

    and-long v21, v23, v25

    .line 65
    .local v21, v:J
    if-gez v18, :cond_1

    .line 66
    move-wide/from16 v0, v21

    neg-long v0, v0

    move-wide/from16 v21, v0

    .line 68
    :cond_1
    move-wide/from16 v0, v21

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v23

    goto :goto_0

    .line 70
    .end local v10           #highDigit:I
    .end local v21           #v:J
    :cond_2
    const/16 v23, 0xa

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    const/16 v23, 0x2

    move/from16 v0, p1

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    const/16 v23, 0x24

    move/from16 v0, p1

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 72
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_0

    .line 75
    :cond_4
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->log(D)D

    move-result-wide v23

    const-wide/high16 v25, 0x4000

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->log(D)D

    move-result-wide v25

    div-double v4, v23, v25

    .line 76
    .local v4, bitsForRadixDigit:D
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->bitLength()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v24, v23, v4

    if-gez v18, :cond_8

    const/16 v23, 0x1

    :goto_1
    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v23, v24, v26

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    add-int/lit8 v16, v23, 0x1

    .line 79
    .local v16, resLengthInChars:I
    move/from16 v0, v16

    new-array v0, v0, [C

    move-object/from16 v17, v0

    .line 80
    .local v17, result:[C
    move/from16 v7, v16

    .line 82
    .local v7, currentChar:I
    const/16 v23, 0x10

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 83
    new-array v0, v13, [I

    move-object/from16 v19, v0

    .line 84
    .local v19, temp:[I
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v9, v0, v1, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    move/from16 v20, v13

    .line 86
    .local v20, tempLen:I
    sget-object v23, Ljava/math/Conversion;->digitFitInInt:[I

    aget v6, v23, p1

    .line 89
    .local v6, charsPerInt:I
    sget-object v23, Ljava/math/Conversion;->bigRadices:[I

    add-int/lit8 v24, p1, -0x2

    aget v3, v23, v24

    .line 93
    .local v3, bigRadix:I
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/math/Division;->divideArrayByInt([I[III)I

    move-result v15

    .line 95
    .local v15, resDigit:I
    move v14, v7

    .line 97
    .local v14, previous:I
    :cond_6
    add-int/lit8 v7, v7, -0x1

    rem-int v23, v15, p1

    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v23

    aput-char v23, v17, v7

    .line 99
    div-int v15, v15, p1

    if-eqz v15, :cond_7

    if-nez v7, :cond_6

    .line 100
    :cond_7
    sub-int v23, v6, v14

    add-int v8, v23, v7

    .line 101
    .local v8, delta:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v8, :cond_9

    if-lez v7, :cond_9

    .line 102
    add-int/lit8 v7, v7, -0x1

    const/16 v23, 0x30

    aput-char v23, v17, v7

    .line 101
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 76
    .end local v3           #bigRadix:I
    .end local v6           #charsPerInt:I
    .end local v7           #currentChar:I
    .end local v8           #delta:I
    .end local v11           #i:I
    .end local v14           #previous:I
    .end local v15           #resDigit:I
    .end local v16           #resLengthInChars:I
    .end local v17           #result:[C
    .end local v19           #temp:[I
    .end local v20           #tempLen:I
    :cond_8
    const/16 v23, 0x0

    goto :goto_1

    .line 104
    .restart local v3       #bigRadix:I
    .restart local v6       #charsPerInt:I
    .restart local v7       #currentChar:I
    .restart local v8       #delta:I
    .restart local v11       #i:I
    .restart local v14       #previous:I
    .restart local v15       #resDigit:I
    .restart local v16       #resLengthInChars:I
    .restart local v17       #result:[C
    .restart local v19       #temp:[I
    .restart local v20       #tempLen:I
    :cond_9
    add-int/lit8 v11, v20, -0x1

    :goto_3
    if-lez v11, :cond_a

    aget v23, v19, v11

    if-nez v23, :cond_a

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 107
    :cond_a
    add-int/lit8 v20, v11, 0x1

    .line 108
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v23, 0x0

    aget v23, v19, v23

    if-nez v23, :cond_5

    .line 121
    .end local v3           #bigRadix:I
    .end local v6           #charsPerInt:I
    .end local v8           #delta:I
    .end local v14           #previous:I
    .end local v15           #resDigit:I
    .end local v19           #temp:[I
    .end local v20           #tempLen:I
    :cond_b
    :goto_4
    aget-char v23, v17, v7

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 122
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 114
    .end local v11           #i:I
    :cond_c
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    if-ge v11, v13, :cond_b

    .line 115
    const/4 v12, 0x0

    .local v12, j:I
    :goto_6
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ge v12, v0, :cond_d

    if-lez v7, :cond_d

    .line 116
    aget v23, v9, v11

    shl-int/lit8 v24, v12, 0x2

    shr-int v23, v23, v24

    and-int/lit8 v15, v23, 0xf

    .line 117
    .restart local v15       #resDigit:I
    add-int/lit8 v7, v7, -0x1

    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-static {v15, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v23

    aput-char v23, v17, v7

    .line 115
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 114
    .end local v15           #resDigit:I
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 124
    .end local v12           #j:I
    :cond_e
    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 125
    add-int/lit8 v7, v7, -0x1

    const/16 v23, 0x2d

    aput-char v23, v17, v7

    .line 127
    :cond_f
    new-instance v23, Ljava/lang/String;

    sub-int v24, v16, v7

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-direct {v0, v1, v7, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0
.end method

.method static divideLongByBillion(J)J
    .locals 14
    .parameter "a"

    .prologue
    const/4 v12, 0x1

    .line 398
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-ltz v10, :cond_0

    .line 399
    const-wide/32 v2, 0x3b9aca00

    .line 400
    .local v2, bLong:J
    div-long v6, p0, v2

    .line 401
    .local v6, quot:J
    rem-long v8, p0, v2

    .line 414
    .end local v2           #bLong:J
    .local v8, rem:J
    :goto_0
    const/16 v10, 0x20

    shl-long v10, v8, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v6

    or-long/2addr v10, v12

    return-wide v10

    .line 407
    .end local v6           #quot:J
    .end local v8           #rem:J
    :cond_0
    ushr-long v0, p0, v12

    .line 408
    .local v0, aPos:J
    const-wide/32 v4, 0x1dcd6500

    .line 409
    .local v4, bPos:J
    div-long v6, v0, v4

    .line 410
    .restart local v6       #quot:J
    rem-long v8, v0, v4

    .line 412
    .restart local v8       #rem:J
    shl-long v10, v8, v12

    const-wide/16 v12, 0x1

    and-long/2addr v12, p0

    add-long v8, v10, v12

    goto :goto_0
.end method

.method static toDecimalScaledString(JI)Ljava/lang/String;
    .locals 23
    .parameter "value"
    .parameter "scale"

    .prologue
    .line 301
    const-wide/16 v17, 0x0

    cmp-long v17, p0, v17

    if-gez v17, :cond_1

    const/4 v8, 0x1

    .line 302
    .local v8, negNumber:Z
    :goto_0
    if-eqz v8, :cond_0

    .line 303
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    .line 305
    :cond_0
    const-wide/16 v17, 0x0

    cmp-long v17, p0, v17

    if-nez v17, :cond_4

    .line 306
    packed-switch p2, :pswitch_data_0

    .line 315
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v13, result1:Ljava/lang/StringBuilder;
    if-gez p2, :cond_2

    .line 317
    const-string v17, "0E+"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :goto_1
    const/high16 v17, -0x8000

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const-string v17, "2147483648"

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 391
    .end local v13           #result1:Ljava/lang/StringBuilder;
    :goto_3
    return-object v17

    .line 301
    .end local v8           #negNumber:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 307
    .restart local v8       #negNumber:Z
    :pswitch_0
    const-string v17, "0"

    goto :goto_3

    .line 308
    :pswitch_1
    const-string v17, "0.0"

    goto :goto_3

    .line 309
    :pswitch_2
    const-string v17, "0.00"

    goto :goto_3

    .line 310
    :pswitch_3
    const-string v17, "0.000"

    goto :goto_3

    .line 311
    :pswitch_4
    const-string v17, "0.0000"

    goto :goto_3

    .line 312
    :pswitch_5
    const-string v17, "0.00000"

    goto :goto_3

    .line 313
    :pswitch_6
    const-string v17, "0.000000"

    goto :goto_3

    .line 319
    .restart local v13       #result1:Ljava/lang/StringBuilder;
    :cond_2
    const-string v17, "0E"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 321
    :cond_3
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 326
    .end local v13           #result1:Ljava/lang/StringBuilder;
    :cond_4
    const/16 v11, 0x12

    .line 331
    .local v11, resLengthInChars:I
    const/16 v17, 0x13

    move/from16 v0, v17

    new-array v12, v0, [C

    .line 334
    .local v12, result:[C
    move v2, v11

    .line 335
    .local v2, currentChar:I
    move-wide/from16 v15, p0

    .line 337
    .local v15, v:J
    :cond_5
    move-wide v9, v15

    .line 338
    .local v9, prev:J
    const-wide/16 v17, 0xa

    div-long v15, v15, v17

    .line 339
    add-int/lit8 v2, v2, -0x1

    const-wide/16 v17, 0x30

    const-wide/16 v19, 0xa

    mul-long v19, v19, v15

    sub-long v19, v9, v19

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    aput-char v17, v12, v2

    .line 340
    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-nez v17, :cond_5

    .line 342
    int-to-long v0, v11

    move-wide/from16 v17, v0

    int-to-long v0, v2

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    const-wide/16 v19, 0x1

    sub-long v4, v17, v19

    .line 343
    .local v4, exponent:J
    if-nez p2, :cond_7

    .line 344
    if-eqz v8, :cond_6

    .line 345
    add-int/lit8 v2, v2, -0x1

    const/16 v17, 0x2d

    aput-char v17, v12, v2

    .line 347
    :cond_6
    new-instance v17, Ljava/lang/String;

    sub-int v18, v11, v2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v12, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    .line 349
    :cond_7
    if-lez p2, :cond_d

    const-wide/16 v17, -0x6

    cmp-long v17, v4, v17

    if-ltz v17, :cond_d

    .line 350
    const-wide/16 v17, 0x0

    cmp-long v17, v4, v17

    if-ltz v17, :cond_a

    .line 352
    long-to-int v0, v4

    move/from16 v17, v0

    add-int v6, v2, v17

    .line 353
    .local v6, insertPoint:I
    add-int/lit8 v7, v11, -0x1

    .local v7, j:I
    :goto_4
    if-lt v7, v6, :cond_8

    .line 354
    add-int/lit8 v17, v7, 0x1

    aget-char v18, v12, v7

    aput-char v18, v12, v17

    .line 353
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 356
    :cond_8
    add-int/lit8 v6, v6, 0x1

    const/16 v17, 0x2e

    aput-char v17, v12, v6

    .line 357
    if-eqz v8, :cond_9

    .line 358
    add-int/lit8 v2, v2, -0x1

    const/16 v17, 0x2d

    aput-char v17, v12, v2

    .line 360
    :cond_9
    new-instance v17, Ljava/lang/String;

    sub-int v18, v11, v2

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v12, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_3

    .line 363
    .end local v6           #insertPoint:I
    .end local v7           #j:I
    :cond_a
    const/4 v7, 0x2

    .restart local v7       #j:I
    :goto_5
    int-to-long v0, v7

    move-wide/from16 v17, v0

    neg-long v0, v4

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    cmp-long v17, v17, v19

    if-gez v17, :cond_b

    .line 364
    add-int/lit8 v2, v2, -0x1

    const/16 v17, 0x30

    aput-char v17, v12, v2

    .line 363
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 366
    :cond_b
    add-int/lit8 v2, v2, -0x1

    const/16 v17, 0x2e

    aput-char v17, v12, v2

    .line 367
    add-int/lit8 v2, v2, -0x1

    const/16 v17, 0x30

    aput-char v17, v12, v2

    .line 368
    if-eqz v8, :cond_c

    .line 369
    add-int/lit8 v2, v2, -0x1

    const/16 v17, 0x2d

    aput-char v17, v12, v2

    .line 371
    :cond_c
    new-instance v17, Ljava/lang/String;

    sub-int v18, v11, v2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v12, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_3

    .line 373
    .end local v7           #j:I
    :cond_d
    add-int/lit8 v14, v2, 0x1

    .line 374
    .local v14, startPoint:I
    move v3, v11

    .line 375
    .local v3, endPoint:I
    new-instance v13, Ljava/lang/StringBuilder;

    rsub-int/lit8 v17, v14, 0x22

    move/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    .restart local v13       #result1:Ljava/lang/StringBuilder;
    if-eqz v8, :cond_e

    .line 377
    const/16 v17, 0x2d

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    :cond_e
    rsub-int/lit8 v17, v14, 0x12

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_10

    .line 380
    aget-char v17, v12, v2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    const/16 v17, 0x2e

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v17, v2, 0x1

    sub-int v18, v11, v2

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v12, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 386
    :goto_6
    const/16 v17, 0x45

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    const-wide/16 v17, 0x0

    cmp-long v17, v4, v17

    if-lez v17, :cond_f

    .line 388
    const/16 v17, 0x2b

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :cond_f
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_3

    .line 384
    :cond_10
    sub-int v17, v11, v2

    move/from16 v0, v17

    invoke-virtual {v13, v12, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static toDecimalScaledString(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 41
    .parameter "val"
    .parameter "scale"

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigInteger;->sign:I

    move/from16 v27, v0

    .line 140
    .local v27, sign:I
    move-object/from16 v0, p0

    iget v15, v0, Ljava/math/BigInteger;->numberLength:I

    .line 141
    .local v15, numberLength:I
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/math/BigInteger;->digits:[I

    .line 146
    .local v6, digits:[I
    if-nez v27, :cond_1

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 163
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v24, result1:Ljava/lang/StringBuilder;
    if-gez p1, :cond_0

    .line 165
    const-string v35, "0E+"

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :goto_0
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 293
    .end local v24           #result1:Ljava/lang/StringBuilder;
    :goto_1
    return-object v35

    .line 149
    :pswitch_0
    const-string v35, "0"

    goto :goto_1

    .line 151
    :pswitch_1
    const-string v35, "0.0"

    goto :goto_1

    .line 153
    :pswitch_2
    const-string v35, "0.00"

    goto :goto_1

    .line 155
    :pswitch_3
    const-string v35, "0.000"

    goto :goto_1

    .line 157
    :pswitch_4
    const-string v35, "0.0000"

    goto :goto_1

    .line 159
    :pswitch_5
    const-string v35, "0.00000"

    goto :goto_1

    .line 161
    :pswitch_6
    const-string v35, "0.000000"

    goto :goto_1

    .line 167
    .restart local v24       #result1:Ljava/lang/StringBuilder;
    :cond_0
    const-string v35, "0E"

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    .end local v24           #result1:Ljava/lang/StringBuilder;
    :cond_1
    mul-int/lit8 v35, v15, 0xa

    add-int/lit8 v35, v35, 0x1

    add-int/lit8 v22, v35, 0x7

    .line 179
    .local v22, resLengthInChars:I
    add-int/lit8 v35, v22, 0x1

    move/from16 v0, v35

    new-array v0, v0, [C

    move-object/from16 v23, v0

    .line 183
    .local v23, result:[C
    move/from16 v4, v22

    .line 184
    .local v4, currentChar:I
    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v15, v0, :cond_7

    .line 185
    const/16 v35, 0x0

    aget v9, v6, v35

    .line 186
    .local v9, highDigit:I
    if-gez v9, :cond_5

    .line 187
    int-to-long v0, v9

    move-wide/from16 v35, v0

    const-wide v37, 0xffffffffL

    and-long v33, v35, v37

    .line 189
    .local v33, v:J
    :cond_2
    move-wide/from16 v16, v33

    .line 190
    .local v16, prev:J
    const-wide/16 v35, 0xa

    div-long v33, v33, v35

    .line 191
    add-int/lit8 v4, v4, -0x1

    const-wide/16 v35, 0xa

    mul-long v35, v35, v33

    sub-long v35, v16, v35

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x30

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    aput-char v35, v23, v4

    .line 192
    const-wide/16 v35, 0x0

    cmp-long v35, v33, v35

    if-nez v35, :cond_2

    .line 238
    .end local v9           #highDigit:I
    .end local v16           #prev:J
    .end local v33           #v:J
    :cond_3
    :goto_2
    if-gez v27, :cond_e

    const/4 v14, 0x1

    .line 239
    .local v14, negNumber:Z
    :goto_3
    sub-int v35, v22, v4

    sub-int v35, v35, p1

    add-int/lit8 v8, v35, -0x1

    .line 240
    .local v8, exponent:I
    if-nez p1, :cond_f

    .line 241
    if-eqz v14, :cond_4

    .line 242
    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x2d

    aput-char v35, v23, v4

    .line 244
    :cond_4
    new-instance v35, Ljava/lang/String;

    sub-int v36, v22, v4

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move/from16 v2, v36

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 194
    .end local v8           #exponent:I
    .end local v14           #negNumber:Z
    .restart local v9       #highDigit:I
    :cond_5
    move/from16 v33, v9

    .line 196
    .local v33, v:I
    :cond_6
    move/from16 v16, v33

    .line 197
    .local v16, prev:I
    div-int/lit8 v33, v33, 0xa

    .line 198
    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v35, v33, 0xa

    sub-int v35, v16, v35

    add-int/lit8 v35, v35, 0x30

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    aput-char v35, v23, v4

    .line 199
    if-nez v33, :cond_6

    goto :goto_2

    .line 202
    .end local v9           #highDigit:I
    .end local v16           #prev:I
    .end local v33           #v:I
    :cond_7
    new-array v0, v15, [I

    move-object/from16 v29, v0

    .line 203
    .local v29, temp:[I
    move/from16 v32, v15

    .line 204
    .local v32, tempLen:I
    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v29

    move/from16 v2, v36

    move/from16 v3, v32

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    :goto_4
    const-wide/16 v25, 0x0

    .line 210
    .local v25, result11:J
    add-int/lit8 v11, v32, -0x1

    .local v11, i1:I
    :goto_5
    if-ltz v11, :cond_8

    .line 211
    const/16 v35, 0x20

    shl-long v35, v25, v35

    aget v37, v29, v11

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    const-wide v39, 0xffffffffL

    and-long v37, v37, v39

    add-long v30, v35, v37

    .line 213
    .local v30, temp1:J
    invoke-static/range {v30 .. v31}, Ljava/math/Conversion;->divideLongByBillion(J)J

    move-result-wide v19

    .line 214
    .local v19, res:J
    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v35, v0

    aput v35, v29, v11

    .line 215
    const/16 v35, 0x20

    shr-long v35, v19, v35

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v25, v0

    .line 210
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 217
    .end local v19           #res:J
    .end local v30           #temp1:J
    :cond_8
    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v21, v0

    .line 218
    .local v21, resDigit:I
    move/from16 v18, v4

    .line 220
    .local v18, previous:I
    :cond_9
    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v35, v21, 0xa

    add-int/lit8 v35, v35, 0x30

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    aput-char v35, v23, v4

    .line 221
    div-int/lit8 v21, v21, 0xa

    if-eqz v21, :cond_a

    if-nez v4, :cond_9

    .line 222
    :cond_a
    rsub-int/lit8 v35, v18, 0x9

    add-int v5, v35, v4

    .line 223
    .local v5, delta:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6
    if-ge v10, v5, :cond_b

    if-lez v4, :cond_b

    .line 224
    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x30

    aput-char v35, v23, v4

    .line 223
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 226
    :cond_b
    add-int/lit8 v13, v32, -0x1

    .line 227
    .local v13, j:I
    :goto_7
    aget v35, v29, v13

    if-nez v35, :cond_d

    .line 228
    if-nez v13, :cond_c

    .line 234
    :goto_8
    aget-char v35, v23, v4

    const/16 v36, 0x30

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 227
    :cond_c
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    .line 232
    :cond_d
    add-int/lit8 v32, v13, 0x1

    .line 233
    goto :goto_4

    .line 238
    .end local v5           #delta:I
    .end local v10           #i:I
    .end local v11           #i1:I
    .end local v13           #j:I
    .end local v18           #previous:I
    .end local v21           #resDigit:I
    .end local v25           #result11:J
    .end local v29           #temp:[I
    .end local v32           #tempLen:I
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 247
    .restart local v8       #exponent:I
    .restart local v14       #negNumber:Z
    :cond_f
    if-lez p1, :cond_15

    const/16 v35, -0x6

    move/from16 v0, v35

    if-lt v8, v0, :cond_15

    .line 248
    if-ltz v8, :cond_12

    .line 250
    add-int v12, v4, v8

    .line 251
    .local v12, insertPoint:I
    add-int/lit8 v13, v22, -0x1

    .restart local v13       #j:I
    :goto_9
    if-lt v13, v12, :cond_10

    .line 252
    add-int/lit8 v35, v13, 0x1

    aget-char v36, v23, v13

    aput-char v36, v23, v35

    .line 251
    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    .line 254
    :cond_10
    add-int/lit8 v12, v12, 0x1

    const/16 v35, 0x2e

    aput-char v35, v23, v12

    .line 255
    if-eqz v14, :cond_11

    .line 256
    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x2d

    aput-char v35, v23, v4

    .line 258
    :cond_11
    new-instance v35, Ljava/lang/String;

    sub-int v36, v22, v4

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move/from16 v2, v36

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 262
    .end local v12           #insertPoint:I
    .end local v13           #j:I
    :cond_12
    const/4 v13, 0x2

    .restart local v13       #j:I
    :goto_a
    neg-int v0, v8

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    if-ge v13, v0, :cond_13

    .line 263
    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x30

    aput-char v35, v23, v4

    .line 262
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 265
    :cond_13
    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x2e

    aput-char v35, v23, v4

    .line 266
    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x30

    aput-char v35, v23, v4

    .line 267
    if-eqz v14, :cond_14

    .line 268
    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x2d

    aput-char v35, v23, v4

    .line 270
    :cond_14
    new-instance v35, Ljava/lang/String;

    sub-int v36, v22, v4

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move/from16 v2, v36

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 273
    .end local v13           #j:I
    :cond_15
    add-int/lit8 v28, v4, 0x1

    .line 274
    .local v28, startPoint:I
    move/from16 v7, v22

    .line 275
    .local v7, endPoint:I
    new-instance v24, Ljava/lang/StringBuilder;

    add-int/lit8 v35, v7, 0x10

    sub-int v35, v35, v28

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .restart local v24       #result1:Ljava/lang/StringBuilder;
    if-eqz v14, :cond_16

    .line 277
    const/16 v35, 0x2d

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :cond_16
    sub-int v35, v7, v28

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_18

    .line 280
    aget-char v35, v23, v4

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    const/16 v35, 0x2e

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v35, v4, 0x1

    sub-int v36, v22, v4

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 288
    :goto_b
    const/16 v35, 0x45

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    if-lez v8, :cond_17

    .line 290
    const/16 v35, 0x2b

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :cond_17
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_1

    .line 285
    :cond_18
    sub-int v35, v22, v4

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v35

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
