.class public Ljava/util/concurrent/CountDownLatch;
.super Ljava/lang/Object;
.source "CountDownLatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CountDownLatch$Sync;
    }
.end annotation


# instance fields
.field private final sync:Ljava/util/concurrent/CountDownLatch$Sync;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch$Sync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch$Sync;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    .line 177
    return-void
.end method


# virtual methods
.method public await()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireSharedInterruptibly(I)V

    .line 208
    return-void
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public countDown()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->releaseShared(I)Z

    .line 268
    return-void
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch$Sync;->getCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch$Sync;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
