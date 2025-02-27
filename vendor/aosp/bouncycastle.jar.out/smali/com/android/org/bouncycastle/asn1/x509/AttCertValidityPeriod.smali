.class public Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "AttCertValidityPeriod.java"


# instance fields
.field notAfterTime:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

.field notBeforeTime:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .parameter "seq"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 36
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

    .line 40
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;)V
    .locals 0
    .parameter "notBeforeTime"
    .parameter "notAfterTime"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    .line 53
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    .line 54
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
    .locals 3
    .parameter "obj"

    .prologue
    .line 19
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    if-eqz v0, :cond_0

    .line 21
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    .line 25
    .end local p0
    :goto_0
    return-object p0

    .line 23
    .restart local p0
    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 28
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
.method public getNotAfterTime()Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public getNotBeforeTime()Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 79
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notBeforeTime:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 80
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->notAfterTime:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 82
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
