.class Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHid"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 1
    .parameter

    .prologue
    .line 1040
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1040
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering IncomingHid state with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$11700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$11800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->mCommand:I

    .line 1048
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->mCommand:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->mCommand:I

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    .line 1050
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: IncomingHid state with command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->mStatus:Z

    .line 1053
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->mStatus:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1054
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1058
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IncomingHid State->Processing Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 1059
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1060
    .local v0, deferMsg:Landroid/os/Message;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1110
    :goto_0
    return v2

    .line 1070
    :sswitch_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$11900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v2, v3

    .line 1110
    goto :goto_0

    .line 1073
    :sswitch_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v4, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7302(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 1074
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1075
    .local v1, val:I
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v4, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$900(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 1076
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v4, v7, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7400(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    goto :goto_1

    .line 1080
    .end local v1           #val:I
    :sswitch_3
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7300(Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1081
    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z
    invoke-static {v4, v7, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7400(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z

    .line 1082
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessRemovalIntent()V
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7500(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    .line 1083
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v4, 0x66

    invoke-virtual {v2, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1102
    :sswitch_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$12000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 1105
    :sswitch_5
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v4

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$12100(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1060
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_1
        0x34 -> :sswitch_0
        0x35 -> :sswitch_1
        0x36 -> :sswitch_0
        0x37 -> :sswitch_1
        0x38 -> :sswitch_4
        0x39 -> :sswitch_4
        0x3a -> :sswitch_4
        0x64 -> :sswitch_4
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
    .end sparse-switch
.end method
