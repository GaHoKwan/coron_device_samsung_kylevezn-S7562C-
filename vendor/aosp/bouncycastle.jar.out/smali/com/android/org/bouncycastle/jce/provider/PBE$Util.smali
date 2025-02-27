.class public Lcom/android/org/bouncycastle/jce/provider/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    .locals 3
    .parameter "type"
    .parameter "hash"

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 60
    packed-switch p1, :pswitch_data_0

    .line 74
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :pswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 116
    .local v0, generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :goto_0
    return-object v0

    .line 71
    .end local v0           #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_1
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 72
    .restart local v0       #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 77
    .end local v0           #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .restart local v0       #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 81
    .end local v0           #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 83
    packed-switch p1, :pswitch_data_1

    .line 108
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :pswitch_3
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 92
    .restart local v0       #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 94
    .end local v0           #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_4
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 95
    .restart local v0       #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 105
    .end local v0           #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_5
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 106
    .restart local v0       #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 113
    .end local v0           #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0       #generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 83
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method static makePBEMacParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 7
    .parameter "pbeKey"
    .parameter "spec"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    instance-of v5, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v5, :cond_1

    .line 189
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v4, p1

    .line 192
    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 193
    .local v4, pbeParam:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getType()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getDigest()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 194
    .local v0, generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getEncoded()[B

    move-result-object v2

    .line 197
    .local v2, key:[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->shouldTryWrongPKCS12()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 199
    const/4 v5, 0x2

    new-array v2, v5, [B

    .line 202
    :cond_2
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 204
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 206
    .local v3, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v2

    if-eq v1, v5, :cond_3

    .line 208
    const/4 v5, 0x0

    aput-byte v5, v2, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_3
    return-object v3
.end method

.method static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 6
    .parameter "keySpec"
    .parameter "type"
    .parameter "hash"
    .parameter "keySize"

    .prologue
    .line 268
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 272
    .local v0, generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 274
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v2

    .line 281
    .local v2, key:[B
    :goto_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 283
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 285
    .local v3, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-eq v1, v4, :cond_1

    .line 287
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    .end local v1           #i:I
    .end local v2           #key:[B
    .end local v3           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v2

    .restart local v2       #key:[B
    goto :goto_0

    .line 290
    .restart local v1       #i:I
    .restart local v3       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    return-object v3
.end method

.method static makePBEParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 8
    .parameter "pbeKey"
    .parameter "spec"
    .parameter "targetAlgorithm"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    instance-of v6, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_1

    .line 130
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v5, p1

    .line 133
    check-cast v5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 134
    .local v5, pbeParam:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getType()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getDigest()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 135
    .local v0, generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getEncoded()[B

    move-result-object v3

    .line 138
    .local v3, key:[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->shouldTryWrongPKCS12()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    const/4 v6, 0x2

    new-array v3, v6, [B

    .line 143
    :cond_2
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 145
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v6

    if-eqz v6, :cond_4

    .line 147
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .line 154
    .local v4, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    const-string v6, "DES"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    instance-of v6, v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_5

    move-object v6, v4

    .line 158
    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 160
    .local v2, kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 170
    .end local v2           #kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v6, v3

    if-eq v1, v6, :cond_6

    .line 172
    const/4 v6, 0x0

    aput-byte v6, v3, v1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 151
    .end local v1           #i:I
    .end local v4           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .restart local v4       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    :cond_5
    move-object v2, v4

    .line 164
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 166
    .restart local v2       #kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_1

    .line 175
    .end local v2           #kParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .restart local v1       #i:I
    :cond_6
    return-object v4
.end method

.method static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 6
    .parameter "keySpec"
    .parameter "type"
    .parameter "hash"
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    .line 225
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 229
    .local v0, generator:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 231
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v2

    .line 238
    .local v2, key:[B
    :goto_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 240
    if-eqz p4, :cond_1

    .line 242
    invoke-virtual {v0, p3, p4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 249
    .local v3, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, v2

    if-eq v1, v4, :cond_2

    .line 251
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 235
    .end local v1           #i:I
    .end local v2           #key:[B
    .end local v3           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v2

    .restart local v2       #key:[B
    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1

    .line 254
    .restart local v1       #i:I
    :cond_2
    return-object v3
.end method
