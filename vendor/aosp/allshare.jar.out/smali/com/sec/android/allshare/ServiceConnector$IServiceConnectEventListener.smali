.class public interface abstract Lcom/sec/android/allshare/ServiceConnector$IServiceConnectEventListener;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IServiceConnectEventListener"
.end annotation


# virtual methods
.method public abstract onCreated(Lcom/sec/android/allshare/ServiceProvider;Lcom/sec/android/allshare/ServiceConnector$ServiceState;)V
.end method

.method public abstract onDeleted(Lcom/sec/android/allshare/ServiceProvider;)V
.end method
