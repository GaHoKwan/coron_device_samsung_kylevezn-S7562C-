.class Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;
.super Ljava/lang/Object;
.source "JCEBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedGenericBlockCipher"
.end annotation


# instance fields
.field private cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .parameter "cipher"

    .prologue
    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    new-instance v0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    .line 995
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1
    .parameter "cipher"
    .parameter "padding"

    .prologue
    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    new-instance v0, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    .line 1000
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 0
    .parameter "cipher"

    .prologue
    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    .line 990
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 1006
    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .parameter "in"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->processByte(B[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public wrapOnNoPadding()Z
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    instance-of v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
