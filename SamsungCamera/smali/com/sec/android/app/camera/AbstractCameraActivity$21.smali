.class Lcom/sec/android/app/camera/AbstractCameraActivity$21;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1845
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$21;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 1850
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$21;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 1851
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$21;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isP2pEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1852
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$21;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->setWifiP2pEnabled()V

    .line 1854
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DIRECT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1855
    .local v0, localIntent:Landroid/content/Intent;
    const-string v1, "AUTO_FINISH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1857
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$21;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1858
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$21;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v3, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 1859
    return-void
.end method
