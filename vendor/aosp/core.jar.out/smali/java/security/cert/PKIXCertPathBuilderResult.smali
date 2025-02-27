.class public Ljava/security/cert/PKIXCertPathBuilderResult;
.super Ljava/security/cert/PKIXCertPathValidatorResult;
.source "PKIXCertPathBuilderResult.java"

# interfaces
.implements Ljava/security/cert/CertPathBuilderResult;


# instance fields
.field private final certPath:Ljava/security/cert/CertPath;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    .locals 2
    .parameter "certPath"
    .parameter "trustAnchor"
    .parameter "policyTree"
    .parameter "subjectPublicKey"

    .prologue
    .line 51
    invoke-direct {p0, p2, p3, p4}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    .line 52
    iput-object p1, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    .line 53
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/security/cert/PKIXCertPathValidatorResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n Certification Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
