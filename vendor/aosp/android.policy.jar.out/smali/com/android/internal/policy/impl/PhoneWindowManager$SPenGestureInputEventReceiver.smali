.class final Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPenGestureInputEventReceiver"
.end annotation


# instance fields
.field private final mView:Lcom/android/internal/widget/SPenGestureView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/SPenGestureView;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"
    .parameter "view"

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 687
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 688
    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    .line 689
    return-void
.end method

.method private disableSPenGestureView(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/SPenGestureView;->isShowingGestureEffect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStateGlance:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/SPenGestureView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->setPhoneWindowMangerFlag(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    .line 705
    const/4 v1, 0x0

    .line 707
    .local v1, handled:Z
    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_2

    .line 708
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 710
    .local v2, motionEvent:Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    if-eqz v3, :cond_1

    .line 711
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 712
    :cond_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_4

    .line 713
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 744
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    .line 747
    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 749
    return-void

    .line 717
    .restart local v2       #motionEvent:Landroid/view/MotionEvent;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    invoke-virtual {v3}, Lcom/android/internal/widget/SPenGestureView;->isShowingGestureEffect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 718
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 719
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 722
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStateGlance:Z

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/widget/SPenGestureView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 747
    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3

    .line 728
    .restart local v2       #motionEvent:Landroid/view/MotionEvent;
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->mView:Lcom/android/internal/widget/SPenGestureView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStateGlance:Z

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/widget/SPenGestureView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V

    .line 729
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 734
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 740
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;->disableSPenGestureView(Landroid/view/MotionEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
