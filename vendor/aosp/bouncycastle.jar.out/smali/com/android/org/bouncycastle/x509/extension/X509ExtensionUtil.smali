.class public Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;
.super Ljava/lang/Object;
.source "X509ExtensionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .locals 2
    .parameter "encodedValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 31
    .local v0, octs:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    return-object v1
.end method

.method private static getAlternativeNames([B)Ljava/util/Collection;
    .locals 8
    .parameter "extVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 55
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 95
    :goto_0
    return-object v5

    .line 59
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v4, temp:Ljava/util/Collection;
    invoke-static {p0}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 61
    .local v2, it:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 64
    .local v1, genName:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, list:Ljava/util/List;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 90
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad tag number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1           #genName:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v2           #it:Ljava/util/Enumeration;
    .end local v3           #list:Ljava/util/List;
    .end local v4           #temp:Ljava/util/Collection;
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #genName:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v2       #it:Ljava/util/Enumeration;
    .restart local v3       #list:Ljava/util/List;
    .restart local v4       #temp:Ljava/util/Collection;
    :pswitch_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_2
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 81
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 84
    :pswitch_3
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    :pswitch_4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    .end local v1           #genName:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v3           #list:Ljava/util/List;
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getIssuerAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .locals 2
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 37
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 39
    .local v0, extVal:[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->getAlternativeNames([B)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .locals 2
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 47
    .local v0, extVal:[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->getAlternativeNames([B)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
