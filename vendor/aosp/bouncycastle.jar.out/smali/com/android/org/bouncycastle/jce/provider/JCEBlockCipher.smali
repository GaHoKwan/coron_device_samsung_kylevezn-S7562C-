.class public Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;
.super Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;
.source "JCEBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithAESCBC;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndTwofish;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd40BitRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd128BitRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES2Key;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndDES3Key;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndDES;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndRC2;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndDES;,
        Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$DES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

.field private ivLength:I

.field private ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private modeName:Ljava/lang/String;

.field private padded:Z

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 5
    .parameter "engine"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 95
    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 99
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 100
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 102
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 109
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 110
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 5
    .parameter "engine"
    .parameter "ivLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 95
    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 99
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 100
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 102
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 118
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 119
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 120
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;I)V
    .locals 5
    .parameter "engine"
    .parameter "ivLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;-><init>()V

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 95
    iput v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 99
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 100
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 102
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 128
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 129
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 130
    return-void
.end method

.method private isAEADModeName(Ljava/lang/String;)Z
    .locals 1
    .parameter "modeName"

    .prologue
    .line 759
    const-string v0, "CCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EAX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 9
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 727
    const/4 v7, 0x0

    .line 730
    .local v7, len:I
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v8

    .line 732
    .local v8, outputLen:I
    add-int v0, v8, p5

    array-length v1, p4

    if-le v0, v1, :cond_0

    .line 733
    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_0
    if-eqz p3, :cond_1

    .line 739
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 744
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    add-int v1, p5, v7

    invoke-interface {v0, p4, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 746
    :catch_0
    move-exception v6

    .line 748
    .local v6, e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    .end local v6           #e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    :catch_1
    move-exception v6

    .line 752
    .local v6, e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 9
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 683
    const/4 v7, 0x0

    .line 684
    .local v7, len:I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    .line 686
    .local v4, tmp:[B
    if-eqz p3, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 693
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, v4, v7}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    add-int/2addr v7, v0

    .line 704
    array-length v0, v4

    if-ne v7, v0, :cond_1

    .line 713
    .end local v4           #tmp:[B
    :goto_0
    return-object v4

    .line 695
    .restart local v4       #tmp:[B
    :catch_0
    move-exception v6

    .line 697
    .local v6, e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    .end local v6           #e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    :catch_1
    move-exception v6

    .line 701
    .local v6, e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    .end local v6           #e:Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    :cond_1
    new-array v8, v7, [B

    .line 711
    .local v8, out:[B
    invoke-static {v4, v5, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    .line 713
    goto :goto_0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 145
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .parameter "inputLen"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 156
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_1

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 163
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    :goto_1
    return-object v2

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 181
    :cond_2
    :try_start_1
    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 182
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    .line 186
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v1, 0x0

    .line 583
    .local v1, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_1

    .line 585
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 589
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 598
    :cond_0
    if-nez v1, :cond_1

    .line 600
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t handle parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 592
    :catch_0
    move-exception v2

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 606
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 607
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 617
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 11
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 374
    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 375
    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 376
    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 381
    instance-of v7, p2, Ljavax/crypto/SecretKey;

    if-nez v7, :cond_0

    .line 383
    new-instance v7, Ljava/security/InvalidKeyException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key for algorithm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not suitable for symmetric enryption."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 399
    :cond_0
    instance-of v7, p2, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v7, :cond_7

    move-object v3, p2

    .line 401
    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    .line 403
    .local v3, k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 405
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 412
    :goto_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 414
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 415
    .local v5, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    new-instance v7, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getSalt()[B

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIterationCount()I

    move-result v9

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 427
    :goto_1
    instance-of v7, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v7, :cond_1

    move-object v7, v5

    .line 429
    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 524
    .end local v3           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_1
    :goto_2
    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v7, :cond_f

    instance-of v7, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v7, :cond_f

    .line 526
    move-object v2, p4

    .line 528
    .local v2, ivRandom:Ljava/security/SecureRandom;
    if-nez v2, :cond_2

    .line 530
    new-instance v2, Ljava/security/SecureRandom;

    .end local v2           #ivRandom:Ljava/security/SecureRandom;
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 533
    .restart local v2       #ivRandom:Ljava/security/SecureRandom;
    :cond_2
    if-eq p1, v10, :cond_3

    const/4 v7, 0x3

    if-ne p1, v7, :cond_d

    .line 535
    :cond_3
    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-array v1, v7, [B

    .line 537
    .local v1, iv:[B
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 538
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v6, v5, v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v6, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v7, v6

    .line 539
    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 547
    .end local v1           #iv:[B
    .end local v2           #ivRandom:Ljava/security/SecureRandom;
    :goto_3
    if-eqz p4, :cond_e

    iget-boolean v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    if-eqz v7, :cond_e

    .line 549
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v5, v6, p4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 554
    .end local v6           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_4
    packed-switch p1, :pswitch_data_0

    .line 565
    :try_start_0
    new-instance v7, Ljava/security/InvalidParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown opmode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " passed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Ljava/lang/Exception;
    new-instance v7, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 409
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v3       #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_4
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    goto/16 :goto_0

    .line 417
    :cond_5
    instance-of v7, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v7, :cond_6

    move-object v7, p3

    .line 419
    check-cast v7, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 420
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, p3, v7}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_1

    .line 424
    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_6
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "PBE requires PBE parameters to be set."

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 432
    .end local v3           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_7
    if-nez p3, :cond_8

    .line 434
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_2

    .line 436
    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_8
    instance-of v7, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v7, :cond_c

    .line 438
    iget v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v7, :cond_a

    move-object v4, p3

    .line 440
    check-cast v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 442
    .local v4, p:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v7

    array-length v7, v7

    iget v8, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eq v7, v8, :cond_9

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 444
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IV must be "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes long."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 447
    :cond_9
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v7, v5

    .line 448
    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_2

    .line 452
    .end local v4           #p:Ljavax/crypto/spec/IvParameterSpec;
    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_a
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v8, "ECB"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 454
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "ECB mode does not use an IV"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 457
    :cond_b
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_2

    .line 521
    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_c
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "unknown parameter type."

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 541
    .restart local v2       #ivRandom:Ljava/security/SecureRandom;
    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_d
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PGPCFB"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_f

    .line 543
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "no IV set when one expected"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 558
    .end local v2           #ivRandom:Ljava/security/SecureRandom;
    :pswitch_0
    :try_start_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v8, 0x1

    invoke-interface {v7, v8, v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 572
    :goto_5
    return-void

    .line 562
    :pswitch_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v8, 0x0

    invoke-interface {v7, v8, v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v6       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_e
    move-object v5, v6

    .end local v6           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v5       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_4

    :cond_f
    move-object v6, v5

    .end local v5           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v6       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_3

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 5
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 198
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "ECB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 203
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 307
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CBC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 208
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "OFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 214
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 216
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, wordSize:I
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 223
    .end local v0           #wordSize:I
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 230
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 232
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 234
    .restart local v0       #wordSize:I
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 239
    .end local v0           #wordSize:I
    :cond_4
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "SIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 261
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 262
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_6

    .line 264
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_6
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 269
    :cond_7
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 271
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 272
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 275
    :cond_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "GOFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 277
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 278
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/GOFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 281
    :cond_9
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 283
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 284
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 286
    :cond_a
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 288
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 289
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 298
    :cond_b
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "GCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 300
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 301
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 305
    :cond_c
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, paddingName:Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->wrapOnNoPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 328
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->padded:Z

    .line 330
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "Only NoPadding can be used with AEAD modes."

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_3
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 336
    :cond_4
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 338
    :cond_5
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 340
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 342
    :cond_6
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 344
    :cond_7
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 346
    :cond_8
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 348
    :cond_9
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 350
    :cond_a
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 352
    :cond_b
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 354
    :cond_c
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 356
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 360
    :cond_d
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 671
    :catch_0
    move-exception v6

    .line 673
    .local v6, e:Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 15
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 630
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move/from16 v0, p3

    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v13

    .line 632
    .local v13, length:I
    if-lez v13, :cond_2

    .line 634
    new-array v5, v13, [B

    .line 636
    .local v5, out:[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v12

    .line 638
    .local v12, len:I
    if-nez v12, :cond_0

    .line 640
    const/4 v14, 0x0

    .line 656
    .end local v5           #out:[B
    .end local v12           #len:I
    :goto_0
    return-object v14

    .line 642
    .restart local v5       #out:[B
    .restart local v12       #len:I
    :cond_0
    array-length v1, v5

    if-eq v12, v1, :cond_1

    .line 644
    new-array v14, v12, [B

    .line 646
    .local v14, tmp:[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v14           #tmp:[B
    :cond_1
    move-object v14, v5

    .line 651
    goto :goto_0

    .line 654
    .end local v5           #out:[B
    .end local v12           #len:I
    :cond_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher;->cipher:Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-interface/range {v6 .. v11}, Lcom/android/org/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    .line 656
    const/4 v14, 0x0

    goto :goto_0
.end method
