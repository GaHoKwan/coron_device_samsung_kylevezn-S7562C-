.class final Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;
.super Ljava/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x658832e7537bbf0bL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method final lock()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(I)V

    goto :goto_0
.end method

.method protected final tryAcquire(I)Z
    .locals 1
    .parameter "acquires"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->nonfairTryAcquire(I)Z

    move-result v0

    return v0
.end method
