.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 3890
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 3893
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3895
    packed-switch p2, :pswitch_data_0

    .line 3909
    :goto_0
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3910
    return-void

    .line 3897
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3898
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3899
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3900
    const-string/jumbo v1, "search-type"

    const-string/jumbo v2, "manual"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3901
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3905
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v1, "ManualSelectionReceiver"

    const-string/jumbo v2, "sendMessageDelayed(EVENT_NETWORK_STATE_CHANGED_BY_RESCAN)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3895
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
