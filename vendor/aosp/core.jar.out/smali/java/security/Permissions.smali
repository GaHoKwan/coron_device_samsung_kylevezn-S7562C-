.class public final Ljava/security/Permissions;
.super Ljava/security/PermissionCollection;
.source "Permissions.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 0
    .parameter "permission"

    .prologue
    .line 27
    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

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
