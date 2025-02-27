.class public Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "PolicyInformation.java"


# instance fields
.field private policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .parameter "seq"

    .prologue
    const/4 v2, 0x1

    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 27
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 29
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 31
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 0
    .parameter "policyIdentifier"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .parameter "policyIdentifier"
    .parameter "policyQualifiers"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 44
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 45
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .locals 2
    .parameter "obj"

    .prologue
    .line 50
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    .line 55
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 78
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 80
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->policyQualifiers:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 85
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
