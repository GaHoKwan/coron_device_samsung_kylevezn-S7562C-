.class Lcom/sec/android/app/camera/Camera$16;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->startBlinkShutterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 6613
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 6616
    packed-switch p1, :pswitch_data_0

    .line 6626
    :cond_0
    :goto_0
    return-void

    .line 6618
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6619
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 6620
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 6621
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 6622
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$2302(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;

    goto :goto_0

    .line 6616
    nop

    :pswitch_data_0
    .packed-switch 0xffff
        :pswitch_0
    .end packed-switch
.end method
