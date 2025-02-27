.class public Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
.super Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
.source "ExtendedPKIXBuilderParameters.java"


# instance fields
.field private excludedCerts:Ljava/util/Set;

.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/android/org/bouncycastle/util/Selector;)V
    .locals 1
    .parameter "trustAnchors"
    .parameter "targetConstraints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V

    .line 24
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 26
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetConstraints(Lcom/android/org/bouncycastle/util/Selector;)V

    .line 88
    return-void
.end method

.method public static getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .locals 4
    .parameter "pkixParams"

    .prologue
    .line 197
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;

    invoke-static {v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lcom/android/org/bouncycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v1, params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 208
    return-object v1

    .line 202
    .end local v1           #params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 169
    .local v1, params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .end local v1           #params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lcom/android/org/bouncycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .restart local v1       #params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 178
    return-object v1

    .line 172
    .end local v1           #params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getExcludedCerts()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPathLength()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    return v0
.end method

.method public setExcludedCerts(Ljava/util/Set;)V
    .locals 1
    .parameter "excludedCerts"

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 53
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    goto :goto_0
.end method

.method public setMaxPathLength(I)V
    .locals 2
    .parameter "maxPathLength"

    .prologue
    .line 113
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    .line 115
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The maximum path length parameter can not be less than -1."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 119
    return-void
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 145
    instance-of v1, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 147
    check-cast v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 148
    .local v0, _params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    iget v1, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    iput v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 149
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 151
    .end local v0           #_params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :cond_0
    instance-of v1, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 153
    check-cast v0, Ljava/security/cert/PKIXBuilderParameters;

    .line 154
    .local v0, _params:Ljava/security/cert/PKIXBuilderParameters;
    invoke-virtual {v0}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 156
    .end local v0           #_params:Ljava/security/cert/PKIXBuilderParameters;
    :cond_1
    return-void
.end method
