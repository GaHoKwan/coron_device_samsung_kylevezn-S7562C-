.class Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RssiMonitoringState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 1021
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

    .line 1022
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100d

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1023
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 1026
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1064
    :goto_0
    return v1

    .line 1028
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-result v2

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 1029
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 1064
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1033
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1037
    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1038
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21017

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1039
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v4, 0x2100d

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchIntervalMs:J
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 1044
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1045
    .local v0, rssi:I
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSSI_FETCH_SUCCEEDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    .line 1046
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, -0x58

    if-ge v2, v3, :cond_3

    .line 1047
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6108(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 1052
    :goto_2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 1053
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendPoorLinkDetected()V
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1054
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    goto :goto_1

    .line 1049
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I
    invoke-static {v2, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto :goto_2

    .line 1059
    .end local v0           #rssi:I
    :sswitch_3
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RSSI_FETCH_FAILED"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1026
    nop

    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x2100d -> :sswitch_1
        0x21018 -> :sswitch_2
        0x21019 -> :sswitch_3
    .end sparse-switch
.end method
