.class Lcom/android/internal/policy/impl/PhoneWindowManager$31$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$31;->onShown(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$31;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$31;)V
    .locals 0
    .parameter

    .prologue
    .line 7503
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 7505
    const-string v0, "WindowManager"

    const-string v1, "Lock screen displayed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7506
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 7507
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7508
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 7509
    monitor-exit v1

    .line 7510
    return-void

    .line 7509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
