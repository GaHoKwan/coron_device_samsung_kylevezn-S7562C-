.class Landroid/view/ViewRootImpl$InputMethodCallback;
.super Lcom/android/internal/view/IInputMethodCallback$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputMethodCallback"
.end annotation


# instance fields
.field private mViewAncestor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .parameter "viewAncestor"

    .prologue
    .line 5144
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodCallback$Stub;-><init>()V

    .line 5145
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputMethodCallback;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 5146
    return-void
.end method


# virtual methods
.method public finishedEvent(IZ)V
    .locals 2
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 5149
    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMethodCallback;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 5150
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5151
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchImeFinishedEvent(IZ)V

    .line 5153
    :cond_0
    return-void
.end method

.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 5157
    return-void
.end method
