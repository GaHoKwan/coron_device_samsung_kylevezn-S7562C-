.class public final Ljava/net/SocketPermission;
.super Ljava/security/Permission;
.source "SocketPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "action"

    .prologue
    .line 27
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .parameter "permission"

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
