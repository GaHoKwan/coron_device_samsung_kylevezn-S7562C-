.class Lcom/sec/android/app/camera/Camcorder$4;
.super Landroid/telephony/PhoneStateListener;
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
    .line 594
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 598
    packed-switch p1, :pswitch_data_0

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->access$1802(Lcom/sec/android/app/camera/Camcorder;Z)Z

    .line 608
    :goto_0
    return-void

    .line 601
    :pswitch_0
    const-string v0, "Camcorder"

    const-string v1, "PhoneStateListener On Call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$4;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->access$1802(Lcom/sec/android/app/camera/Camcorder;Z)Z

    goto :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
