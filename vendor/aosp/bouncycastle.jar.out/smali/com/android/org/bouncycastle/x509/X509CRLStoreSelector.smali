.class public Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
.super Ljava/security/cert/X509CRLSelector;
.source "X509CRLStoreSelector.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field private attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 31
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 33
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 35
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    .locals 4
    .parameter "selector"

    .prologue
    .line 205
    if-nez p0, :cond_0

    .line 207
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cannot create from null selector"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 211
    .local v0, cs:Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 212
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setIssuers(Ljava/util/Collection;)V

    .line 223
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    .line 224
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 225
    return-object v0

    .line 217
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 230
    invoke-static {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    move-result-object v0

    .line 231
    .local v0, sel:Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 232
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 233
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 234
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .line 235
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 236
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 237
    return-object v0
.end method

.method public getAttrCertificateChecking()Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getIssuingDistributionPoint()[B
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isCompleteCRLEnabled()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public isDeltaCRLIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public isIssuingDistributionPointEnabled()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 94
    instance-of v6, p1, Ljava/security/cert/X509CRL;

    if-nez v6, :cond_1

    .line 160
    .end local p1
    :cond_0
    :goto_0
    return v5

    .restart local p1
    :cond_1
    move-object v1, p1

    .line 98
    check-cast v1, Ljava/security/cert/X509CRL;

    .line 99
    .local v1, crl:Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    .line 102
    .local v2, dci:Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 104
    .local v0, bytes:[B
    if-eqz v0, :cond_2

    .line 106
    invoke-static {v0}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 116
    if-eqz v2, :cond_0

    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 123
    if-nez v2, :cond_0

    .line 128
    :cond_4
    if-eqz v2, :cond_5

    .line 131
    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v6, :cond_5

    .line 133
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 139
    :cond_5
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v6, :cond_6

    .line 141
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 144
    .local v4, idp:[B
    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v6, :cond_7

    .line 146
    if-nez v4, :cond_0

    .line 160
    .end local v4           #idp:[B
    :cond_6
    check-cast p1, Ljava/security/cert/X509CRL;

    .end local p1
    invoke-super {p0, p1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v5

    goto :goto_0

    .line 110
    .end local v0           #bytes:[B
    .restart local p1
    :catch_0
    move-exception v3

    .line 112
    .local v3, e:Ljava/lang/Exception;
    goto :goto_0

    .line 153
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bytes:[B
    .restart local v4       #idp:[B
    :cond_7
    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v4, v6}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 1
    .parameter "crl"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttrCertificateChecking(Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0
    .parameter "attrCert"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .line 79
    return-void
.end method

.method public setCompleteCRLEnabled(Z)V
    .locals 0
    .parameter "completeCRLEnabled"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 263
    return-void
.end method

.method public setDeltaCRLIndicatorEnabled(Z)V
    .locals 0
    .parameter "deltaCRLIndicator"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 193
    return-void
.end method

.method public setIssuingDistributionPoint([B)V
    .locals 1
    .parameter "issuingDistributionPoint"

    .prologue
    .line 328
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 329
    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .locals 0
    .parameter "issuingDistributionPointEnabled"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 63
    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .parameter "maxBaseCRLNumber"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 289
    return-void
.end method
