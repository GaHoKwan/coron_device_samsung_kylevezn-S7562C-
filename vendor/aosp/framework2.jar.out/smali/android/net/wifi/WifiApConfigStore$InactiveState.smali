.class Landroid/net/wifi/WifiApConfigStore$InactiveState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiApConfigStore;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 121
    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #setter for: Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1, v0}, Landroid/net/wifi/WifiApConfigStore;->access$002(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 122
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore$InactiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    #getter for: Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiApConfigStore;->access$300(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiApConfigStore;->access$400(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
    .end packed-switch
.end method
