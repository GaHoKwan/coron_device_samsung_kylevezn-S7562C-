.class Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreDeleteObserver"
.end annotation


# instance fields
.field final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mResult:I

.field final synthetic this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V
    .locals 1
    .parameter

    .prologue
    .line 3661
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 3662
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3683
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3684
    :try_start_0
    iput p2, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mResult:I

    .line 3685
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3686
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3687
    monitor-exit v1

    .line 3688
    return-void

    .line 3687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 3666
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3667
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3668
    monitor-exit v1

    .line 3669
    return-void

    .line 3668
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForCompletion()V
    .locals 2

    .prologue
    .line 3672
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3673
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3675
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3676
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3678
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 3679
    return-void

    .line 3678
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
