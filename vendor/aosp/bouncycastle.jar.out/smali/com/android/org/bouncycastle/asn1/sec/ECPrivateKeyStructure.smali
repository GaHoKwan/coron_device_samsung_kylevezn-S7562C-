.class public Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "ECPrivateKeyStructure.java"


# instance fields
.field private seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .parameter "seq"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 40
    .local v0, bytes:[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 42
    .local v1, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 43
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 45
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .parameter "key"
    .parameter "parameters"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 5
    .parameter "key"
    .parameter "publicKey"
    .parameter "parameters"

    .prologue
    const/4 v4, 0x1

    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 62
    .local v0, bytes:[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 64
    .local v1, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 65
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 67
    if-eqz p3, :cond_0

    .line 69
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3, p3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 72
    :cond_0
    if-eqz p2, :cond_1

    .line 74
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v2, v4, v4, p2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 77
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 78
    return-void
.end method

.method private getObjectInTag(I)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .locals 4
    .parameter "tagNo"

    .prologue
    .line 99
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 101
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 105
    .local v1, obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 107
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 108
    .local v2, tag:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 110
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    .line 114
    .end local v1           #obj:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .end local v2           #tag:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/math/BigInteger;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 84
    .local v0, octs:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getObjectInTag(I)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getObjectInTag(I)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
