.class public Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
.super Ljava/lang/Object;
.source "DSAParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .parameter "p"
    .parameter "q"
    .parameter "g"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    .line 22
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V
    .locals 0
    .parameter "p"
    .parameter "q"
    .parameter "g"
    .parameter "params"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    .line 33
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    .line 34
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 60
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .line 67
    .local v0, pm:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
