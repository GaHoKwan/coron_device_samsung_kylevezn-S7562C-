.class Lcom/sec/android/app/camera/CamcorderEngine$4;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderEngine;->doStartVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x4

    .line 1053
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$300(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1054
    const-string v2, "CamcorderEngine"

    const-string v3, "SecMediaRecorder is not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 1088
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->access$402(Lcom/sec/android/app/camera/CamcorderEngine;Z)Z

    .line 1059
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #calls: Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$500(Lcom/sec/android/app/camera/CamcorderEngine;)V

    .line 1064
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camcorder;->resetIndicatorTimerDrift()V

    .line 1065
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$300(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v1, ioBusyVoteIntent:Landroid/content/Intent;
    const-string v2, "com.android.server.CpuGovernorService.voteType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1080
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1082
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1083
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #calls: Lcom/sec/android/app/camera/CamcorderEngine;->setSystemSoundEffect()V
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$600(Lcom/sec/android/app/camera/CamcorderEngine;)V

    .line 1084
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->disableSystemSoundEffect()V

    .line 1087
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1066
    .end local v1           #ioBusyVoteIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1067
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CamcorderEngine"

    const-string v3, "Could not start media recorder. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1068
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1070
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 1071
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1073
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$4;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
