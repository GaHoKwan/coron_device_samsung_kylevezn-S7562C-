.class Lcom/sec/android/app/camera/Camcorder$10;
.super Landroid/os/Handler;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 3336
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$10;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 3338
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$10;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1000(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3347
    :goto_0
    return-void

    .line 3340
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3342
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$10;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handleCameraTemperatureCheck()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$2000(Lcom/sec/android/app/camera/Camcorder;)V

    goto :goto_0

    .line 3340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
