.class Landroid/bluetooth/BluetoothAudioGateway$1;
.super Ljava/lang/Thread;
.source "BluetoothAudioGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAudioGateway;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAudioGateway;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 145
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 148
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$000(Landroid/bluetooth/BluetoothAudioGateway;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #setter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I
    invoke-static {v0, v8}, Landroid/bluetooth/BluetoothAudioGateway;->access$102(Landroid/bluetooth/BluetoothAudioGateway;I)I

    .line 151
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #setter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I
    invoke-static {v0, v8}, Landroid/bluetooth/BluetoothAudioGateway;->access$202(Landroid/bluetooth/BluetoothAudioGateway;I)I

    .line 152
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    const/16 v1, 0x3e8

    #calls: Landroid/bluetooth/BluetoothAudioGateway;->waitForHandsfreeConnectNative(I)Z
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->access$300(Landroid/bluetooth/BluetoothAudioGateway;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mTimeoutRemainingMs:I
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$400(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    :try_start_0
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select thread timed out, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mTimeoutRemainingMs:I
    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->access$400(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms of waiting remain."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mTimeoutRemainingMs:I
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$400(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v6

    .line 159
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v0, "BT Audio Gateway"

    const-string/jumbo v1, "select thread was interrupted (2), exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    const/4 v1, 0x1

    #setter for: Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->access$002(Landroid/bluetooth/BluetoothAudioGateway;Z)Z

    goto :goto_0

    .line 165
    .end local v6           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v0, "BT Audio Gateway"

    const-string v1, "connect notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$100(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 175
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$500(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    .line 176
    .local v7, msg:Landroid/os/Message;
    const/16 v0, 0x64

    iput v0, v7, Landroid/os/Message;->what:I

    .line 177
    new-instance v0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAudioGateway;->access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetAddress:Ljava/lang/String;
    invoke-static {v4}, Landroid/bluetooth/BluetoothAudioGateway;->access$700(Landroid/bluetooth/BluetoothAudioGateway;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetSocketFd:I
    invoke-static {v4}, Landroid/bluetooth/BluetoothAudioGateway;->access$800(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I
    invoke-static {v5}, Landroid/bluetooth/BluetoothAudioGateway;->access$100(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 184
    .end local v7           #msg:Landroid/os/Message;
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$200(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 188
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 189
    .restart local v7       #msg:Landroid/os/Message;
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeAddress:Ljava/lang/String;
    invoke-static {v1}, Landroid/bluetooth/BluetoothAudioGateway;->access$900(Landroid/bluetooth/BluetoothAudioGateway;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 190
    const-string v0, "BT Audio Gateway"

    const-string v1, "BondState : BOND_BONDING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-wide/16 v0, 0xc8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$500(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 197
    const/16 v0, 0x65

    iput v0, v7, Landroid/os/Message;->what:I

    .line 198
    new-instance v0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAudioGateway;->access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeAddress:Ljava/lang/String;
    invoke-static {v4}, Landroid/bluetooth/BluetoothAudioGateway;->access$900(Landroid/bluetooth/BluetoothAudioGateway;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeSocketFd:I
    invoke-static {v4}, Landroid/bluetooth/BluetoothAudioGateway;->access$1000(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    #getter for: Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I
    invoke-static {v5}, Landroid/bluetooth/BluetoothAudioGateway;->access$200(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 193
    :catch_1
    move-exception v0

    goto :goto_1

    .line 208
    .end local v7           #msg:Landroid/os/Message;
    :cond_4
    return-void
.end method
