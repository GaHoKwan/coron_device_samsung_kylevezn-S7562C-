.class public abstract Ljavax/net/ssl/X509ExtendedKeyManager;
.super Ljava/lang/Object;
.source "X509ExtendedKeyManager.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .parameter "keyType"
    .parameter "issuers"
    .parameter "engine"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .parameter "keyType"
    .parameter "issuers"
    .parameter "engine"

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method
