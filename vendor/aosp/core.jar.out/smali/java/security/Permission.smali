.class public abstract Ljava/security/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Guard;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkGuard(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public abstract getActions()Ljava/lang/String;
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract implies(Ljava/security/Permission;)Z
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/security/AllPermissionCollection;

    invoke-direct {v0}, Ljava/security/AllPermissionCollection;-><init>()V

    return-object v0
.end method
