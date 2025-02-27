.class public Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "EncryptedPrivateKeyInfo.java"


# instance fields
.field private algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 25
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .parameter "algId"
    .parameter "encoding"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 35
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .locals 3
    .parameter "obj"

    .prologue
    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    .line 49
    .end local p0
    :goto_0
    return-object p0

    .line 47
    .restart local p0
    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 52
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEncryptedData()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 84
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 85
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 87
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
