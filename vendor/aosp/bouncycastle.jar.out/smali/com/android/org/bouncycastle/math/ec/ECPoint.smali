.class public abstract Lcom/android/org/bouncycastle/math/ec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    }
.end annotation


# static fields
.field private static converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

.field protected preCompInfo:Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

.field protected withCompression:Z

.field x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .parameter "curve"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 20
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompInfo:Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 27
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 28
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 29
    return-void
.end method

.method static synthetic access$000()Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    return-object v0
.end method


# virtual methods
.method public abstract add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method declared-synchronized assertECMultiplier()V
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/FpNafMultiplier;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/FpNafMultiplier;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    if-nez v3, :cond_2

    move v1, v2

    .line 66
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 69
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 71
    .local v0, o:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    goto :goto_0

    .line 76
    :cond_3
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public abstract getEncoded()[B
.end method

.method public getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public isCompressed()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    return v0
.end method

.method public isInfinity()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .parameter "k"

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The multiplicator cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    .end local p0
    :goto_0
    return-object p0

    .line 146
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->assertECMultiplier()V

    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompInfo:Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    invoke-interface {v0, p0, p1, v1}, Lcom/android/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public abstract negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V
    .locals 0
    .parameter "preCompInfo"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompInfo:Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 109
    return-void
.end method

.method public abstract subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public abstract twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method
