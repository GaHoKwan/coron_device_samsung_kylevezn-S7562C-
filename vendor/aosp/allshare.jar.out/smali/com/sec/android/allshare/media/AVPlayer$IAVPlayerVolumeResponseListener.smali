.class public interface abstract Lcom/sec/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
.super Ljava/lang/Object;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/AVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAVPlayerVolumeResponseListener"
.end annotation


# virtual methods
.method public abstract onGetMuteResponseReceived(ZLcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onGetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onSetMuteResponseReceived(ZLcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onSetVolumeResponseReceived(ILcom/sec/android/allshare/ERROR;)V
.end method
