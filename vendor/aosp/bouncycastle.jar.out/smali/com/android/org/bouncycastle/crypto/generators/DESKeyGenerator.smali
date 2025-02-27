.class public Lcom/android/org/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;
.source "DESKeyGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 2

    .prologue
    .line 36
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 40
    .local v0, newKey:[B
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 42
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 44
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    return-object v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 3
    .parameter "param"

    .prologue
    const/16 v2, 0x8

    .line 20
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 22
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 24
    :cond_0
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    .line 32
    :cond_1
    return-void

    .line 26
    :cond_2
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;->strength:I

    if-eq v0, v2, :cond_1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key must be 64 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
