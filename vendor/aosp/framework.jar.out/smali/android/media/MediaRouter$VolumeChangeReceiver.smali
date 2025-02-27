.class Landroid/media/MediaRouter$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeChangeReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1674
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1678
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1679
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1681
    .local v2, streamType:I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1692
    .end local v2           #streamType:I
    :cond_0
    :goto_0
    return-void

    .line 1685
    .restart local v2       #streamType:I
    :cond_1
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1686
    .local v0, newVolume:I
    const-string v3, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1688
    .local v1, oldVolume:I
    if-eq v0, v1, :cond_0

    .line 1689
    invoke-static {v0}, Landroid/media/MediaRouter;->systemVolumeChanged(I)V

    goto :goto_0
.end method
