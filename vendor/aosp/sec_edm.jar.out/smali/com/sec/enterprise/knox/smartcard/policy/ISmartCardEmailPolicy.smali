.class public interface abstract Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;
.super Ljava/lang/Object;
.source "ISmartCardEmailPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;
    }
.end annotation


# virtual methods
.method public abstract isAuthenticationEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isCredentialRequired(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requireCredentials(Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
