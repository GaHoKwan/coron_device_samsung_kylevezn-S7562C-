.class public Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;
.super Ljava/lang/Object;
.source "X509V2AttributeCertificate.java"

# interfaces
.implements Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;


# instance fields
.field private cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;)V
    .locals 3
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    .line 84
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotAfterTime()Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    .line 85
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotBeforeTime()Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid data structure in certificate!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "encIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;)V

    .line 67
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Ljava/io/InputStream;)V

    .line 74
    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 6
    .parameter "critical"

    .prologue
    .line 234
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 236
    .local v2, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_1

    .line 238
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 239
    .local v4, set:Ljava/util/Set;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 241
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 244
    .local v3, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 246
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne v5, p1, :cond_0

    .line 248
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #set:Ljava/util/Set;
    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method private static getObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    throw v0

    .line 56
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception decoding certificate structure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity(Ljava/util/Date;)V

    .line 147
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 3
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 313
    if-ne p1, p0, :cond_1

    .line 315
    const/4 v4, 0x1

    .line 334
    :cond_0
    :goto_0
    return v4

    .line 318
    :cond_1
    instance-of v5, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 323
    check-cast v3, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .line 327
    .local v3, other:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v0

    .line 328
    .local v0, b1:[B
    invoke-interface {v3}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getEncoded()[B

    move-result-object v1

    .line 330
    .local v1, b2:[B
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 332
    .end local v0           #b1:[B
    .end local v1           #b2:[B
    :catch_0
    move-exception v2

    .line 334
    .local v2, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public getAttributes()[Lcom/android/org/bouncycastle/x509/X509Attribute;
    .locals 5

    .prologue
    .line 277
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 278
    .local v2, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v0, v3, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    .line 280
    .local v0, attrs:[Lcom/android/org/bouncycastle/x509/X509Attribute;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 282
    new-instance v4, Lcom/android/org/bouncycastle/x509/X509Attribute;

    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v4, v0, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;)[Lcom/android/org/bouncycastle/x509/X509Attribute;
    .locals 5
    .parameter "oid"

    .prologue
    .line 290
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 291
    .local v3, seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v2, list:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 295
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509Attribute;

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/x509/X509Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 296
    .local v0, attr:Lcom/android/org/bouncycastle/x509/X509Attribute;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v0           #attr:Lcom/android/org/bouncycastle/x509/X509Attribute;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 304
    const/4 v4, 0x0

    .line 307
    :goto_1
    return-object v4

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    check-cast v4, [Lcom/android/org/bouncycastle/x509/X509Attribute;

    goto :goto_1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .parameter "oid"

    .prologue
    .line 209
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 211
    .local v2, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_0

    .line 213
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 215
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_0

    .line 219
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 228
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :goto_0
    return-object v3

    .line 221
    .restart local v1       #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getHolder()Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
    .locals 2

    .prologue
    .line 105
    new-instance v1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getHolder()Lcom/android/org/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 7

    .prologue
    .line 125
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuerUniqueID()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 127
    .local v3, id:Lcom/android/org/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_1

    .line 129
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 130
    .local v1, bytes:[B
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v0, v4, [Z

    .line 132
    .local v0, boolId:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-eq v2, v4, :cond_2

    .line 134
    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v2, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    aput-boolean v4, v0, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 140
    .end local v0           #boolId:[Z
    .end local v1           #bytes:[B
    .end local v2           #i:I
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureValue()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getVersion()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 272
    .local v0, extensions:Ljava/util/Set;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 346
    :goto_0
    return v1

    .line 344
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, signature:Ljava/security/Signature;
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Signature algorithm in certificate info not same as outer certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 184
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lcom/android/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Public key presented not for certificate signature"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Exception encoding certificate info object"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    return-void
.end method
