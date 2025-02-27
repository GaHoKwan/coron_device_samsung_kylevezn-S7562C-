.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;
.super Ljava/lang/Object;
.source "PKIXCRLUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 8
    .parameter "crlSelect"
    .parameter "crlStores"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 108
    .local v0, crls:Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 110
    .local v3, iter:Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 111
    .local v4, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v2, 0x0

    .line 113
    .local v2, foundValidStore:Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 117
    .local v5, obj:Ljava/lang/Object;
    instance-of v7, v5, Lcom/android/org/bouncycastle/x509/X509Store;

    if-eqz v7, :cond_0

    move-object v6, v5

    .line 119
    check-cast v6, Lcom/android/org/bouncycastle/x509/X509Store;

    .line 123
    .local v6, store:Lcom/android/org/bouncycastle/x509/X509Store;
    :try_start_0
    invoke-virtual {v6, p1}, Lcom/android/org/bouncycastle/x509/X509Store;->getMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v2, 0x1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, e:Lcom/android/org/bouncycastle/util/StoreException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local v4           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const-string v7, "Exception searching in X.509 CRL store."

    invoke-direct {v4, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v4       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_0

    .end local v1           #e:Lcom/android/org/bouncycastle/util/StoreException;
    .end local v6           #store:Lcom/android/org/bouncycastle/x509/X509Store;
    :cond_0
    move-object v6, v5

    .line 134
    check-cast v6, Ljava/security/cert/CertStore;

    .line 138
    .local v6, store:Ljava/security/cert/CertStore;
    :try_start_1
    invoke-virtual {v6, p1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    const/4 v2, 0x1

    goto :goto_0

    .line 141
    :catch_1
    move-exception v1

    .line 143
    .local v1, e:Ljava/security/cert/CertStoreException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local v4           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const-string v7, "Exception searching in X.509 CRL store."

    invoke-direct {v4, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v4       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_0

    .line 148
    .end local v1           #e:Ljava/security/cert/CertStoreException;
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #store:Ljava/security/cert/CertStore;
    :cond_1
    if-nez v2, :cond_2

    if-eqz v4, :cond_2

    .line 150
    throw v4

    .line 152
    :cond_2
    return-object v0
.end method


# virtual methods
.method public findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;)Ljava/util/Set;
    .locals 9
    .parameter "crlselect"
    .parameter "paramsPKIX"
    .parameter "currentDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 30
    .local v4, initialSet:Ljava/util/Set;
    :try_start_0
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 40
    .local v3, finalSet:Ljava/util/Set;
    move-object v6, p3

    .line 42
    .local v6, validityDate:Ljava/util/Date;
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 44
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v6

    .line 48
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 50
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    .line 52
    .local v1, crl:Ljava/security/cert/X509CRL;
    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 56
    .local v0, cert:Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 60
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #crl:Ljava/security/cert/X509CRL;
    .end local v3           #finalSet:Ljava/util/Set;
    .end local v5           #it:Ljava/util/Iterator;
    .end local v6           #validityDate:Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 36
    .local v2, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Exception obtaining complete CRLs."

    invoke-direct {v7, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 65
    .end local v2           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    .restart local v1       #crl:Ljava/security/cert/X509CRL;
    .restart local v3       #finalSet:Ljava/util/Set;
    .restart local v5       #it:Ljava/util/Iterator;
    .restart local v6       #validityDate:Ljava/util/Date;
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #crl:Ljava/security/cert/X509CRL;
    :cond_3
    return-object v3
.end method

.method public findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;
    .locals 4
    .parameter "crlselect"
    .parameter "paramsPKIX"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 81
    .local v0, completeSet:Ljava/util/Set;
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Exception obtaining complete CRLs."

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
