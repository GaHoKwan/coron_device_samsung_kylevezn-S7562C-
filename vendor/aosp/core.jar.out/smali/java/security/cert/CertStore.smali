.class public Ljava/security/cert/CertStore;
.super Ljava/lang/Object;
.source "CertStore.java"


# static fields
.field private static final DEFAULTPROPERTY:Ljava/lang/String; = "LDAP"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final PROPERTYNAME:Ljava/lang/String; = "certstore.type"

.field private static final SERVICE:Ljava/lang/String; = "CertStore"


# instance fields
.field private final certStoreParams:Ljava/security/cert/CertStoreParameters;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/cert/CertStoreSpi;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "CertStore"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/cert/CertStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    .locals 0
    .parameter "storeSpi"
    .parameter "provider"
    .parameter "type"
    .parameter "params"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    .line 75
    iput-object p3, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

    .line 77
    iput-object p4, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    .line 78
    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    const-string v1, "certstore.type"

    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, defaultType:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "LDAP"

    .end local v0           #defaultType:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;
    .locals 6
    .parameter "type"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 103
    :cond_0
    :try_start_0
    sget-object v3, Ljava/security/cert/CertStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v3, p0, p1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    .line 104
    .local v1, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v4, Ljava/security/cert/CertStore;

    iget-object v3, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v3, Ljava/security/cert/CertStoreSpi;

    iget-object v5, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v4, v3, v5, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 105
    .end local v1           #sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 107
    .local v2, th:Ljava/lang/Throwable;
    if-nez v2, :cond_1

    .line 108
    throw v0

    .line 110
    :cond_1
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;
    .locals 2
    .parameter "type"
    .parameter "params"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 145
    :cond_1
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 146
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_2

    .line 147
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_2
    invoke-static {p0, p1, v0}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;
    .locals 5
    .parameter "type"
    .parameter "params"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 174
    if-nez p2, :cond_0

    .line 175
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 177
    :cond_0
    if-nez p0, :cond_1

    .line 178
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 181
    :cond_1
    :try_start_0
    sget-object v3, Ljava/security/cert/CertStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v3, p0, p2, p1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, spi:Ljava/lang/Object;
    new-instance v3, Ljava/security/cert/CertStore;

    check-cast v1, Ljava/security/cert/CertStoreSpi;

    .end local v1           #spi:Ljava/lang/Object;
    invoke-direct {v3, v1, p2, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 185
    .local v2, th:Ljava/lang/Throwable;
    if-nez v2, :cond_2

    .line 186
    throw v0

    .line 188
    :cond_2
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public final getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 1
    .parameter "selector"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertStoreSpi;->engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getCertStoreParameters()Ljava/security/cert/CertStoreParameters;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    invoke-interface {v0}, Ljava/security/cert/CertStoreParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStoreParameters;

    goto :goto_0
.end method

.method public final getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 1
    .parameter "selector"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertStoreSpi;->engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    return-object v0
.end method
