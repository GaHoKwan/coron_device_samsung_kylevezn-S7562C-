.class public Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source "JCEECPrivateKey.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPointEncoder;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Ljava/security/interfaces/ECPrivateKey;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

.field private d:Ljava/math/BigInteger;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 192
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1
    .parameter "algorithm"
    .parameter "params"

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 184
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 185
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 6
    .parameter "algorithm"
    .parameter "params"
    .parameter "pubKey"
    .parameter "spec"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v2, "EC"

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 147
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 149
    .local v0, dp:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 150
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 152
    if-nez p4, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 156
    .local v1, ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 177
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 178
    return-void

    .line 166
    .end local v1           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    :cond_0
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 168
    .restart local v1       #ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 6
    .parameter "algorithm"
    .parameter "params"
    .parameter "pubKey"
    .parameter "spec"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v2, "EC"

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 116
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 118
    .local v0, dp:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 119
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 121
    if-nez p4, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 125
    .local v1, ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 138
    .end local v1           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 139
    return-void

    .line 135
    :cond_0
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;)V
    .locals 1
    .parameter "algorithm"
    .parameter "key"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 102
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 103
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 104
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 105
    iget-boolean v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 106
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 107
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;)V
    .locals 3
    .parameter "algorithm"
    .parameter "spec"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v2, "EC"

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 70
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 71
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 73
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 78
    .local v0, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 80
    .local v1, ellipticCurve:Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 86
    .end local v0           #curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v1           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1
    .parameter "algorithm"
    .parameter "spec"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 93
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 94
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 95
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 61
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 63
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 64
    return-void
.end method

.method private getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 3
    .parameter "pub"

    .prologue
    .line 437
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 439
    .local v1, info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 443
    .end local v1           #info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_0
    return-object v2

    .line 441
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    .line 197
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-direct {v10, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 199
    .local v10, params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 202
    .local v9, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v9}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 222
    .local v8, ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 224
    .local v2, ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v9}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getCurveName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 252
    .end local v2           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    .end local v8           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v9           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 256
    .local v6, derD:Lcom/android/org/bouncycastle/asn1/DERInteger;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 265
    .end local v6           #derD:Lcom/android/org/bouncycastle/asn1/DERInteger;
    :goto_1
    return-void

    .line 234
    :cond_0
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    .line 240
    :cond_1
    new-instance v8, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 241
    .restart local v8       #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 243
    .restart local v2       #ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    .line 260
    .end local v2           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    .end local v8           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_2
    new-instance v7, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 262
    .local v7, ec:Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getKey()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 263
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    goto :goto_1
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
    .line 451
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 453
    .local v0, enc:[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 455
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 457
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 459
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    .line 460
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 468
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    .line 471
    return-void
.end method


# virtual methods
.method engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 406
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    if-nez v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 411
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    .line 413
    .local v0, other:Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 1
    .parameter "oid"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v2, v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    .line 295
    .local v6, curveOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    if-nez v6, :cond_0

    .line 297
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local v6           #curveOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v6       #curveOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_0
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v9, v6}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 322
    .end local v6           #curveOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .local v9, params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v2, :cond_3

    .line 324
    new-instance v8, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v8, v2, v3, v9}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 340
    .local v8, keyStructure:Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    :goto_1
    new-instance v7, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 343
    .local v7, info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getDEREncoded()[B

    move-result-object v2

    return-object v2

    .line 301
    .end local v7           #info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v8           #keyStructure:Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    .end local v9           #params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v2, :cond_2

    .line 303
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v9, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .restart local v9       #params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 307
    .end local v9           #params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 309
    .local v1, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 316
    .local v0, ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V

    .restart local v9       #params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 328
    .end local v0           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v1           #curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_3
    new-instance v8, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v8, v2, v9}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .restart local v8       #keyStructure:Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    goto :goto_1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .parameter "oid"
    .parameter "attribute"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 386
    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1
    .parameter "style"

    .prologue
    .line 401
    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 402
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 424
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, nl:Ljava/lang/String;
    const-string v2, "EC Private Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    const-string v2, "             S: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
