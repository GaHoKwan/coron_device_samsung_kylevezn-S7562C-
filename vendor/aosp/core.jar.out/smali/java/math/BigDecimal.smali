.class public Ljava/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/math/BigDecimal$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigDecimal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal; = null

.field private static final BI_SCALED_BY_ZERO_LENGTH:I = 0xb

.field private static final CH_ZEROS:[C = null

.field private static final FIVE_POW:[Ljava/math/BigInteger; = null

.field private static final LOG10_2:D = 0.3010299956639812

.field private static final LONG_FIVE_POW:[J = null

.field private static final LONG_FIVE_POW_BIT_LENGTH:[I = null

.field private static final LONG_POWERS_OF_TEN_BIT_LENGTH:[I = null

.field public static final ONE:Ljava/math/BigDecimal; = null

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final TEN:Ljava/math/BigDecimal; = null

.field private static final TEN_POW:[Ljava/math/BigInteger; = null

.field public static final ZERO:Ljava/math/BigDecimal; = null

.field private static final ZERO_SCALED_BY:[Ljava/math/BigDecimal; = null

.field private static final serialVersionUID:J = 0x54c71557f981284fL


# instance fields
.field private transient bitLength:I

.field private transient hashCode:I

.field private intVal:Ljava/math/BigInteger;

.field private transient precision:I

.field private scale:I

.field private transient smallValue:J

.field private transient toStringImage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v2, 0xb

    const/4 v4, 0x0

    .line 133
    const/16 v1, 0x1c

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    sput-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    .line 163
    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    .line 164
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    .line 172
    new-array v1, v2, [Ljava/math/BigDecimal;

    sput-object v1, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    .line 178
    new-array v1, v2, [Ljava/math/BigDecimal;

    sput-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    .line 181
    const/16 v1, 0x64

    new-array v1, v1, [C

    sput-object v1, Ljava/math/BigDecimal;->CH_ZEROS:[C

    .line 184
    sget-object v1, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 187
    sget-object v1, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v4}, Ljava/math/BigDecimal;-><init>(II)V

    aput-object v2, v1, v0

    .line 188
    sget-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v4, v0}, Ljava/math/BigDecimal;-><init>(II)V

    aput-object v2, v1, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 191
    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    sget-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v2

    aput v2, v1, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 194
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v2

    aput v2, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 198
    :cond_2
    sget-object v1, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    sput-object v1, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    .line 199
    sget-object v1, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    sput-object v1, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    .line 205
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v4, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 210
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 215
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v1, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    return-void

    .line 133
    nop

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x71t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x35t 0xct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9t 0x3dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2dt 0x31t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe1t 0xf5t 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0xcdt 0x1dt 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf9t 0x2t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xddt 0xet 0xe9t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x51t 0x4at 0x8dt 0xet 0x0t 0x0t 0x0t 0x0t
        0x95t 0x73t 0xc2t 0x48t 0x0t 0x0t 0x0t 0x0t
        0xe9t 0x41t 0xcct 0x6bt 0x1t 0x0t 0x0t 0x0t
        0x8dt 0x49t 0xfdt 0x1at 0x7t 0x0t 0x0t 0x0t
        0xc1t 0x6ft 0xf2t 0x86t 0x23t 0x0t 0x0t 0x0t
        0xc5t 0x2et 0xbct 0xa2t 0xb1t 0x0t 0x0t 0x0t
        0xd9t 0xe9t 0xact 0x2dt 0x78t 0x3t 0x0t 0x0t
        0x3dt 0x91t 0x60t 0xe4t 0x58t 0x11t 0x0t 0x0t
        0x31t 0xd6t 0xe2t 0x75t 0xbct 0x56t 0x0t 0x0t
        0xf5t 0x2et 0x6et 0x4dt 0xaet 0xb1t 0x1t 0x0t
        0xc9t 0xeat 0x26t 0x83t 0x67t 0x78t 0x8t 0x0t
        0xedt 0x95t 0xc2t 0x8ft 0x5t 0x5at 0x2at 0x0t
        0xa1t 0xedt 0xcct 0xcet 0x1bt 0xc2t 0xd3t 0x0t
        0x25t 0xa4t 0x0t 0xat 0x8bt 0xcat 0x22t 0x4t
        0xb9t 0x34t 0x3t 0x32t 0xb7t 0xf4t 0xadt 0x14t
        0x9dt 0x7t 0x10t 0xfat 0x93t 0xc7t 0x65t 0x67t
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 11
    .parameter "val"

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 116
    const/4 v7, 0x0

    iput-object v7, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 119
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 241
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    .line 480
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 481
    :cond_0
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Infinity or NaN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 483
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 487
    .local v1, bits:J
    const/16 v7, 0x34

    shr-long v7, v1, v7

    const-wide/16 v9, 0x7ff

    and-long/2addr v7, v9

    long-to-int v7, v7

    rsub-int v7, v7, 0x433

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 489
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v8, 0x433

    if-ne v7, v8, :cond_5

    const-wide v7, 0xfffffffffffffL

    and-long/2addr v7, v1

    const/4 v9, 0x1

    shl-long v3, v7, v9

    .line 491
    .local v3, mantissa:J
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_2

    .line 492
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 493
    const/4 v7, 0x1

    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    .line 496
    :cond_2
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_3

    .line 497
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 498
    .local v6, trailingZeros:I
    ushr-long/2addr v3, v6

    .line 499
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sub-int/2addr v7, v6

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 502
    .end local v6           #trailingZeros:I
    :cond_3
    const/16 v7, 0x3f

    shr-long v7, v1, v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 503
    neg-long v3, v3

    .line 505
    :cond_4
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v5

    .line 506
    .local v5, mantissaBits:I
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v7, :cond_8

    .line 507
    if-nez v5, :cond_6

    const/4 v7, 0x0

    :goto_1
    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 508
    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_7

    .line 509
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v7, v7

    shl-long v7, v3, v7

    iput-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 516
    :goto_2
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 530
    :goto_3
    return-void

    .line 489
    .end local v3           #mantissa:J
    .end local v5           #mantissaBits:I
    :cond_5
    const-wide v7, 0xfffffffffffffL

    and-long/2addr v7, v1

    const-wide/high16 v9, 0x10

    or-long v3, v7, v9

    goto :goto_0

    .line 507
    .restart local v3       #mantissa:J
    .restart local v5       #mantissaBits:I
    :cond_6
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v7, v5, v7

    goto :goto_1

    .line 511
    :cond_7
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 512
    .local v0, bi:Ljava/math/BigInt;
    invoke-virtual {v0, v3, v4}, Ljava/math/BigInt;->putLongInt(J)V

    .line 513
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v7, v7

    invoke-virtual {v0, v7}, Ljava/math/BigInt;->shift(I)V

    .line 514
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    iput-object v7, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    goto :goto_2

    .line 517
    .end local v0           #bi:Ljava/math/BigInt;
    :cond_8
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_a

    .line 519
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sget-object v8, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    array-length v8, v8

    if-ge v7, v8, :cond_9

    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    aget v7, v7, v8

    add-int/2addr v7, v5

    const/16 v8, 0x40

    if-ge v7, v8, :cond_9

    .line 521
    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    aget-wide v7, v7, v8

    mul-long/2addr v7, v3

    iput-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 522
    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v7

    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    goto :goto_3

    .line 524
    :cond_9
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v7, v8}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto :goto_3

    .line 527
    :cond_a
    iput-wide v3, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 528
    iput v5, p0, Ljava/math/BigDecimal;->bitLength:I

    goto :goto_3
.end method

.method public constructor <init>(DLjava/math/MathContext;)V
    .locals 0
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 554
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 555
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 556
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "val"

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    .line 644
    return-void
.end method

.method private constructor <init>(II)V
    .locals 2
    .parameter "smallValue"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 119
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 241
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 250
    int-to-long v0, p1

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 251
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 252
    invoke-static {p1}, Ljava/math/BigDecimal;->bitLength(I)I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 253
    return-void
.end method

.method public constructor <init>(ILjava/math/MathContext;)V
    .locals 1
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    .line 662
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 663
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "val"

    .prologue
    .line 673
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/math/BigDecimal;-><init>(JI)V

    .line 674
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 2
    .parameter "smallValue"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 119
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 241
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 244
    iput-wide p1, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 245
    iput p3, p0, Ljava/math/BigDecimal;->scale:I

    .line 246
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 247
    return-void
.end method

.method public constructor <init>(JLjava/math/MathContext;)V
    .locals 0
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 691
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 692
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 693
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 438
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 439
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .locals 3
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 460
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 461
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 462
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 568
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 2
    .parameter "unscaledVal"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 602
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 119
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 241
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 603
    if-nez p1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 606
    :cond_0
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 607
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    .line 608
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .locals 0
    .parameter "unscaledVal"
    .parameter "scale"
    .parameter "mc"

    .prologue
    .line 631
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 632
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 633
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .locals 0
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 585
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 586
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 587
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .parameter "in"

    .prologue
    .line 400
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 401
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 14
    .parameter "in"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 116
    const/4 v10, 0x0

    iput-object v10, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 119
    const/4 v10, 0x0

    iput v10, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 241
    const/4 v10, 0x0

    iput v10, p0, Ljava/math/BigDecimal;->precision:I

    .line 272
    move/from16 v1, p2

    .line 273
    .local v1, begin:I
    add-int/lit8 v10, p3, -0x1

    add-int v4, p2, v10

    .line 278
    .local v4, last:I
    if-nez p1, :cond_0

    .line 279
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 281
    :cond_0
    array-length v10, p1

    if-ge v4, v10, :cond_1

    if-ltz p2, :cond_1

    if-lez p3, :cond_1

    if-gez v4, :cond_2

    .line 282
    :cond_1
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad offset/length: offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " len="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in.length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 285
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    move/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v8, unscaledBuffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 288
    .local v2, bufLength:I
    move/from16 v0, p2

    if-gt v0, v4, :cond_3

    aget-char v10, p1, p2

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_3

    .line 289
    add-int/lit8 p2, p2, 0x1

    .line 290
    add-int/lit8 v1, v1, 0x1

    .line 292
    :cond_3
    const/4 v3, 0x0

    .line 293
    .local v3, counter:I
    const/4 v9, 0x0

    .line 295
    .local v9, wasNonZero:Z
    :goto_0
    move/from16 v0, p2

    if-gt v0, v4, :cond_6

    aget-char v10, p1, p2

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_6

    aget-char v10, p1, p2

    const/16 v11, 0x65

    if-eq v10, v11, :cond_6

    aget-char v10, p1, p2

    const/16 v11, 0x45

    if-eq v10, v11, :cond_6

    .line 296
    if-nez v9, :cond_4

    .line 297
    aget-char v10, p1, p2

    const/16 v11, 0x30

    if-ne v10, v11, :cond_5

    .line 298
    add-int/lit8 v3, v3, 0x1

    .line 295
    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 300
    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 305
    :cond_6
    sub-int v10, p2, v1

    invoke-virtual {v8, p1, v1, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 306
    sub-int v10, p2, v1

    add-int/2addr v2, v10

    .line 308
    move/from16 v0, p2

    if-gt v0, v4, :cond_c

    aget-char v10, p1, p2

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_c

    .line 309
    add-int/lit8 p2, p2, 0x1

    .line 311
    move/from16 v1, p2

    .line 313
    :goto_2
    move/from16 v0, p2

    if-gt v0, v4, :cond_9

    aget-char v10, p1, p2

    const/16 v11, 0x65

    if-eq v10, v11, :cond_9

    aget-char v10, p1, p2

    const/16 v11, 0x45

    if-eq v10, v11, :cond_9

    .line 314
    if-nez v9, :cond_7

    .line 315
    aget-char v10, p1, p2

    const/16 v11, 0x30

    if-ne v10, v11, :cond_8

    .line 316
    add-int/lit8 v3, v3, 0x1

    .line 313
    :cond_7
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 318
    :cond_8
    const/4 v9, 0x1

    goto :goto_3

    .line 322
    :cond_9
    sub-int v10, p2, v1

    iput v10, p0, Ljava/math/BigDecimal;->scale:I

    .line 323
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v2, v10

    .line 324
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {v8, p1, v1, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 329
    :goto_4
    move/from16 v0, p2

    if-gt v0, v4, :cond_d

    aget-char v10, p1, p2

    const/16 v11, 0x65

    if-eq v10, v11, :cond_a

    aget-char v10, p1, p2

    const/16 v11, 0x45

    if-ne v10, v11, :cond_d

    .line 330
    :cond_a
    add-int/lit8 p2, p2, 0x1

    .line 332
    move/from16 v1, p2

    .line 333
    move/from16 v0, p2

    if-gt v0, v4, :cond_b

    aget-char v10, p1, p2

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_b

    .line 334
    add-int/lit8 p2, p2, 0x1

    .line 335
    move/from16 v0, p2

    if-gt v0, v4, :cond_b

    aget-char v10, p1, p2

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_b

    .line 336
    add-int/lit8 v1, v1, 0x1

    .line 340
    :cond_b
    add-int/lit8 v10, v4, 0x1

    sub-int/2addr v10, v1

    invoke-static {p1, v1, v10}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, scaleString:Ljava/lang/String;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    sub-long v5, v10, v12

    .line 343
    .local v5, newScale:J
    long-to-int v10, v5

    iput v10, p0, Ljava/math/BigDecimal;->scale:I

    .line 344
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    cmp-long v10, v5, v10

    if-eqz v10, :cond_d

    .line 345
    new-instance v10, Ljava/lang/NumberFormatException;

    const-string v11, "Scale out of range"

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 326
    .end local v5           #newScale:J
    .end local v7           #scaleString:Ljava/lang/String;
    :cond_c
    const/4 v10, 0x0

    iput v10, p0, Ljava/math/BigDecimal;->scale:I

    goto :goto_4

    .line 349
    :cond_d
    const/16 v10, 0x13

    if-ge v2, v10, :cond_f

    .line 350
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 351
    iget-wide v10, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v10

    iput v10, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 355
    :goto_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v3

    iput v10, p0, Ljava/math/BigDecimal;->precision:I

    .line 356
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_e

    .line 357
    iget v10, p0, Ljava/math/BigDecimal;->precision:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Ljava/math/BigDecimal;->precision:I

    .line 359
    :cond_e
    return-void

    .line 353
    :cond_f
    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto :goto_5
.end method

.method public constructor <init>([CIILjava/math/MathContext;)V
    .locals 0
    .parameter "in"
    .parameter "offset"
    .parameter "len"
    .parameter "mc"

    .prologue
    .line 384
    invoke-direct {p0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 385
    invoke-direct {p0, p4}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 386
    return-void
.end method

.method public constructor <init>([CLjava/math/MathContext;)V
    .locals 2
    .parameter "in"
    .parameter "mc"

    .prologue
    .line 422
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 423
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 424
    return-void
.end method

.method private static addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 7
    .parameter "thisValue"
    .parameter "augend"
    .parameter "diffScale"

    .prologue
    .line 804
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge p2, v1, :cond_0

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v3, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v3, v3, p2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 806
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v5, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v5, v5, p2

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    .line 810
    :goto_0
    return-object v1

    .line 808
    :cond_0
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 809
    .local v0, bi:Ljava/math/BigInt;
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInt;->add(Ljava/math/BigInt;)V

    .line 810
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method private approxPrecision()I
    .locals 4

    .prologue
    .line 2911
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v0, :cond_0

    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide v2, 0x3fd34413509f79ffL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static bitLength(I)I
    .locals 1
    .parameter "smallValue"

    .prologue
    .line 2993
    if-gez p0, :cond_0

    .line 2994
    xor-int/lit8 p0, p0, -0x1

    .line 2996
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method

.method private static bitLength(J)I
    .locals 2
    .parameter "smallValue"

    .prologue
    .line 2986
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 2987
    const-wide/16 v0, -0x1

    xor-long/2addr p0, v0

    .line 2989
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    return v0
.end method

.method private decimalDigitsInLong(J)I
    .locals 4
    .parameter "value"

    .prologue
    .line 1851
    const-wide/high16 v1, -0x8000

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 1852
    const/16 v1, 0x13

    .line 1855
    :goto_0
    return v1

    .line 1854
    :cond_0
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1855
    .local v0, index:I
    if-gez v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private static divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 14
    .parameter "scaledDividend"
    .parameter "scaledDivisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    .line 1111
    .local v4, quotAndRem:[Ljava/math/BigInteger;
    const/4 v10, 0x0

    aget-object v5, v4, v10

    .line 1112
    .local v5, quotient:Ljava/math/BigInteger;
    const/4 v10, 0x1

    aget-object v8, v4, v10

    .line 1113
    .local v8, remainder:Ljava/math/BigInteger;
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_0

    .line 1114
    new-instance v10, Ljava/math/BigDecimal;

    move/from16 v0, p2

    invoke-direct {v10, v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 1140
    :goto_0
    return-object v10

    .line 1116
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v10

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v11

    mul-int v9, v10, v11

    .line 1118
    .local v9, sign:I
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    const/16 v11, 0x3f

    if-ge v10, v11, :cond_2

    .line 1119
    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 1120
    .local v6, rem:J
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 1121
    .local v2, divisor:J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v1

    .line 1123
    .local v1, compRem:I
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    add-int/lit8 v11, v1, 0x5

    mul-int/2addr v11, v9

    move-object/from16 v0, p3

    invoke-static {v10, v11, v0}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v1

    .line 1132
    .end local v2           #divisor:J
    .end local v6           #rem:J
    :goto_2
    if-eqz v1, :cond_5

    .line 1133
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    const/16 v11, 0x3f

    if-ge v10, v11, :cond_4

    .line 1134
    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    int-to-long v12, v1

    add-long/2addr v10, v12

    move/from16 v0, p2

    invoke-static {v10, v11, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v10

    goto :goto_0

    .line 1123
    .restart local v2       #divisor:J
    .restart local v6       #rem:J
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 1128
    .end local v1           #compRem:I
    .end local v2           #divisor:J
    .end local v6           #rem:J
    :cond_2
    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    .line 1129
    .restart local v1       #compRem:I
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_3
    add-int/lit8 v11, v1, 0x5

    mul-int/2addr v11, v9

    move-object/from16 v0, p3

    invoke-static {v10, v11, v0}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 1136
    :cond_4
    int-to-long v10, v1

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1137
    new-instance v10, Ljava/math/BigDecimal;

    move/from16 v0, p2

    invoke-direct {v10, v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_0

    .line 1140
    :cond_5
    new-instance v10, Ljava/math/BigDecimal;

    move/from16 v0, p2

    invoke-direct {v10, v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_0
.end method

.method private static dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 10
    .parameter "scaledDividend"
    .parameter "scaledDivisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    .line 1144
    div-long v1, p0, p2

    .line 1145
    .local v1, quotient:J
    rem-long v3, p0, p2

    .line 1146
    .local v3, remainder:J
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result v6

    invoke-static {p2, p3}, Ljava/lang/Long;->signum(J)I

    move-result v7

    mul-int v5, v6, v7

    .line 1147
    .local v5, sign:I
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_0

    .line 1150
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v0

    .line 1152
    .local v0, compRem:I
    long-to-int v6, v1

    and-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v0, 0x5

    mul-int/2addr v7, v5

    invoke-static {v6, v7, p5}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v1, v6

    .line 1157
    .end local v0           #compRem:I
    :cond_0
    invoke-static {v1, v2, p4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6
.end method

.method private getUnscaledValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 2971
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 2972
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 2974
    :cond_0
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    return-object v0
.end method

.method private inplaceRound(Ljava/math/MathContext;)V
    .locals 12
    .parameter "mc"

    .prologue
    .line 2738
    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    .line 2739
    .local v3, mcPrecision:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    if-lt v8, v3, :cond_0

    if-nez v3, :cond_1

    .line 2780
    :cond_0
    :goto_0
    return-void

    .line 2742
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    sub-int v1, v8, v3

    .line 2744
    .local v1, discardedPrecision:I
    if-lez v1, :cond_0

    .line 2748
    iget v8, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v9, 0x40

    if-ge v8, v9, :cond_2

    .line 2749
    invoke-direct {p0, p1, v1}, Ljava/math/BigDecimal;->smallRound(Ljava/math/MathContext;I)V

    goto :goto_0

    .line 2753
    :cond_2
    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 2754
    .local v6, sizeOfFraction:Ljava/math/BigInteger;
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 2755
    .local v2, integerAndFraction:[Ljava/math/BigInteger;
    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v8, v8

    int-to-long v10, v1

    sub-long v4, v8, v10

    .line 2759
    .local v4, newScale:J
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-eqz v8, :cond_4

    .line 2761
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 2763
    .local v0, compRem:I
    const/4 v8, 0x0

    aget-object v8, v2, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v9

    add-int/lit8 v10, v0, 0x5

    mul-int/2addr v9, v10

    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v0

    .line 2766
    if-eqz v0, :cond_3

    .line 2767
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v2, v9

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v2, v8

    .line 2769
    :cond_3
    new-instance v7, Ljava/math/BigDecimal;

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 2771
    .local v7, tempBD:Ljava/math/BigDecimal;
    invoke-virtual {v7}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 2772
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v2, v9

    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v2, v8

    .line 2773
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 2777
    .end local v0           #compRem:I
    .end local v7           #tempBD:Ljava/math/BigDecimal;
    :cond_4
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v8

    iput v8, p0, Ljava/math/BigDecimal;->scale:I

    .line 2778
    iput v3, p0, Ljava/math/BigDecimal;->precision:I

    .line 2779
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-direct {p0, v8}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 2763
    .restart local v0       #compRem:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private isZero()Z
    .locals 4

    .prologue
    .line 1804
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static longCompareTo(JJ)I
    .locals 1
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 2783
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePoint(J)Ljava/math/BigDecimal;
    .locals 6
    .parameter "newScale"

    .prologue
    const-wide/16 v1, 0x0

    const/16 v4, 0x40

    const/4 v5, 0x0

    .line 2009
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2026
    :goto_0
    return-object v0

    .line 2016
    :cond_0
    cmp-long v0, p1, v1

    if-ltz v0, :cond_2

    .line 2017
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_1

    .line 2018
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 2020
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0

    .line 2022
    :cond_2
    neg-long v0, p1

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    neg-long v2, p1

    long-to-int v2, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_3

    .line 2024
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v3, p1

    long-to-int v3, v3

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    invoke-static {v0, v1, v5}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 2026
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    neg-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2953
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2955
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 2956
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 2957
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 2959
    :cond_0
    return-void
.end method

.method private static roundingBehavior(IILjava/math/RoundingMode;)I
    .locals 5
    .parameter "parityBit"
    .parameter "fraction"
    .parameter "roundingMode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 2839
    const/4 v0, 0x0

    .line 2841
    .local v0, increment:I
    sget-object v1, Ljava/math/BigDecimal$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2874
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 2843
    :pswitch_1
    if-eqz p1, :cond_0

    .line 2844
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2848
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    .line 2849
    goto :goto_0

    .line 2853
    :pswitch_3
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2854
    goto :goto_0

    .line 2856
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2857
    goto :goto_0

    .line 2859
    :pswitch_5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 2860
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_0

    .line 2864
    :pswitch_6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 2865
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_0

    .line 2869
    :pswitch_7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, p0

    if-le v1, v3, :cond_0

    .line 2870
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_0

    .line 2841
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static safeLongToInt(J)I
    .locals 3
    .parameter "longValue"

    .prologue
    .line 2917
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 2918
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of int range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2920
    :cond_1
    long-to-int v0, p0

    return v0
.end method

.method private setUnscaledValue(Ljava/math/BigInteger;)V
    .locals 2
    .parameter "unscaledValue"

    .prologue
    .line 2978
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 2979
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 2980
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 2981
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 2983
    :cond_0
    return-void
.end method

.method private smallRound(Ljava/math/MathContext;I)V
    .locals 16
    .parameter "mc"
    .parameter "discardedPrecision"

    .prologue
    .line 2796
    sget-object v12, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v8, v12, p2

    .line 2797
    .local v8, sizeOfFraction:J
    move-object/from16 v0, p0

    iget v12, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v12

    move/from16 v0, p2

    int-to-long v14, v0

    sub-long v6, v12, v14

    .line 2798
    .local v6, newScale:J
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/math/BigDecimal;->smallValue:J

    .line 2800
    .local v10, unscaledVal:J
    div-long v4, v10, v8

    .line 2801
    .local v4, integer:J
    rem-long v2, v10, v8

    .line 2804
    .local v2, fraction:J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_0

    .line 2806
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x2

    mul-long/2addr v12, v14

    invoke-static {v12, v13, v8, v9}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v1

    .line 2808
    .local v1, compRem:I
    long-to-int v12, v4

    and-int/lit8 v12, v12, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    move-result v13

    add-int/lit8 v14, v1, 0x5

    mul-int/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v14

    invoke-static {v12, v13, v14}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v4, v12

    .line 2812
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v14

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_0

    .line 2813
    const-wide/16 v12, 0xa

    div-long/2addr v4, v12

    .line 2814
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 2818
    .end local v1           #compRem:I
    :cond_0
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Ljava/math/BigDecimal;->scale:I

    .line 2819
    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Ljava/math/BigDecimal;->precision:I

    .line 2820
    move-object/from16 v0, p0

    iput-wide v4, v0, Ljava/math/BigDecimal;->smallValue:J

    .line 2821
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Ljava/math/BigDecimal;->bitLength:I

    .line 2822
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 2823
    return-void
.end method

.method private valueExact(I)J
    .locals 3
    .parameter "bitLengthOfType"

    .prologue
    .line 2893
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    .line 2895
    .local v0, bigInteger:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 2897
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 2899
    :cond_0
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(D)Ljava/math/BigDecimal;
    .locals 3
    .parameter "val"

    .prologue
    .line 756
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Infinity or NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(J)Ljava/math/BigDecimal;
    .locals 2
    .parameter "unscaledVal"

    .prologue
    .line 731
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0xb

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 732
    sget-object v0, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    long-to-int v1, p0

    aget-object v0, v0, v1

    .line 734
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/math/BigDecimal;-><init>(JI)V

    goto :goto_0
.end method

.method public static valueOf(JI)Ljava/math/BigDecimal;
    .locals 2
    .parameter "unscaledVal"
    .parameter "scale"

    .prologue
    .line 711
    if-nez p2, :cond_0

    .line 712
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 718
    :goto_0
    return-object v0

    .line 714
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 716
    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    aget-object v0, v0, p2

    goto :goto_0

    .line 718
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(JI)V

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2966
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    .line 2967
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2968
    return-void
.end method

.method private static zeroScaledBy(J)Ljava/math/BigDecimal;
    .locals 5
    .parameter "longScale"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 2937
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2938
    long-to-int v0, p0

    invoke-static {v3, v4, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2943
    :goto_0
    return-object v0

    .line 2940
    :cond_0
    cmp-long v0, p0, v3

    if-ltz v0, :cond_1

    .line 2941
    new-instance v0, Ljava/math/BigDecimal;

    const v1, 0x7fffffff

    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    goto :goto_0

    .line 2943
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, -0x8000

    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public abs()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 1722
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    .end local p0
    :cond_0
    return-object p0
.end method

.method public abs(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .parameter "mc"

    .prologue
    .line 1735
    invoke-virtual {p0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1736
    .local v0, result:Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1737
    return-object v0
.end method

.method public add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 5
    .parameter "augend"

    .prologue
    .line 774
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    sub-int v0, v1, v2

    .line 776
    .local v0, diffScale:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 777
    if-gtz v0, :cond_1

    move-object p0, p1

    .line 799
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 780
    .restart local p0
    :cond_1
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    :cond_2
    if-nez v0, :cond_5

    .line 791
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_4

    .line 792
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    add-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    .line 783
    :cond_3
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 784
    if-ltz v0, :cond_2

    goto :goto_0

    .line 794
    :cond_4
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto :goto_0

    .line 795
    :cond_5
    if-lez v0, :cond_6

    .line 797
    invoke-static {p0, p1, v0}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    .line 799
    :cond_6
    neg-int v1, v0

    invoke-static {p1, p0, v1}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0
.end method

.method public add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 13
    .parameter "augend"
    .parameter "mc"

    .prologue
    .line 830
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    iget v9, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v9, v9

    sub-long v0, v7, v9

    .line 833
    .local v0, diffScale:J
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v7

    if-nez v7, :cond_1

    .line 835
    :cond_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 864
    :goto_0
    return-object v7

    .line 838
    :cond_1
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x1

    sub-long v9, v0, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 839
    move-object v2, p1

    .line 840
    .local v2, larger:Ljava/math/BigDecimal;
    move-object v5, p0

    .line 847
    .local v5, smaller:Ljava/math/BigDecimal;
    :goto_1
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v7

    invoke-direct {v2}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    if-lt v7, v8, :cond_4

    .line 849
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_0

    .line 841
    .end local v2           #larger:Ljava/math/BigDecimal;
    .end local v5           #smaller:Ljava/math/BigDecimal;
    :cond_2
    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v7

    int-to-long v7, v7

    neg-long v9, v0

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 842
    move-object v2, p0

    .line 843
    .restart local v2       #larger:Ljava/math/BigDecimal;
    move-object v5, p1

    .restart local v5       #smaller:Ljava/math/BigDecimal;
    goto :goto_1

    .line 845
    .end local v2           #larger:Ljava/math/BigDecimal;
    .end local v5           #smaller:Ljava/math/BigDecimal;
    :cond_3
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_0

    .line 852
    .restart local v2       #larger:Ljava/math/BigDecimal;
    .restart local v5       #smaller:Ljava/math/BigDecimal;
    :cond_4
    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    .line 853
    .local v4, largerSignum:I
    invoke-virtual {v5}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-ne v4, v7, :cond_5

    .line 854
    invoke-direct {v2}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 863
    .local v6, tempBI:Ljava/math/BigInteger;
    :goto_2
    new-instance v3, Ljava/math/BigDecimal;

    iget v7, v2, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 864
    .end local v2           #larger:Ljava/math/BigDecimal;
    .local v3, larger:Ljava/math/BigDecimal;
    invoke-virtual {v3, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_0

    .line 857
    .end local v3           #larger:Ljava/math/BigDecimal;
    .end local v6           #tempBI:Ljava/math/BigInteger;
    .restart local v2       #larger:Ljava/math/BigDecimal;
    :cond_5
    invoke-direct {v2}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 859
    .restart local v6       #tempBI:Ljava/math/BigInteger;
    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    mul-int/lit8 v8, v4, 0x9

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_2
.end method

.method public byteValueExact()B
    .locals 2

    .prologue
    .line 2548
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigDecimal;)I
    .locals 11
    .parameter "val"

    .prologue
    .line 2138
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    .line 2139
    .local v3, thisSign:I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    .line 2141
    .local v6, valueSign:I
    if-ne v3, v6, :cond_7

    .line 2142
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    iget v8, p1, Ljava/math/BigDecimal;->scale:I

    if-ne v7, v8, :cond_2

    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_2

    iget v7, p1, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_2

    .line 2143
    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v9, p1, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    const/4 v7, -0x1

    .line 2165
    :goto_0
    return v7

    .line 2143
    :cond_0
    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v9, p1, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2145
    :cond_2
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    iget v9, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v9, v9

    sub-long v1, v7, v9

    .line 2146
    .local v1, diffScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v7

    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    sub-int v0, v7, v8

    .line 2147
    .local v0, diffPrecision:I
    int-to-long v7, v0

    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    move v7, v3

    .line 2148
    goto :goto_0

    .line 2149
    :cond_3
    int-to-long v7, v0

    const-wide/16 v9, 0x1

    sub-long v9, v1, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    .line 2150
    neg-int v7, v3

    goto :goto_0

    .line 2152
    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 2153
    .local v4, thisUnscaled:Ljava/math/BigInteger;
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 2155
    .local v5, valUnscaled:Ljava/math/BigInteger;
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_6

    .line 2156
    neg-long v7, v1

    invoke-static {v7, v8}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 2160
    :cond_5
    :goto_1
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    goto :goto_0

    .line 2157
    :cond_6
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_5

    .line 2158
    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_1

    .line 2162
    .end local v0           #diffPrecision:I
    .end local v1           #diffScale:J
    .end local v4           #thisUnscaled:Ljava/math/BigInteger;
    .end local v5           #valUnscaled:Ljava/math/BigInteger;
    :cond_7
    if-ge v3, v6, :cond_8

    .line 2163
    const/4 v7, -0x1

    goto :goto_0

    .line 2165
    :cond_8
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 16
    .parameter "divisor"

    .prologue
    .line 1228
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    .line 1229
    .local v9, p:Ljava/math/BigInteger;
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    .line 1232
    .local v10, q:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v12, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v12

    move-object/from16 v0, p1

    iget v14, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v14, v14

    sub-long v1, v12, v14

    .line 1235
    .local v1, diffScale:J
    const/4 v6, 0x0

    .line 1236
    .local v6, l:I
    const/4 v4, 0x1

    .line 1237
    .local v4, i:I
    sget-object v12, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    array-length v12, v12

    add-int/lit8 v7, v12, -0x1

    .line 1239
    .local v7, lastPow:I
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1240
    new-instance v12, Ljava/lang/ArithmeticException;

    const-string v13, "Division by zero"

    invoke-direct {v12, v13}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1242
    :cond_0
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_1

    .line 1243
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v12

    .line 1283
    :goto_0
    return-object v12

    .line 1246
    :cond_1
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1247
    .local v3, gcd:Ljava/math/BigInteger;
    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 1248
    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 1250
    invoke-virtual {v10}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v5

    .line 1251
    .local v5, k:I
    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 1254
    :goto_1
    sget-object v12, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    aget-object v12, v12, v4

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v11

    .line 1255
    .local v11, quotAndRem:[Ljava/math/BigInteger;
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_3

    .line 1256
    add-int/2addr v6, v4

    .line 1257
    if-ge v4, v7, :cond_2

    .line 1258
    add-int/lit8 v4, v4, 0x1

    .line 1260
    :cond_2
    const/4 v12, 0x0

    aget-object v10, v11, v12

    goto :goto_1

    .line 1262
    :cond_3
    const/4 v12, 0x1

    if-ne v4, v12, :cond_4

    .line 1269
    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1270
    new-instance v12, Ljava/lang/ArithmeticException;

    const-string v13, "Non-terminating decimal expansion; no exact representable decimal result"

    invoke-direct {v12, v13}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1265
    :cond_4
    const/4 v4, 0x1

    .line 1267
    goto :goto_1

    .line 1273
    :cond_5
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-gez v12, :cond_6

    .line 1274
    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    .line 1277
    :cond_6
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v8

    .line 1279
    .local v8, newScale:I
    sub-int v4, v5, v6

    .line 1281
    if-lez v4, :cond_7

    invoke-static {v9, v4}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v9

    .line 1283
    :goto_2
    new-instance v12, Ljava/math/BigDecimal;

    invoke-direct {v12, v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0

    .line 1281
    :cond_7
    neg-int v12, v4

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_2
.end method

.method public divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 2
    .parameter "divisor"
    .parameter "roundingMode"

    .prologue
    .line 1183
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;
    .locals 1
    .parameter "divisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    .line 1033
    invoke-static {p3}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 12
    .parameter "divisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    const-wide/16 v10, 0x0

    const/16 v4, 0x40

    .line 1061
    if-nez p3, :cond_0

    .line 1062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1064
    :cond_0
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_1
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    int-to-long v2, p2

    sub-long v6, v0, v2

    .line 1069
    .local v6, diffScale:J
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_4

    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_4

    .line 1070
    cmp-long v0, v6, v10

    if-nez v0, :cond_2

    .line 1071
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1104
    :goto_0
    return-object v0

    .line 1075
    :cond_2
    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    .line 1076
    sget-object v0, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_4

    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    long-to-int v2, v6

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_4

    .line 1078
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v4, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    long-to-int v5, v6

    aget-wide v4, v4, v5

    mul-long/2addr v2, v4

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 1084
    :cond_3
    neg-long v0, v6

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    neg-long v2, v6

    long-to-int v2, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_4

    .line 1086
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v3, v6

    long-to-int v3, v3

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 1094
    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    .line 1095
    .local v8, scaledDividend:Ljava/math/BigInteger;
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    .line 1097
    .local v9, scaledDivisor:Ljava/math/BigInteger;
    cmp-long v0, v6, v10

    if-lez v0, :cond_6

    .line 1099
    long-to-int v0, v6

    int-to-long v0, v0

    invoke-static {v9, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v9

    .line 1104
    :cond_5
    :goto_1
    invoke-static {v8, v9, p2, p3}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_6
    cmp-long v0, v6, v10

    if-gez v0, :cond_5

    .line 1102
    neg-long v0, v6

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v8, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_1
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 16
    .parameter "divisor"
    .parameter "mc"

    .prologue
    .line 1308
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v14

    int-to-long v14, v14

    sub-long v10, v12, v14

    .line 1310
    .local v10, trailingZeros:J
    move-object/from16 v0, p0

    iget v12, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v12

    move-object/from16 v0, p1

    iget v14, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v14, v14

    sub-long v2, v12, v14

    .line 1311
    .local v2, diffScale:J
    move-wide v7, v2

    .line 1313
    .local v7, newScale:J
    const/4 v4, 0x1

    .line 1314
    .local v4, i:I
    sget-object v12, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v12, v12

    add-int/lit8 v6, v12, -0x1

    .line 1316
    .local v6, lastPow:I
    const/4 v12, 0x1

    new-array v9, v12, [Ljava/math/BigInteger;

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v9, v12

    .line 1318
    .local v9, quotAndRem:[Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v12

    if-eqz v12, :cond_0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1320
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v12

    .line 1357
    :goto_0
    return-object v12

    .line 1322
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_2

    .line 1324
    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v9, v12

    .line 1325
    add-long/2addr v7, v10

    .line 1327
    :cond_2
    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v9

    .line 1328
    const/4 v12, 0x0

    aget-object v5, v9, v12

    .line 1330
    .local v5, integerQuot:Ljava/math/BigInteger;
    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-eqz v12, :cond_4

    .line 1332
    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    .line 1334
    .local v1, compRem:I
    sget-object v12, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->signum()I

    move-result v13

    add-int/lit8 v14, v1, 0x5

    mul-int/2addr v13, v14

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1336
    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    .line 1357
    .end local v1           #compRem:I
    :cond_3
    new-instance v12, Ljava/math/BigDecimal;

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v13

    move-object/from16 v0, p2

    invoke-direct {v12, v5, v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    goto :goto_0

    .line 1339
    :cond_4
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1340
    sget-object v12, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v12, v12, v4

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v9

    .line 1341
    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_6

    int-to-long v12, v4

    sub-long v12, v7, v12

    cmp-long v12, v12, v2

    if-ltz v12, :cond_6

    .line 1343
    int-to-long v12, v4

    sub-long/2addr v7, v12

    .line 1344
    if-ge v4, v6, :cond_5

    .line 1345
    add-int/lit8 v4, v4, 0x1

    .line 1347
    :cond_5
    const/4 v12, 0x0

    aget-object v5, v9, v12

    goto :goto_1

    .line 1349
    :cond_6
    const/4 v12, 0x1

    if-eq v4, v12, :cond_3

    .line 1352
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1
    .parameter "divisor"
    .parameter "roundingMode"

    .prologue
    .line 1207
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {p0, p1, v0, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;
    .locals 3
    .parameter "divisor"

    .prologue
    const/4 v2, 0x0

    .line 1594
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/math/BigDecimal;

    .line 1596
    .local v0, quotAndRem:[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1597
    const/4 v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1598
    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;
    .locals 3
    .parameter "divisor"
    .parameter "mc"

    .prologue
    const/4 v2, 0x0

    .line 1624
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/math/BigDecimal;

    .line 1626
    .local v0, quotAndRem:[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1627
    const/4 v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1628
    return-object v0
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 16
    .parameter "divisor"

    .prologue
    .line 1376
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/math/BigInteger;

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    aput-object v11, v7, v10

    .line 1377
    .local v7, quotAndRem:[Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v10, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    move-object/from16 v0, p1

    iget v12, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v12

    sub-long v4, v10, v12

    .line 1378
    .local v4, newScale:J
    const-wide/16 v8, 0x0

    .line 1379
    .local v8, tempScale:J
    const/4 v1, 0x1

    .line 1380
    .local v1, i:I
    sget-object v10, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v10, v10

    add-int/lit8 v3, v10, -0x1

    .line 1382
    .local v3, lastPow:I
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1383
    new-instance v10, Ljava/lang/ArithmeticException;

    const-string v11, "Division by zero"

    invoke-direct {v10, v11}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1385
    :cond_0
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v10, v4

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gtz v10, :cond_1

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1389
    :cond_1
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1418
    .local v2, integralValue:Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_9

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v10

    :goto_1
    return-object v10

    .line 1390
    .end local v2           #integralValue:Ljava/math/BigInteger;
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_3

    .line 1391
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .restart local v2       #integralValue:Ljava/math/BigInteger;
    goto :goto_0

    .line 1392
    .end local v2           #integralValue:Ljava/math/BigInteger;
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_4

    .line 1393
    invoke-static {v4, v5}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 1394
    .local v6, powerOfTen:Ljava/math/BigInteger;
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1395
    .restart local v2       #integralValue:Ljava/math/BigInteger;
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    .line 1397
    .end local v2           #integralValue:Ljava/math/BigInteger;
    .end local v6           #powerOfTen:Ljava/math/BigInteger;
    :cond_4
    neg-long v10, v4

    invoke-static {v10, v11}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 1398
    .restart local v6       #powerOfTen:Ljava/math/BigInteger;
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1400
    .restart local v2       #integralValue:Ljava/math/BigInteger;
    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1401
    sget-object v10, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v10, v10, v1

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    .line 1402
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_6

    int-to-long v10, v1

    sub-long v10, v8, v10

    cmp-long v10, v10, v4

    if-ltz v10, :cond_6

    .line 1404
    int-to-long v10, v1

    sub-long/2addr v8, v10

    .line 1405
    if-ge v1, v3, :cond_5

    .line 1406
    add-int/lit8 v1, v1, 0x1

    .line 1408
    :cond_5
    const/4 v10, 0x0

    aget-object v2, v7, v10

    goto :goto_2

    .line 1410
    :cond_6
    const/4 v10, 0x1

    if-ne v1, v10, :cond_8

    .line 1416
    :cond_7
    move-wide v4, v8

    goto :goto_0

    .line 1413
    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    .line 1418
    .end local v6           #powerOfTen:Ljava/math/BigInteger;
    :cond_9
    new-instance v10, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v11

    invoke-direct {v10, v2, v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_1
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 27
    .parameter "divisor"
    .parameter "mc"

    .prologue
    .line 1445
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v12

    .line 1446
    .local v12, mcPrecision:I
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->precision()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v22

    sub-int v4, v21, v22

    .line 1447
    .local v4, diffPrecision:I
    sget-object v21, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v11, v21, -0x1

    .line 1448
    .local v11, lastPow:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v5, v21, v23

    .line 1449
    .local v5, diffScale:J
    move-wide v13, v5

    .line 1450
    .local v13, newScale:J
    int-to-long v0, v4

    move-wide/from16 v21, v0

    sub-long v21, v21, v5

    const-wide/16 v23, 0x1

    add-long v16, v21, v23

    .line 1451
    .local v16, quotPrecision:J
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v15, v0, [Ljava/math/BigInteger;

    .line 1453
    .local v15, quotAndRem:[Ljava/math/BigInteger;
    if-eqz v12, :cond_0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1454
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 1529
    :goto_0
    return-object v10

    .line 1457
    :cond_1
    const-wide/16 v21, 0x0

    cmp-long v21, v16, v21

    if-gtz v21, :cond_3

    .line 1458
    const/16 v21, 0x0

    sget-object v22, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v22, v15, v21

    .line 1497
    :cond_2
    :goto_1
    const/16 v21, 0x0

    aget-object v21, v15, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-nez v21, :cond_7

    .line 1498
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v10

    goto :goto_0

    .line 1459
    :cond_3
    const-wide/16 v21, 0x0

    cmp-long v21, v5, v21

    if-nez v21, :cond_4

    .line 1461
    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v15, v21

    goto :goto_1

    .line 1462
    :cond_4
    const-wide/16 v21, 0x0

    cmp-long v21, v5, v21

    if-lez v21, :cond_5

    .line 1464
    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-static {v5, v6}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v15, v21

    .line 1467
    int-to-long v0, v12

    move-wide/from16 v21, v0

    sub-long v21, v21, v16

    const-wide/16 v23, 0x1

    add-long v21, v21, v23

    const-wide/16 v23, 0x0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 1469
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v22, v15, v22

    invoke-static {v13, v14}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v15, v21

    goto :goto_1

    .line 1473
    :cond_5
    neg-long v0, v5

    move-wide/from16 v21, v0

    int-to-long v0, v12

    move-wide/from16 v23, v0

    int-to-long v0, v4

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    const-wide/16 v25, 0x0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 1476
    .local v7, exp:J
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v21

    invoke-static {v7, v8}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v15

    .line 1478
    add-long/2addr v13, v7

    .line 1479
    neg-long v7, v13

    .line 1481
    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-eqz v21, :cond_2

    const-wide/16 v21, 0x0

    cmp-long v21, v7, v21

    if-lez v21, :cond_2

    .line 1483
    new-instance v21, Ljava/math/BigDecimal;

    const/16 v22, 0x1

    aget-object v22, v15, v22

    invoke-direct/range {v21 .. v22}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigDecimal;->precision()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v21, v21, v7

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v2, v21, v23

    .line 1485
    .local v2, compRemDiv:J
    const-wide/16 v21, 0x0

    cmp-long v21, v2, v21

    if-nez v21, :cond_6

    .line 1487
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v15, v22

    invoke-static {v7, v8}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v15, v21

    .line 1489
    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v2, v0

    .line 1491
    :cond_6
    const-wide/16 v21, 0x0

    cmp-long v21, v2, v21

    if-lez v21, :cond_2

    .line 1492
    new-instance v21, Ljava/lang/ArithmeticException;

    const-string v22, "Division impossible"

    invoke-direct/range {v21 .. v22}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1500
    .end local v2           #compRemDiv:J
    .end local v7           #exp:J
    :cond_7
    const/16 v21, 0x0

    aget-object v20, v15, v21

    .line 1501
    .local v20, strippedBI:Ljava/math/BigInteger;
    new-instance v10, Ljava/math/BigDecimal;

    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 1502
    .local v10, integralValue:Ljava/math/BigDecimal;
    invoke-virtual {v10}, Ljava/math/BigDecimal;->precision()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 1503
    .local v18, resultPrecision:J
    const/4 v9, 0x1

    .line 1505
    .local v9, i:I
    :goto_2
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v21

    if-nez v21, :cond_b

    .line 1506
    sget-object v21, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v15

    .line 1507
    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-nez v21, :cond_a

    int-to-long v0, v9

    move-wide/from16 v21, v0

    sub-long v21, v18, v21

    int-to-long v0, v12

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gez v21, :cond_8

    int-to-long v0, v9

    move-wide/from16 v21, v0

    sub-long v21, v13, v21

    cmp-long v21, v21, v5

    if-ltz v21, :cond_a

    .line 1510
    :cond_8
    int-to-long v0, v9

    move-wide/from16 v21, v0

    sub-long v18, v18, v21

    .line 1511
    int-to-long v0, v9

    move-wide/from16 v21, v0

    sub-long v13, v13, v21

    .line 1512
    if-ge v9, v11, :cond_9

    .line 1513
    add-int/lit8 v9, v9, 0x1

    .line 1515
    :cond_9
    const/16 v21, 0x0

    aget-object v20, v15, v21

    goto :goto_2

    .line 1517
    :cond_a
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_c

    .line 1524
    :cond_b
    int-to-long v0, v12

    move-wide/from16 v21, v0

    cmp-long v21, v18, v21

    if-lez v21, :cond_d

    .line 1525
    new-instance v21, Ljava/lang/ArithmeticException;

    const-string v22, "Division impossible"

    invoke-direct/range {v21 .. v22}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1520
    :cond_c
    const/4 v9, 0x1

    goto :goto_2

    .line 1527
    :cond_d
    invoke-static {v13, v14}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Ljava/math/BigDecimal;->scale:I

    .line 1528
    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto/16 :goto_0
.end method

.method public doubleValue()D
    .locals 23

    .prologue
    .line 2608
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->signum()I

    move-result v14

    .line 2609
    .local v14, sign:I
    const/16 v6, 0x434

    .line 2612
    .local v6, exponent:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->bitLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3fd34413509f79ffL

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v11, v17, v19

    .line 2617
    .local v11, powerOfTwo:J
    const-wide/16 v17, -0x432

    cmp-long v17, v11, v17

    if-ltz v17, :cond_0

    if-nez v14, :cond_1

    .line 2619
    :cond_0
    int-to-double v0, v14

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    mul-double v17, v17, v19

    .line 2704
    :goto_0
    return-wide v17

    .line 2620
    :cond_1
    const-wide/16 v17, 0x401

    cmp-long v17, v11, v17

    if-lez v17, :cond_2

    .line 2622
    int-to-double v0, v14

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x7ff0

    mul-double v17, v17, v19

    goto :goto_0

    .line 2624
    :cond_2
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    .line 2626
    .local v9, mantissa:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    if-gtz v17, :cond_6

    .line 2628
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2650
    :goto_1
    invoke-virtual {v9}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v8

    .line 2651
    .local v8, lowestSetBit:I
    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    add-int/lit8 v5, v17, -0x36

    .line 2652
    .local v5, discardedSize:I
    if-lez v5, :cond_8

    .line 2654
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 2655
    .local v2, bits:J
    move-wide v15, v2

    .line 2657
    .local v15, tempBits:J
    const-wide/16 v17, 0x1

    and-long v17, v17, v2

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-nez v17, :cond_3

    if-lt v8, v5, :cond_4

    :cond_3
    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-nez v17, :cond_5

    .line 2659
    :cond_4
    const-wide/16 v17, 0x2

    add-long v2, v2, v17

    .line 2671
    :cond_5
    :goto_2
    const-wide/high16 v17, 0x40

    and-long v17, v17, v2

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_9

    .line 2673
    const/16 v17, 0x1

    shr-long v2, v2, v17

    .line 2675
    add-int/2addr v6, v5

    .line 2681
    :goto_3
    const/16 v17, 0x7fe

    move/from16 v0, v17

    if-le v6, v0, :cond_a

    .line 2682
    int-to-double v0, v14

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x7ff0

    mul-double v17, v17, v19

    goto/16 :goto_0

    .line 2631
    .end local v2           #bits:J
    .end local v5           #discardedSize:I
    .end local v8           #lowestSetBit:I
    .end local v15           #tempBits:J
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 2632
    .local v10, powerOfTen:Ljava/math/BigInteger;
    long-to-int v0, v11

    move/from16 v17, v0

    rsub-int/lit8 v7, v17, 0x64

    .line 2635
    .local v7, k:I
    if-lez v7, :cond_7

    .line 2638
    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 2639
    sub-int/2addr v6, v7

    .line 2642
    :cond_7
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v13

    .line 2644
    .local v13, quotAndRem:[Ljava/math/BigInteger;
    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    .line 2646
    .local v4, compRem:I
    const/16 v17, 0x0

    aget-object v17, v13, v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v17

    add-int/lit8 v18, v4, 0x3

    mul-int v18, v18, v4

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2648
    add-int/lit8 v6, v6, -0x2

    goto/16 :goto_1

    .line 2663
    .end local v4           #compRem:I
    .end local v7           #k:I
    .end local v10           #powerOfTen:Ljava/math/BigInteger;
    .end local v13           #quotAndRem:[Ljava/math/BigInteger;
    .restart local v5       #discardedSize:I
    .restart local v8       #lowestSetBit:I
    :cond_8
    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v17

    neg-int v0, v5

    move/from16 v19, v0

    shl-long v2, v17, v19

    .line 2664
    .restart local v2       #bits:J
    move-wide v15, v2

    .line 2666
    .restart local v15       #tempBits:J
    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-nez v17, :cond_5

    .line 2667
    const-wide/16 v17, 0x2

    add-long v2, v2, v17

    goto/16 :goto_2

    .line 2677
    :cond_9
    const/16 v17, 0x2

    shr-long v2, v2, v17

    .line 2678
    add-int/lit8 v17, v5, 0x1

    add-int v6, v6, v17

    goto/16 :goto_3

    .line 2683
    :cond_a
    if-gtz v6, :cond_e

    .line 2685
    const/16 v17, -0x35

    move/from16 v0, v17

    if-ge v6, v0, :cond_b

    .line 2686
    int-to-double v0, v14

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    mul-double v17, v17, v19

    goto/16 :goto_0

    .line 2690
    :cond_b
    const/16 v17, 0x1

    shr-long v2, v15, v17

    .line 2691
    const-wide/16 v17, -0x1

    add-int/lit8 v19, v6, 0x3f

    ushr-long v17, v17, v19

    and-long v15, v2, v17

    .line 2692
    neg-int v0, v6

    move/from16 v17, v0

    shr-long v2, v2, v17

    .line 2694
    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-eqz v17, :cond_c

    const-wide/16 v17, 0x1

    and-long v17, v17, v2

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-nez v17, :cond_d

    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-eqz v17, :cond_d

    if-ge v8, v5, :cond_d

    .line 2696
    :cond_c
    const-wide/16 v17, 0x1

    add-long v2, v2, v17

    .line 2698
    :cond_d
    const/4 v6, 0x0

    .line 2699
    const/16 v17, 0x1

    shr-long v2, v2, v17

    .line 2702
    :cond_e
    int-to-long v0, v14

    move-wide/from16 v17, v0

    const-wide/high16 v19, -0x8000

    and-long v17, v17, v19

    int-to-long v0, v6

    move-wide/from16 v19, v0

    const/16 v21, 0x34

    shl-long v19, v19, v21

    or-long v17, v17, v19

    const-wide v19, 0xfffffffffffffL

    and-long v19, v19, v2

    or-long v2, v17, v19

    .line 2704
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "x"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2182
    if-ne p0, p1, :cond_1

    .line 2193
    :cond_0
    :goto_0
    return v1

    .line 2185
    :cond_1
    instance-of v3, p1, Ljava/math/BigDecimal;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 2186
    check-cast v0, Ljava/math/BigDecimal;

    .line 2187
    .local v0, x1:Ljava/math/BigDecimal;
    iget v3, v0, Ljava/math/BigDecimal;->scale:I

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v4, 0x40

    if-ge v3, v4, :cond_3

    iget-wide v3, v0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v5, p0, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v4, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0           #x1:Ljava/math/BigDecimal;
    :cond_4
    move v1, v2

    .line 2193
    goto :goto_0
.end method

.method public floatValue()F
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2573
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    int-to-float v0, v3

    .line 2574
    .local v0, floatResult:F
    iget v3, p0, Ljava/math/BigDecimal;->bitLength:I

    int-to-long v3, v3

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    int-to-double v5, v5

    const-wide v7, 0x3fd34413509f79ffL

    div-double/2addr v5, v7

    double-to-long v5, v5

    sub-long v1, v3, v5

    .line 2575
    .local v1, powerOfTwo:J
    const-wide/16 v3, -0x95

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    cmpl-float v3, v0, v9

    if-nez v3, :cond_1

    .line 2577
    :cond_0
    mul-float/2addr v0, v9

    .line 2584
    :goto_0
    return v0

    .line 2578
    :cond_1
    const-wide/16 v3, 0x81

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 2580
    const/high16 v3, 0x7f80

    mul-float/2addr v0, v3

    goto :goto_0

    .line 2582
    :cond_2
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    double-to-float v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 2229
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    if-eqz v0, :cond_0

    .line 2230
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2239
    :goto_0
    return v0

    .line 2232
    :cond_0
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 2233
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2234
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    mul-int/lit8 v0, v0, 0x21

    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    and-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2235
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2236
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    goto :goto_0

    .line 2238
    :cond_1
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2239
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    goto :goto_0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 2506
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x20

    if-le v0, v1, :cond_0

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public intValueExact()I
    .locals 2

    .prologue
    .line 2521
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 2475
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x40

    if-le v0, v1, :cond_0

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public longValueExact()J
    .locals 2

    .prologue
    .line 2489
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public max(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .parameter "val"

    .prologue
    .line 2219
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public min(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .parameter "val"

    .prologue
    .line 2206
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public movePointLeft(I)Ljava/math/BigDecimal;
    .locals 4
    .parameter "n"

    .prologue
    .line 2005
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public movePointRight(I)Ljava/math/BigDecimal;
    .locals 4
    .parameter "n"

    .prologue
    .line 2047
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 6
    .parameter "multiplicand"

    .prologue
    .line 974
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 976
    .local v0, newScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 977
    :cond_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 984
    :goto_0
    return-object v2

    .line 981
    :cond_1
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v3, p1, Ljava/math/BigDecimal;->bitLength:I

    add-int/2addr v2, v3

    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    .line 982
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    mul-long/2addr v2, v4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    .line 984
    :cond_2
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .parameter "multiplicand"
    .parameter "mc"

    .prologue
    .line 1002
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1004
    .local v0, result:Ljava/math/BigDecimal;
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1005
    return-object v0
.end method

.method public negate()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    const/16 v1, 0x3f

    .line 1747
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1748
    :cond_0
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    neg-long v0, v0

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1750
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .parameter "mc"

    .prologue
    .line 1762
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1763
    .local v0, result:Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1764
    return-object v0
.end method

.method public plus()Ljava/math/BigDecimal;
    .locals 0

    .prologue
    .line 1774
    return-object p0
.end method

.method public plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .parameter "mc"

    .prologue
    .line 1786
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Ljava/math/BigDecimal;
    .locals 6
    .parameter "n"

    .prologue
    .line 1647
    if-nez p1, :cond_0

    .line 1648
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 1655
    :goto_0
    return-object v2

    .line 1650
    :cond_0
    if-ltz p1, :cond_1

    const v2, 0x3b9ac9ff

    if-le p1, v2, :cond_2

    .line 1651
    :cond_1
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Invalid operation"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1653
    :cond_2
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 1655
    .local v0, newScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 8
    .parameter "n"
    .parameter "mc"

    .prologue
    .line 1676
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1677
    .local v2, m:I
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    .line 1678
    .local v3, mcPrecision:I
    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v1, v6, 0x1

    .line 1681
    .local v1, elength:I
    move-object v4, p2

    .line 1684
    .local v4, newPrecision:Ljava/math/MathContext;
    if-eqz p1, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    if-lez p1, :cond_1

    .line 1685
    :cond_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1712
    :goto_0
    return-object v0

    .line 1687
    :cond_1
    const v6, 0x3b9ac9ff

    if-gt v2, v6, :cond_3

    if-nez v3, :cond_2

    if-ltz p1, :cond_3

    :cond_2
    if-lez v3, :cond_4

    if-le v1, v3, :cond_4

    .line 1689
    :cond_3
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "Invalid operation"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1691
    :cond_4
    if-lez v3, :cond_5

    .line 1692
    new-instance v4, Ljava/math/MathContext;

    .end local v4           #newPrecision:Ljava/math/MathContext;
    add-int v6, v3, v1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1696
    .restart local v4       #newPrecision:Ljava/math/MathContext;
    :cond_5
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1697
    .local v0, accum:Ljava/math/BigDecimal;
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    shr-int/lit8 v5, v6, 0x1

    .line 1699
    .local v5, oneBitMask:I
    :goto_1
    if-lez v5, :cond_7

    .line 1700
    invoke-virtual {v0, v0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1701
    and-int v6, v2, v5

    if-ne v6, v5, :cond_6

    .line 1702
    invoke-virtual {v0, p0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1704
    :cond_6
    shr-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1707
    :cond_7
    if-gez p1, :cond_8

    .line 1708
    sget-object v6, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v6, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1711
    :cond_8
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    goto :goto_0
.end method

.method public precision()I
    .locals 6

    .prologue
    .line 1829
    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v2, :cond_0

    .line 1830
    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    .line 1847
    :goto_0
    return v2

    .line 1833
    :cond_0
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 1835
    .local v0, bitLength:I
    if-nez v0, :cond_1

    .line 1836
    const/4 v2, 0x1

    iput v2, p0, Ljava/math/BigDecimal;->precision:I

    .line 1847
    :goto_1
    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_0

    .line 1837
    :cond_1
    const/16 v2, 0x40

    if-ge v0, v2, :cond_2

    .line 1838
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-direct {p0, v2, v3}, Ljava/math/BigDecimal;->decimalDigitsInLong(J)I

    move-result v2

    iput v2, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_1

    .line 1840
    :cond_2
    add-int/lit8 v2, v0, -0x1

    int-to-double v2, v2

    const-wide v4, 0x3fd34413509f79ffL

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v1, v2, 0x1

    .line 1842
    .local v1, decimalDigits:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1843
    add-int/lit8 v1, v1, 0x1

    .line 1845
    :cond_3
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_1
.end method

.method public remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2
    .parameter "divisor"

    .prologue
    .line 1547
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 2
    .parameter "divisor"
    .parameter "mc"

    .prologue
    .line 1573
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public round(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 3
    .parameter "mc"

    .prologue
    .line 1889
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 1891
    .local v0, thisBD:Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1892
    return-object v0
.end method

.method public scale()I
    .locals 1

    .prologue
    .line 1816
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    return v0
.end method

.method public scaleByPowerOfTen(I)Ljava/math/BigDecimal;
    .locals 6
    .parameter "n"

    .prologue
    .line 2063
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 2064
    .local v0, newScale:J
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 2066
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2067
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 2071
    :goto_0
    return-object v2

    .line 2069
    :cond_0
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    .line 2071
    :cond_1
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public setScale(I)Ljava/math/BigDecimal;
    .locals 1
    .parameter "newScale"

    .prologue
    .line 1985
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(II)Ljava/math/BigDecimal;
    .locals 1
    .parameter "newScale"
    .parameter "roundingMode"

    .prologue
    .line 1965
    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 10
    .parameter "newScale"
    .parameter "roundingMode"

    .prologue
    const-wide/16 v8, 0x0

    const/16 v4, 0x40

    .line 1918
    if-nez p2, :cond_0

    .line 1919
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1921
    :cond_0
    int-to-long v0, p1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long v6, v0, v2

    .line 1923
    .local v6, diffScale:J
    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    .line 1939
    .end local p0
    :goto_0
    return-object p0

    .line 1926
    .restart local p0
    :cond_1
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    .line 1928
    sget-object v0, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    long-to-int v2, v6

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_2

    .line 1930
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    long-to-int v3, v6

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    .line 1932
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    long-to-int v2, v6

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v0

    goto :goto_0

    .line 1936
    :cond_3
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_4

    neg-long v0, v6

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 1937
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v3, v6

    long-to-int v3, v3

    aget-wide v2, v2, v3

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    .line 1939
    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    neg-long v1, v6

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0
.end method

.method public shortValueExact()S
    .locals 2

    .prologue
    .line 2535
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public signum()I
    .locals 2

    .prologue
    .line 1796
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 1797
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    .line 1799
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    goto :goto_0
.end method

.method public stripTrailingZeros()Ljava/math/BigDecimal;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2084
    const/4 v0, 0x1

    .line 2085
    .local v0, i:I
    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v6, v6

    add-int/lit8 v1, v6, -0x1

    .line 2086
    .local v1, lastPow:I
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v6

    .line 2088
    .local v2, newScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2118
    .end local p0
    :goto_0
    return-object p0

    .line 2093
    .restart local p0
    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 2097
    .local v5, strippedBI:Ljava/math/BigInteger;
    :goto_1
    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2099
    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    .line 2101
    .local v4, quotAndRem:[Ljava/math/BigInteger;
    aget-object v6, v4, v9

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-nez v6, :cond_2

    .line 2103
    int-to-long v6, v0

    sub-long/2addr v2, v6

    .line 2104
    if-ge v0, v1, :cond_1

    .line 2106
    add-int/lit8 v0, v0, 0x1

    .line 2108
    :cond_1
    aget-object v5, v4, v8

    goto :goto_1

    .line 2110
    :cond_2
    if-ne v0, v9, :cond_4

    .line 2118
    .end local v4           #quotAndRem:[Ljava/math/BigInteger;
    :cond_3
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v6

    invoke-direct {p0, v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0

    .line 2115
    .restart local v4       #quotAndRem:[Ljava/math/BigInteger;
    .restart local p0
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 7
    .parameter "subtrahend"

    .prologue
    const/16 v4, 0x40

    .line 878
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    sub-int v0, v1, v2

    .line 880
    .local v0, diffScale:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 881
    if-gtz v0, :cond_1

    .line 882
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    .line 913
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 884
    .restart local p0
    :cond_1
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 893
    :cond_2
    if-nez v0, :cond_5

    .line 895
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_4

    .line 896
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sub-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    .line 887
    :cond_3
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    if-ltz v0, :cond_2

    goto :goto_0

    .line 898
    :cond_4
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto :goto_0

    .line 899
    :cond_5
    if-lez v0, :cond_7

    .line 901
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v3, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_6

    .line 903
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v5, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v5, v5, v0

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    .line 905
    :cond_6
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto/16 :goto_0

    .line 908
    :cond_7
    neg-int v0, v0

    .line 909
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge v0, v1, :cond_8

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v2, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_8

    .line 911
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v3, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v3, v3, v0

    mul-long/2addr v1, v3

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sub-long/2addr v1, v3

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    .line 913
    :cond_8
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto/16 :goto_0
.end method

.method public subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 10
    .parameter "subtrahend"
    .parameter "mc"

    .prologue
    const/16 v9, 0xa

    .line 931
    iget v5, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v5, v5

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    sub-long v0, v5, v7

    .line 936
    .local v0, diffScale:J
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    if-nez v5, :cond_1

    .line 938
    :cond_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 959
    :goto_0
    return-object v5

    .line 941
    :cond_1
    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    sub-long v7, v0, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    .line 943
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 944
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    .line 945
    .local v4, thisSignum:I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 946
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5, v9}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 954
    .local v3, tempBI:Ljava/math/BigInteger;
    :goto_1
    new-instance v2, Ljava/math/BigDecimal;

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 955
    .local v2, leftOperand:Ljava/math/BigDecimal;
    invoke-virtual {v2, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_0

    .line 949
    .end local v2           #leftOperand:Ljava/math/BigDecimal;
    .end local v3           #tempBI:Ljava/math/BigInteger;
    :cond_2
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 950
    .restart local v3       #tempBI:Ljava/math/BigInteger;
    invoke-static {v3, v9}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    mul-int/lit8 v6, v4, 0x9

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_1

    .line 959
    .end local v3           #tempBI:Ljava/math/BigInteger;
    .end local v4           #thisSignum:I
    :cond_3
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 2423
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2424
    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 2428
    :goto_0
    return-object v0

    .line 2425
    :cond_1
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v0, :cond_2

    .line 2426
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v1, v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 2428
    :cond_2
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public toBigIntegerExact()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 2442
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2443
    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 2457
    :goto_0
    return-object v1

    .line 2444
    :cond_1
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v1, :cond_2

    .line 2445
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 2449
    :cond_2
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v2

    if-gt v1, v2, :cond_3

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 2450
    :cond_3
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2452
    :cond_4
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 2453
    .local v0, integerAndFraction:[Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_5

    .line 2455
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2457
    :cond_5
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public toEngineeringString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 2307
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2308
    .local v7, intString:Ljava/lang/String;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v10, :cond_0

    .line 2357
    .end local v7           #intString:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 2311
    .restart local v7       #intString:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-gez v10, :cond_2

    const/4 v0, 0x2

    .line 2312
    .local v0, begin:I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 2313
    .local v2, end:I
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    neg-long v10, v10

    int-to-long v12, v2

    add-long/2addr v10, v12

    int-to-long v12, v0

    sub-long v4, v10, v12

    .line 2314
    .local v4, exponent:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2316
    .local v9, result:Ljava/lang/StringBuilder;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v10, :cond_4

    const-wide/16 v10, -0x6

    cmp-long v10, v4, v10

    if-ltz v10, :cond_4

    .line 2317
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_3

    .line 2318
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v10, v2, v10

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2357
    :cond_1
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2311
    .end local v0           #begin:I
    .end local v2           #end:I
    .end local v4           #exponent:J
    .end local v9           #result:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 2320
    .restart local v0       #begin:I
    .restart local v2       #end:I
    .restart local v4       #exponent:J
    .restart local v9       #result:Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v10, v0, -0x1

    const-string v11, "0."

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2321
    add-int/lit8 v10, v0, 0x1

    sget-object v11, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/4 v12, 0x0

    long-to-int v13, v4

    neg-int v13, v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2324
    :cond_4
    sub-int v1, v2, v0

    .line 2325
    .local v1, delta:I
    const-wide/16 v10, 0x3

    rem-long v10, v4, v10

    long-to-int v8, v10

    .line 2327
    .local v8, rem:I
    if-eqz v8, :cond_9

    .line 2329
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_6

    .line 2331
    if-gez v8, :cond_5

    neg-int v8, v8

    .line 2332
    :goto_3
    int-to-long v10, v8

    add-long/2addr v4, v10

    .line 2339
    :goto_4
    const/4 v10, 0x3

    if-ge v1, v10, :cond_9

    .line 2340
    sub-int v6, v8, v1

    .local v6, i:I
    move v3, v2

    .end local v2           #end:I
    .local v3, end:I
    :goto_5
    if-lez v6, :cond_8

    .line 2341
    add-int/lit8 v2, v3, 0x1

    .end local v3           #end:I
    .restart local v2       #end:I
    const/16 v10, 0x30

    invoke-virtual {v9, v3, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2340
    add-int/lit8 v6, v6, -0x1

    move v3, v2

    .end local v2           #end:I
    .restart local v3       #end:I
    goto :goto_5

    .line 2331
    .end local v3           #end:I
    .end local v6           #i:I
    .restart local v2       #end:I
    :cond_5
    rsub-int/lit8 v8, v8, 0x3

    goto :goto_3

    .line 2335
    :cond_6
    if-gez v8, :cond_7

    add-int/lit8 v8, v8, 0x3

    .line 2336
    :cond_7
    int-to-long v10, v8

    sub-long/2addr v4, v10

    .line 2337
    add-int/2addr v0, v8

    goto :goto_4

    .end local v2           #end:I
    .restart local v3       #end:I
    .restart local v6       #i:I
    :cond_8
    move v2, v3

    .line 2345
    .end local v3           #end:I
    .end local v6           #i:I
    .restart local v2       #end:I
    :cond_9
    sub-int v10, v2, v0

    const/4 v11, 0x1

    if-lt v10, v11, :cond_a

    .line 2346
    const/16 v10, 0x2e

    invoke-virtual {v9, v0, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2347
    add-int/lit8 v2, v2, 0x1

    .line 2349
    :cond_a
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_1

    .line 2350
    const/16 v10, 0x45

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2351
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_b

    .line 2352
    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x2b

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2354
    :cond_b
    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public toPlainString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2376
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2377
    .local v2, intStr:Ljava/lang/String;
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v6, :cond_0

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v6, :cond_1

    .line 2413
    .end local v2           #intStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 2380
    .restart local v2       #intStr:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-gez v6, :cond_3

    move v0, v4

    .line 2381
    .local v0, begin:I
    :goto_1
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    .line 2383
    .local v1, delta:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2385
    .local v3, result:Ljava/lang/StringBuilder;
    if-ne v0, v4, :cond_2

    .line 2387
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2389
    :cond_2
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v4, :cond_6

    .line 2390
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v1, v4

    .line 2391
    if-ltz v1, :cond_5

    .line 2392
    const-string v4, "0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2394
    :goto_2
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    if-le v1, v4, :cond_4

    .line 2395
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2394
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    sub-int/2addr v1, v4

    goto :goto_2

    .end local v0           #begin:I
    .end local v1           #delta:I
    .end local v3           #result:Ljava/lang/StringBuilder;
    :cond_3
    move v0, v5

    .line 2380
    goto :goto_1

    .line 2397
    .restart local v0       #begin:I
    .restart local v1       #delta:I
    .restart local v3       #result:Ljava/lang/StringBuilder;
    :cond_4
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2398
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2413
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2400
    :cond_5
    sub-int v1, v0, v1

    .line 2401
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2403
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2406
    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    :goto_4
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    neg-int v4, v4

    if-ge v1, v4, :cond_7

    .line 2409
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2408
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    add-int/2addr v1, v4

    goto :goto_4

    .line 2411
    :cond_7
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    neg-int v6, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/16 v11, 0x2e

    const/4 v6, 0x1

    .line 2255
    iget-object v7, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 2256
    iget-object v4, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2291
    :cond_0
    :goto_0
    return-object v4

    .line 2258
    :cond_1
    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x20

    if-ge v7, v8, :cond_2

    .line 2259
    iget-wide v6, p0, Ljava/math/BigDecimal;->smallValue:J

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v6, v7, v8}, Ljava/math/Conversion;->toDecimalScaledString(JI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2260
    iget-object v4, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    goto :goto_0

    .line 2262
    :cond_2
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2263
    .local v4, intString:Ljava/lang/String;
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v7, :cond_0

    .line 2266
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-gez v7, :cond_3

    const/4 v0, 0x2

    .line 2267
    .local v0, begin:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 2268
    .local v1, end:I
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    neg-long v7, v7

    int-to-long v9, v1

    add-long/2addr v7, v9

    int-to-long v9, v0

    sub-long v2, v7, v9

    .line 2269
    .local v2, exponent:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2271
    .local v5, result:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_5

    const-wide/16 v7, -0x6

    cmp-long v7, v2, v7

    if-ltz v7, :cond_5

    .line 2273
    cmp-long v6, v2, v12

    if-ltz v6, :cond_4

    .line 2274
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v6, v1, v6

    invoke-virtual {v5, v6, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2290
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2291
    iget-object v4, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    goto :goto_0

    .end local v0           #begin:I
    .end local v1           #end:I
    .end local v2           #exponent:J
    .end local v5           #result:Ljava/lang/StringBuilder;
    :cond_3
    move v0, v6

    .line 2266
    goto :goto_1

    .line 2276
    .restart local v0       #begin:I
    .restart local v1       #end:I
    .restart local v2       #exponent:J
    .restart local v5       #result:Ljava/lang/StringBuilder;
    :cond_4
    add-int/lit8 v6, v0, -0x1

    const-string v7, "0."

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    add-int/lit8 v6, v0, 0x1

    sget-object v7, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/4 v8, 0x0

    long-to-int v9, v2

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2280
    :cond_5
    sub-int v7, v1, v0

    if-lt v7, v6, :cond_6

    .line 2281
    invoke-virtual {v5, v0, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2282
    add-int/lit8 v1, v1, 0x1

    .line 2284
    :cond_6
    const/16 v6, 0x45

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2285
    cmp-long v6, v2, v12

    if-lez v6, :cond_7

    .line 2286
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x2b

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2288
    :cond_7
    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public ulp()Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 2723
    const-wide/16 v0, 0x1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1867
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
