.class public Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
.super Ljava/security/cert/PKIXParameters;
.source "ExtendedPKIXParameters.java"


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final PKIX_VALIDITY_MODEL:I


# instance fields
.field private additionalLocationsEnabled:Z

.field private additionalStores:Ljava/util/List;

.field private attrCertCheckers:Ljava/util/Set;

.field private necessaryACAttributes:Ljava/util/Set;

.field private prohibitedACAttributes:Ljava/util/Set;

.field private selector:Lcom/android/org/bouncycastle/util/Selector;

.field private stores:Ljava/util/List;

.field private trustedACIssuers:Ljava/util/Set;

.field private useDeltas:Z

.field private validityModel:I


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .parameter "trustAnchors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 162
    iput v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 164
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    .line 66
    return-void
.end method

.method public static getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .locals 4
    .parameter "pkixParams"

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v1, params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 88
    return-object v1

    .line 82
    .end local v1           #params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addAddionalStore(Lcom/android/org/bouncycastle/util/Store;)V
    .locals 0
    .parameter "store"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lcom/android/org/bouncycastle/util/Store;)V

    .line 296
    return-void
.end method

.method public addAdditionalStore(Lcom/android/org/bouncycastle/util/Store;)V
    .locals 1
    .parameter "store"

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    return-void
.end method

.method public addStore(Lcom/android/org/bouncycastle/util/Store;)V
    .locals 1
    .parameter "store"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 343
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .local v1, params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 351
    return-object v1

    .line 345
    .end local v1           #params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAdditionalStores()Ljava/util/List;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttrCertCheckers()Ljava/util/Set;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNecessaryACAttributes()Ljava/util/Set;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProhibitedACAttributes()Ljava/util/Set;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStores()Ljava/util/List;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/util/Selector;

    .line 403
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrustedACIssuers()Ljava/util/Set;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValidityModel()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    return v0
.end method

.method public isAdditionalLocationsEnabled()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    return v0
.end method

.method public isUseDeltasEnabled()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    return v0
.end method

.method public setAdditionalLocationsEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    .line 374
    return-void
.end method

.method public setAttrCertCheckers(Ljava/util/Set;)V
    .locals 4
    .parameter "attrCertCheckers"

    .prologue
    .line 634
    if-nez p1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 649
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/x509/PKIXAttrCertChecker;

    if-nez v1, :cond_1

    .line 643
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All elements of set must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/org/bouncycastle/x509/PKIXAttrCertChecker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 648
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setCertStores(Ljava/util/List;)V
    .locals 2
    .parameter "stores"

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertStore;

    invoke-virtual {p0, v1}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_0

    .line 212
    .end local v0           #it:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setNecessaryACAttributes(Ljava/util/Set;)V
    .locals 3
    .parameter "necessaryACAttributes"

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 561
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 555
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of set must be of type String."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 560
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    .line 101
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 102
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertStores(Ljava/util/List;)V

    .line 103
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/security/cert/PKIXParameters;->setAnyPolicyInhibited(Z)V

    .line 104
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/security/cert/PKIXParameters;->setExplicitPolicyRequired(Z)V

    .line 105
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/security/cert/PKIXParameters;->setPolicyMappingInhibited(Z)V

    .line 106
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 107
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/cert/PKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    .line 108
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/security/cert/PKIXParameters;->setPolicyQualifiersRejected(Z)V

    .line 109
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/cert/PKIXParameters;->setSigProvider(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 113
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/cert/PKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    instance-of v2, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 122
    check-cast v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 123
    .local v0, _params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    iget v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    iput v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 124
    iget-boolean v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 125
    iget-boolean v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    .line 126
    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    .line 130
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    .line 131
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    .line 132
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    .line 133
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    .line 135
    .end local v0           #_params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #_params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_1
    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/util/Selector;

    goto :goto_0
.end method

.method public setProhibitedACAttributes(Ljava/util/Set;)V
    .locals 3
    .parameter "prohibitedACAttributes"

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 606
    :goto_0
    return-void

    .line 596
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 600
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of set must be of type String."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 604
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 605
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setStores(Ljava/util/List;)V
    .locals 3
    .parameter "stores"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 244
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/util/Store;

    if-nez v1, :cond_1

    .line 237
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of list must be of type org.bouncycastle.util.Store."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    goto :goto_0
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 1
    .parameter "selector"

    .prologue
    .line 457
    invoke-super {p0, p1}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 458
    if-eqz p1, :cond_0

    .line 460
    check-cast p1, Ljava/security/cert/X509CertSelector;

    .end local p1
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    .line 467
    :goto_0
    return-void

    .line 465
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    goto :goto_0
.end method

.method public setTargetConstraints(Lcom/android/org/bouncycastle/util/Selector;)V
    .locals 1
    .parameter "selector"

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 430
    invoke-interface {p1}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/util/Selector;

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    goto :goto_0
.end method

.method public setTrustedACIssuers(Ljava/util/Set;)V
    .locals 4
    .parameter "trustedACIssuers"

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 515
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    if-nez v1, :cond_1

    .line 509
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All elements of set must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 514
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setUseDeltasEnabled(Z)V
    .locals 0
    .parameter "useDeltas"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 184
    return-void
.end method

.method public setValidityModel(I)V
    .locals 0
    .parameter "validityModel"

    .prologue
    .line 335
    iput p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 336
    return-void
.end method
