.class public Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "Pfx.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .parameter "seq"

    .prologue
    const/4 v2, 0x3

    .line 24
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    .line 25
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 26
    .local v0, version:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "wrong version for PFX PDU"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 33
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 35
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    .line 37
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V
    .locals 1
    .parameter "contentInfo"
    .parameter "macData"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 44
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    .line 45
    return-void
.end method


# virtual methods
.method public getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 61
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 62
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 64
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 69
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
