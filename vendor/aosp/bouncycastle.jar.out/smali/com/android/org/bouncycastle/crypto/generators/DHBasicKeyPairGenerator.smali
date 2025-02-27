.class public Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;
.super Ljava/lang/Object;
.source "DHBasicKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 7

    .prologue
    .line 32
    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 33
    .local v1, helper:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    .line 35
    .local v0, dhp:Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 36
    .local v2, x:Ljava/math/BigInteger;
    invoke-virtual {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 38
    .local v3, y:Ljava/math/BigInteger;
    new-instance v4, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-direct {v5, v3, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v6, v2, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v4
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 27
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .end local p1
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 28
    return-void
.end method
