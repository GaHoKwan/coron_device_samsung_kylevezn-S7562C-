.class Lcom/android/internal/telephony/DataConnection$DcActiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActiveState"
.end annotation


# instance fields
.field private mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

.field private mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1063
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1064
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1065
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1085
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1090
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1091
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1092
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 1098
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1163
    const/4 v3, 0x0

    .line 1166
    .local v3, retVal:Z
    :goto_0
    return v3

    .line 1101
    .end local v3           #retVal:Z
    :sswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/ApnContext;

    if-eqz v4, :cond_2

    .line 1102
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1103
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 1104
    .local v1, apnType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_CONNECT apnType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1105
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefType:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefType:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefType:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    .line 1112
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #apnType:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_CONNECT RefCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1113
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 1114
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v5, v4, v6}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1116
    :cond_1
    const/4 v3, 0x1

    .line 1117
    .restart local v3       #retVal:Z
    goto/16 :goto_0

    .line 1109
    .end local v3           #retVal:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    goto :goto_1

    .line 1120
    :sswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/ApnContext;

    if-eqz v4, :cond_4

    .line 1121
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1122
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 1123
    .restart local v1       #apnType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_DISCONNECT apnType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1124
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefType:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1125
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefType:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    .line 1131
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #apnType:Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_DISCONNECT RefCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1132
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    if-nez v4, :cond_5

    .line 1134
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 1135
    .local v2, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->tag:I

    .line 1136
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V
    invoke-static {v4, v2}, Lcom/android/internal/telephony/DataConnection;->access$1900(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    .line 1137
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$2600(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$2700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1143
    .end local v2           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    :cond_3
    :goto_3
    const/4 v3, 0x1

    .line 1144
    .restart local v3       #retVal:Z
    goto/16 :goto_0

    .line 1128
    .end local v3           #retVal:Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    goto :goto_2

    .line 1139
    :cond_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 1140
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V
    invoke-static {v5, v4, v7}, Lcom/android/internal/telephony/DataConnection;->access$900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V

    goto :goto_3

    .line 1148
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_DISCONNECT_ALL RefCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1150
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iput v7, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    .line 1151
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 1152
    .restart local v2       #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->tag:I

    .line 1153
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V
    invoke-static {v4, v2}, Lcom/android/internal/telephony/DataConnection;->access$1900(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    .line 1154
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$2600(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$2800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1155
    const/4 v3, 0x1

    .line 1156
    .restart local v3       #retVal:Z
    goto/16 :goto_0

    .line 1098
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x40004 -> :sswitch_1
        0x40006 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 0
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1070
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1071
    return-void
.end method
