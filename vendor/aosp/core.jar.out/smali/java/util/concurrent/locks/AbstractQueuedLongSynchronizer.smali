.class public abstract Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;,
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final headOffset:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final nextOffset:J = 0x0L

.field private static final serialVersionUID:J = 0x6655a843753f52e4L

.field static final spinForTimeoutThreshold:J = 0x3e8L

.field private static final stateOffset:J

.field private static final tailOffset:J

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final waitStatusOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field private volatile state:J

.field private volatile transient tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 2024
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    .line 2033
    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->stateOffset:J

    .line 2035
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->headOffset:J

    .line 2037
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string v3, "tail"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tailOffset:J

    .line 2039
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const-string v3, "waitStatus"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->waitStatusOffset:J

    .line 2041
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const-string v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->nextOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2045
    return-void

    .line 2044
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    return-void
.end method

.method private addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 3
    .parameter "mode"

    .prologue
    .line 354
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 356
    .local v0, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 357
    .local v1, pred:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_0

    .line 358
    iput-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 359
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 365
    :goto_0
    return-object v0

    .line 364
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0
.end method

.method private cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 7
    .parameter "node"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 490
    if-nez p1, :cond_0

    .line 530
    :goto_0
    return-void

    .line 493
    :cond_0
    iput-object v6, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 496
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 497
    .local v1, pred:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_1
    iget v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-lez v4, :cond_1

    .line 498
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_1

    .line 503
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 508
    .local v2, predNext:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v4, 0x1

    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 511
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne p1, v4, :cond_2

    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 512
    invoke-static {v1, v2, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    goto :goto_0

    .line 517
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v1, v4, :cond_5

    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .local v3, ws:I
    if-eq v3, v5, :cond_3

    if-gtz v3, :cond_5

    invoke-static {v1, v3, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_5

    .line 521
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 522
    .local v0, next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_4

    iget v4, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gtz v4, :cond_4

    .line 523
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    .line 528
    .end local v0           #next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3           #ws:I
    :cond_4
    :goto_2
    iput-object p1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 525
    :cond_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_2
.end method

.method private final compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 6
    .parameter "update"

    .prologue
    .line 2051
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->headOffset:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 6
    .parameter "node"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 2077
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 6
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 2058
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z
    .locals 6
    .parameter "node"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 2067
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->waitStatusOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private doAcquireInterruptibly(J)V
    .locals 4
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 631
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    .line 632
    .local v1, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    .line 635
    .local v0, failed:Z
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    .line 636
    .local v2, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 637
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 638
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    const/4 v0, 0x0

    .line 647
    if-eqz v0, :cond_1

    .line 648
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1
    return-void

    .line 642
    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 644
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    .end local v2           #p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 648
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_3
    throw v3
.end method

.method private doAcquireNanos(JJ)Z
    .locals 9
    .parameter "arg"
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 662
    .local v1, lastTime:J
    sget-object v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 663
    .local v3, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    .line 666
    .local v0, failed:Z
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v6

    .line 667
    .local v6, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v7, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 668
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 669
    const/4 v7, 0x0

    iput-object v7, v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    const/4 v0, 0x0

    .line 671
    const/4 v7, 0x1

    .line 685
    if-eqz v0, :cond_1

    .line 686
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1
    :goto_0
    return v7

    .line 673
    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v7, p3, v7

    if-gtz v7, :cond_3

    .line 674
    const/4 v7, 0x0

    .line 685
    if-eqz v0, :cond_1

    .line 686
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_0

    .line 675
    :cond_3
    :try_start_1
    invoke-static {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-wide/16 v7, 0x3e8

    cmp-long v7, p3, v7

    if-lez v7, :cond_4

    .line 677
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 678
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 679
    .local v4, now:J
    sub-long v7, v4, v1

    sub-long/2addr p3, v7

    .line 680
    move-wide v1, v4

    .line 681
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 682
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    .end local v4           #now:J
    .end local v6           #p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_5

    .line 686
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_5
    throw v7
.end method

.method private doAcquireShared(J)V
    .locals 8
    .parameter "arg"

    .prologue
    .line 695
    sget-object v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    .line 696
    .local v2, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    .line 698
    .local v0, failed:Z
    const/4 v1, 0x0

    .line 700
    .local v1, interrupted:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 701
    .local v3, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v3, v6, :cond_3

    .line 702
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v4

    .line 703
    .local v4, r:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    .line 704
    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    .line 705
    const/4 v6, 0x0

    iput-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 706
    if-eqz v1, :cond_1

    .line 707
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    :cond_1
    const/4 v0, 0x0

    .line 717
    if-eqz v0, :cond_2

    .line 718
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_2
    return-void

    .line 712
    .end local v4           #r:J
    :cond_3
    :try_start_1
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 714
    const/4 v1, 0x1

    goto :goto_0

    .line 717
    .end local v3           #p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_4

    .line 718
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_4
    throw v6
.end method

.method private doAcquireSharedInterruptibly(J)V
    .locals 7
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 728
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    .line 729
    .local v1, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    .line 732
    .local v0, failed:Z
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    .line 733
    .local v2, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v5, :cond_2

    .line 734
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v3

    .line 735
    .local v3, r:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    .line 736
    invoke-direct {p0, v1, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    .line 737
    const/4 v5, 0x0

    iput-object v5, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    const/4 v0, 0x0

    .line 747
    if-eqz v0, :cond_1

    .line 748
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1
    return-void

    .line 742
    .end local v3           #r:J
    :cond_2
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 744
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    .end local v2           #p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    .line 748
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_3
    throw v5
.end method

.method private doAcquireSharedNanos(JJ)Z
    .locals 11
    .parameter "arg"
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 763
    .local v1, lastTime:J
    sget-object v9, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 764
    .local v3, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x1

    .line 767
    .local v0, failed:Z
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v6

    .line 768
    .local v6, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v9, :cond_2

    .line 769
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v7

    .line 770
    .local v7, r:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_2

    .line 771
    invoke-direct {p0, v3, v7, v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V

    .line 772
    const/4 v9, 0x0

    iput-object v9, v6, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    const/4 v0, 0x0

    .line 774
    const/4 v9, 0x1

    .line 789
    if-eqz v0, :cond_1

    .line 790
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .end local v7           #r:J
    :cond_1
    :goto_0
    return v9

    .line 777
    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, p3, v9

    if-gtz v9, :cond_3

    .line 778
    const/4 v9, 0x0

    .line 789
    if-eqz v0, :cond_1

    .line 790
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    goto :goto_0

    .line 779
    :cond_3
    :try_start_1
    invoke-static {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-wide/16 v9, 0x3e8

    cmp-long v9, p3, v9

    if-lez v9, :cond_4

    .line 781
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 782
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 783
    .local v4, now:J
    sub-long v9, v4, v1

    sub-long/2addr p3, v9

    .line 784
    move-wide v1, v4

    .line 785
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 786
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    .end local v4           #now:J
    .end local v6           #p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v9

    if-eqz v0, :cond_5

    .line 790
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_5
    throw v9
.end method

.method private doReleaseShared()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 431
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 432
    .local v0, h:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v0, v2, :cond_1

    .line 433
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 434
    .local v1, ws:I
    if-ne v1, v3, :cond_2

    .line 435
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 443
    .end local v1           #ws:I
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v0, v2, :cond_0

    .line 446
    return-void

    .line 439
    .restart local v1       #ws:I
    :cond_2
    if-nez v1, :cond_1

    const/4 v2, -0x3

    invoke-static {v0, v4, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method private enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 2
    .parameter "node"

    .prologue
    .line 333
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 334
    .local v0, t:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v0, :cond_1

    .line 335
    new-instance v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>()V

    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 338
    :cond_1
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 339
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 341
    return-object v0
.end method

.method private findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 1400
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1402
    .local v0, t:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-ne v0, p1, :cond_0

    .line 1403
    const/4 v1, 0x1

    .line 1405
    :goto_1
    return v1

    .line 1404
    :cond_0
    if-nez v0, :cond_1

    .line 1405
    const/4 v1, 0x0

    goto :goto_1

    .line 1406
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0
.end method

.method private fullGetFirstQueuedThread()Ljava/lang/Thread;
    .locals 8

    .prologue
    .line 1155
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, h:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v2, s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v2, :cond_0

    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v7, :cond_0

    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .local v3, st:Ljava/lang/Thread;
    if-nez v3, :cond_1

    .end local v2           #s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3           #st:Ljava/lang/Thread;
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v1, :cond_3

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .restart local v2       #s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v2, :cond_3

    iget-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v6, v7, :cond_3

    iget-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .restart local v3       #st:Ljava/lang/Thread;
    if-eqz v3, :cond_3

    :cond_1
    move-object v0, v3

    .line 1177
    .end local v2           #s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .end local v3           #st:Ljava/lang/Thread;
    :cond_2
    return-object v0

    .line 1169
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1170
    .local v4, t:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v0, 0x0

    .line 1171
    .local v0, firstThread:Ljava/lang/Thread;
    :goto_0
    if-eqz v4, :cond_2

    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v4, v6, :cond_2

    .line 1172
    iget-object v5, v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1173
    .local v5, tt:Ljava/lang/Thread;
    if-eqz v5, :cond_4

    .line 1174
    move-object v0, v5

    .line 1175
    :cond_4
    iget-object v4, v4, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1176
    goto :goto_0
.end method

.method private final parkAndCheckInterrupt()Z
    .locals 1

    .prologue
    .line 582
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 583
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    return v0
.end method

.method private static selfInterrupt()V
    .locals 1

    .prologue
    .line 573
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 574
    return-void
.end method

.method private setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 1
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 376
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 377
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 378
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 379
    return-void
.end method

.method private setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)V
    .locals 4
    .parameter "node"
    .parameter "propagate"

    .prologue
    .line 457
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 458
    .local v0, h:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 474
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    if-eqz v0, :cond_0

    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gez v2, :cond_2

    .line 475
    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 476
    .local v1, s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    .line 479
    .end local v1           #s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_2
    return-void
.end method

.method private static shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2
    .parameter "pred"
    .parameter "node"

    .prologue
    const/4 v1, -0x1

    .line 542
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 543
    .local v0, ws:I
    if-ne v0, v1, :cond_0

    .line 548
    const/4 v1, 0x1

    .line 566
    :goto_0
    return v1

    .line 549
    :cond_0
    if-lez v0, :cond_2

    .line 555
    :cond_1
    iget-object p0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object p0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 556
    iget v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gtz v1, :cond_1

    .line 557
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 566
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 564
    :cond_2
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    goto :goto_1
.end method

.method private unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 4
    .parameter "node"

    .prologue
    .line 392
    iget v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 393
    .local v2, ws:I
    if-gez v2, :cond_0

    .line 394
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    .line 402
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 403
    .local v0, s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_1

    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-lez v3, :cond_3

    .line 404
    :cond_1
    const/4 v0, 0x0

    .line 405
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, t:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 406
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-gtz v3, :cond_2

    .line 407
    move-object v0, v1

    .line 405
    :cond_2
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 409
    .end local v1           #t:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_3
    if-eqz v0, :cond_4

    .line 410
    iget-object v3, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 411
    :cond_4
    return-void
.end method


# virtual methods
.method public final acquire(J)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 945
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    .line 948
    :cond_0
    return-void
.end method

.method public final acquireInterruptibly(J)V
    .locals 1
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 966
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 968
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 969
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireInterruptibly(J)V

    .line 970
    :cond_1
    return-void
.end method

.method final acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z
    .locals 4
    .parameter "node"
    .parameter "arg"

    .prologue
    .line 604
    const/4 v0, 0x1

    .line 606
    .local v0, failed:Z
    const/4 v1, 0x0

    .line 608
    .local v1, interrupted:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v2

    .line 609
    .local v2, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 610
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 611
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    const/4 v0, 0x0

    .line 620
    if-eqz v0, :cond_1

    .line 621
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_1
    return v1

    .line 615
    :cond_2
    :try_start_1
    invoke-static {v2, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    const/4 v1, 0x1

    goto :goto_0

    .line 620
    .end local v2           #p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 621
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    :cond_3
    throw v3
.end method

.method public final acquireShared(J)V
    .locals 4
    .parameter "arg"

    .prologue
    .line 1029
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1030
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireShared(J)V

    .line 1031
    :cond_0
    return-void
.end method

.method public final acquireSharedInterruptibly(J)V
    .locals 4
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1050
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1051
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedInterruptibly(J)V

    .line 1052
    :cond_1
    return-void
.end method

.method final apparentlyFirstQueuedIsExclusive()Z
    .locals 3

    .prologue
    .line 1210
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, h:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1           #s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final compareAndSetState(JJ)Z
    .locals 8
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 314
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->stateOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 1467
    const/4 v0, 0x1

    .line 1469
    .local v0, failed:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v1

    .line 1470
    .local v1, savedState:J
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->release(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1471
    const/4 v0, 0x0

    .line 1477
    if-eqz v0, :cond_0

    .line 1478
    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    :cond_0
    return-wide v1

    .line 1474
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1477
    .end local v1           #savedState:J
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 1478
    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    :cond_2
    throw v3
.end method

.method public final getExclusiveQueuedThreads()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1324
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1325
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1326
    .local v2, t:Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 1327
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    .end local v2           #t:Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 1330
    :cond_1
    return-object v0
.end method

.method public final getFirstQueuedThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullGetFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method

.method public final getQueueLength()I
    .locals 3

    .prologue
    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, n:I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1286
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 1287
    add-int/lit8 v0, v0, 0x1

    .line 1285
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 1289
    :cond_1
    return v0
.end method

.method public final getQueuedThreads()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1306
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1307
    .local v2, t:Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 1308
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 1310
    .end local v2           #t:Ljava/lang/Thread;
    :cond_1
    return-object v0
.end method

.method public final getSharedQueuedThreads()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1343
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1344
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->isShared()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1345
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1346
    .local v2, t:Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 1347
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    .end local v2           #t:Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 1350
    :cond_1
    return-object v0
.end method

.method protected final getState()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    return-wide v0
.end method

.method public final getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)I
    .locals 2
    .parameter "condition"

    .prologue
    .line 1537
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1539
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitQueueLength()I

    move-result v0

    return v0
.end method

.method public final getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Ljava/util/Collection;
    .locals 2
    .parameter "condition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1559
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitingThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasContended()Z
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasQueuedPredecessors()Z
    .locals 5

    .prologue
    .line 1263
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1264
    .local v2, t:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1266
    .local v0, h:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eq v0, v2, :cond_1

    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_0

    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .end local v1           #s:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hasQueuedThreads()Z
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .locals 2
    .parameter "condition"

    .prologue
    .line 1515
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1517
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->hasWaiters()Z

    move-result v0

    return v0
.end method

.method protected isHeldExclusively()Z
    .locals 1

    .prologue
    .line 929
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 1379
    iget v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v0, :cond_1

    .line 1380
    :cond_0
    const/4 v0, 0x0

    .line 1391
    :goto_0
    return v0

    .line 1381
    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v0, :cond_2

    .line 1382
    const/4 v0, 0x1

    goto :goto_0

    .line 1391
    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isQueued(Ljava/lang/Thread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    .line 1191
    if-nez p1, :cond_0

    .line 1192
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1193
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 1194
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-ne v1, p1, :cond_1

    .line 1195
    const/4 v1, 0x1

    .line 1196
    :goto_1
    return v1

    .line 1193
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 1196
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .locals 1
    .parameter "condition"

    .prologue
    .line 1493
    if-nez p1, :cond_0

    .line 1494
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1495
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z

    move-result v0

    return v0
.end method

.method public final release(J)Z
    .locals 2
    .parameter "arg"

    .prologue
    .line 1008
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryRelease(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1010
    .local v0, h:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_0

    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-eqz v1, :cond_0

    .line 1011
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 1012
    :cond_0
    const/4 v1, 0x1

    .line 1014
    .end local v0           #h:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final releaseShared(J)Z
    .locals 1
    .parameter "arg"

    .prologue
    .line 1088
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryReleaseShared(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    .line 1090
    const/4 v0, 0x1

    .line 1092
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setState(J)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 298
    iput-wide p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    .line 299
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1363
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v1

    .line 1364
    .local v1, s:J
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->hasQueuedThreads()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "non"

    .line 1365
    .local v0, q:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "empty queue]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1364
    .end local v0           #q:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method final transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    const/4 v0, 0x0

    .line 1445
    const/4 v1, -0x2

    invoke-static {p1, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1446
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1447
    const/4 v0, 0x1

    .line 1457
    :cond_0
    return v0

    .line 1455
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1456
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method final transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z
    .locals 4
    .parameter "node"

    .prologue
    const/4 v2, 0x0

    .line 1421
    const/4 v3, -0x2

    invoke-static {p1, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1434
    :goto_0
    return v2

    .line 1430
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v0

    .line 1431
    .local v0, p:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 1432
    .local v1, ws:I
    if-gtz v1, :cond_1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetWaitStatus(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1433
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1434
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected tryAcquire(J)Z
    .locals 1
    .parameter "arg"

    .prologue
    .line 823
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireNanos(JJ)Z
    .locals 1
    .parameter "arg"
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 991
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 993
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireNanos(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected tryAcquireShared(J)J
    .locals 1
    .parameter "arg"

    .prologue
    .line 885
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireSharedNanos(JJ)Z
    .locals 4
    .parameter "arg"
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1072
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1074
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedNanos(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected tryRelease(J)Z
    .locals 1
    .parameter "arg"

    .prologue
    .line 849
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected tryReleaseShared(J)Z
    .locals 1
    .parameter "arg"

    .prologue
    .line 910
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
