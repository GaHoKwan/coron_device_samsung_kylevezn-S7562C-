.class public Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/locks/Lock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteLock"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4548bd97c08297b4L


# instance fields
.field private final sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iget-object v0, p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    .line 896
    return-void
.end method


# virtual methods
.method public getHoldCount()I
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWriteHoldCount()I

    move-result v0

    return v0
.end method

.method public isHeldByCurrentThread()Z
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquire(I)V

    .line 917
    return-void
.end method

.method public lockInterruptibly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireInterruptibly(I)V

    .line 972
    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1161
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    .line 1162
    .local v0, o:Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v1, "[Unlocked]"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Locked by thread "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public tryLock()Z
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryWriteLock()Z

    move-result v0

    return v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1086
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->release(I)Z

    .line 1103
    return-void
.end method
