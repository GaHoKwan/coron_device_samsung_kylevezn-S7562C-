.class public Ljava/security/CodeSource;
.super Ljava/lang/Object;
.source "CodeSource.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V
    .locals 0
    .parameter "location"
    .parameter "signers"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V
    .locals 0
    .parameter "location"
    .parameter "certs"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCodeSigners()[Ljava/security/CodeSigner;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLocation()Ljava/net/URL;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/CodeSource;)Z
    .locals 1
    .parameter "cs"

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method
