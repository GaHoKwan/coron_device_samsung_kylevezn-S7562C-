.class Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WalledGardenCheckState"
.end annotation


# instance fields
.field private mWalledGardenToken:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 946
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 949
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    .line 950
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100c

    iget v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 952
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 956
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 968
    const/4 v0, 0x0

    .line 970
    :cond_0
    :goto_0
    return v0

    .line 958
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    if-ne v1, v2, :cond_0

    .line 959
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 960
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->isWalledGardenConnection()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 961
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Walled garden detected"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    .line 962
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->setWalledGardenNotificationVisible(Z)V
    invoke-static {v1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 964
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 956
    nop

    :pswitch_data_0
    .packed-switch 0x2100c
        :pswitch_0
    .end packed-switch
.end method
