.class public Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;
.super Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.source "DSAKeyGenerationParameters.java"


# instance fields
.field private params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .locals 1
    .parameter "random"
    .parameter "params"

    .prologue
    .line 16
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 18
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .line 19
    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    return-object v0
.end method
