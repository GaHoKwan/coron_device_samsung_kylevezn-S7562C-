.class Lcom/android/org/bouncycastle/openssl/PEMReader$X509CRLParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "X509CRLParser"
.end annotation


# instance fields
.field private provider:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "provider"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$X509CRLParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$X509CRLParser;->provider:Ljava/lang/String;

    .line 545
    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 6
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 560
    .local v0, bIn:Ljava/io/ByteArrayInputStream;
    :try_start_0
    const-string v3, "X.509"

    iget-object v4, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$X509CRLParser;->provider:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 563
    .local v1, certFact:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 565
    .end local v1           #certFact:Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    .line 567
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem parsing cert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
