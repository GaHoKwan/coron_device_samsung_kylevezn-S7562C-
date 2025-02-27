.class public Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "KeyManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;

.field private pwd:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 5

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    invoke-direct {v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;-><init>(Ljava/security/KeyStore;[C)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;[C)V
    .locals 6
    .parameter "ks"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p1, :cond_1

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 56
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    .line 93
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v3, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 63
    const-string v3, "javax.net.ssl.keyStore"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, keyStoreName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 65
    .local v2, keyStorePwd:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 70
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 74
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :cond_3
    const-string v3, "javax.net.ssl.keyStorePassword"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    if-nez v2, :cond_4

    .line 76
    sget-object v3, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    .line 81
    :goto_1
    :try_start_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 82
    :catch_2
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 78
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_1

    .line 84
    :catch_3
    move-exception v0

    .line 85
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 86
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 87
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
