.class final Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PointerLocationInputEventReceiver"
.end annotation


# instance fields
.field private final mView:Lcom/android/internal/widget/PointerLocationView;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/PointerLocationView;)V
    .locals 0
    .parameter "inputChannel"
    .parameter "looper"
    .parameter "view"

    .prologue
    .line 581
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 582
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->mView:Lcom/android/internal/widget/PointerLocationView;

    .line 583
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 587
    const/4 v1, 0x0

    .line 589
    .local v1, handled:Z
    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 591
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 592
    .local v2, motionEvent:Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->mView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/PointerLocationView;->addPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    const/4 v1, 0x1

    .line 596
    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 598
    return-void

    .line 596
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3
.end method
