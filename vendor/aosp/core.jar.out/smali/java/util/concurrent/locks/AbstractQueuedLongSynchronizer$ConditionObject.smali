.class public Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
.super Ljava/lang/Object;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/locks/Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConditionObject"
.end annotation


# static fields
.field private static final REINTERRUPT:I = 0x1

.field private static final THROW_IE:I = -0x1

.field private static final serialVersionUID:J = 0x104ad505855c6aebL


# instance fields
.field private transient firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field private transient lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field final synthetic this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)V
    .locals 0
    .parameter

    .prologue
    .line 1591
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1600
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1602
    .local v1, t:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_0

    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-eq v2, v3, :cond_0

    .line 1603
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1604
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1606
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>(Ljava/lang/Thread;I)V

    .line 1607
    .local v0, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v1, :cond_1

    .line 1608
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1611
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1612
    return-object v0

    .line 1610
    :cond_1
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0
.end method

.method private checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I
    .locals 1
    .parameter "node"

    .prologue
    .line 1754
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 2
    .parameter "first"

    .prologue
    const/4 v1, 0x0

    .line 1623
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v0, :cond_1

    .line 1624
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1625
    :cond_1
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1627
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez p1, :cond_0

    .line 1628
    :cond_2
    return-void
.end method

.method private doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 3
    .parameter "first"

    .prologue
    const/4 v2, 0x0

    .line 1635
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1637
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1638
    .local v0, next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iput-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1639
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    .line 1640
    move-object p1, v0

    .line 1641
    if-nez p1, :cond_0

    .line 1642
    return-void
.end method

.method private reportInterruptAfterWait(I)V
    .locals 1
    .parameter "interruptMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1765
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1766
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1767
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1768
    #calls: Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->access$000()V

    .line 1769
    :cond_1
    return-void
.end method

.method private unlinkCancelledWaiters()V
    .locals 5

    .prologue
    .line 1659
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1660
    .local v1, t:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v2, 0x0

    .line 1661
    .local v2, trail:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_3

    .line 1662
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1663
    .local v0, next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2

    .line 1664
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1665
    if-nez v2, :cond_1

    .line 1666
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1669
    :goto_1
    if-nez v0, :cond_0

    .line 1670
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1674
    :cond_0
    :goto_2
    move-object v1, v0

    .line 1675
    goto :goto_0

    .line 1668
    :cond_1
    iput-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_1

    .line 1673
    :cond_2
    move-object v2, v1

    goto :goto_2

    .line 1676
    .end local v0           #next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_3
    return-void
.end method


# virtual methods
.method public final await()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1786
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1787
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 1788
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    .line 1789
    .local v1, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v2

    .line 1790
    .local v2, savedState:J
    const/4 v0, 0x0

    .line 1791
    .local v0, interruptMode:I
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1792
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1793
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1796
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 1797
    const/4 v0, 0x1

    .line 1798
    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v4, :cond_4

    .line 1799
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1800
    :cond_4
    if-eqz v0, :cond_5

    .line 1801
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1802
    :cond_5
    return-void
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 16
    .parameter "time"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1909
    if-nez p3, :cond_0

    .line 1910
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1911
    :cond_0
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 1912
    .local v6, nanosTimeout:J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1913
    new-instance v14, Ljava/lang/InterruptedException;

    invoke-direct {v14}, Ljava/lang/InterruptedException;-><init>()V

    throw v14

    .line 1914
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v8

    .line 1915
    .local v8, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v14, v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v11

    .line 1916
    .local v11, savedState:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1917
    .local v4, lastTime:J
    const/4 v13, 0x0

    .line 1918
    .local v13, timedout:Z
    const/4 v3, 0x0

    .line 1919
    .local v3, interruptMode:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v14, v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1920
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-gtz v14, :cond_6

    .line 1921
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v14, v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v13

    .line 1932
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v14, v8, v11, v12}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, -0x1

    if-eq v3, v14, :cond_3

    .line 1933
    const/4 v3, 0x1

    .line 1934
    :cond_3
    iget-object v14, v8, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v14, :cond_4

    .line 1935
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1936
    :cond_4
    if-eqz v3, :cond_5

    .line 1937
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1938
    :cond_5
    if-nez v13, :cond_8

    const/4 v14, 0x1

    :goto_1
    return v14

    .line 1924
    :cond_6
    const-wide/16 v14, 0x3e8

    cmp-long v14, v6, v14

    if-ltz v14, :cond_7

    .line 1925
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1926
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1928
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 1929
    .local v9, now:J
    sub-long v14, v9, v4

    sub-long/2addr v6, v14

    .line 1930
    move-wide v4, v9

    .line 1931
    goto :goto_0

    .line 1938
    .end local v9           #now:J
    :cond_8
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public final awaitNanos(J)J
    .locals 10
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1820
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1821
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 1822
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 1823
    .local v3, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v6

    .line 1824
    .local v6, savedState:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1825
    .local v1, lastTime:J
    const/4 v0, 0x0

    .line 1826
    .local v0, interruptMode:I
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1827
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gtz v8, :cond_5

    .line 1828
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    .line 1839
    :cond_1
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v8, v3, v6, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, -0x1

    if-eq v0, v8, :cond_2

    .line 1840
    const/4 v0, 0x1

    .line 1841
    :cond_2
    iget-object v8, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v8, :cond_3

    .line 1842
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1843
    :cond_3
    if-eqz v0, :cond_4

    .line 1844
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1845
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v1

    sub-long v8, p1, v8

    return-wide v8

    .line 1831
    :cond_5
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1832
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1835
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1836
    .local v4, now:J
    sub-long v8, v4, v1

    sub-long/2addr p1, v8

    .line 1837
    move-wide v1, v4

    .line 1838
    goto :goto_0
.end method

.method public final awaitUninterruptibly()V
    .locals 5

    .prologue
    .line 1724
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    .line 1725
    .local v1, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v2

    .line 1726
    .local v2, savedState:J
    const/4 v0, 0x0

    .line 1727
    .local v0, interrupted:Z
    :cond_0
    :goto_0
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1728
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1729
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1730
    const/4 v0, 0x1

    goto :goto_0

    .line 1732
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    .line 1733
    :cond_2
    #calls: Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->access$000()V

    .line 1734
    :cond_3
    return-void
.end method

.method public final awaitUntil(Ljava/util/Date;)Z
    .locals 9
    .parameter "deadline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1865
    if-nez p1, :cond_0

    .line 1866
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 1867
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1868
    .local v0, abstime:J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1869
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 1870
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 1871
    .local v3, node:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v4

    .line 1872
    .local v4, savedState:J
    const/4 v6, 0x0

    .line 1873
    .local v6, timedout:Z
    const/4 v2, 0x0

    .line 1874
    .local v2, interruptMode:I
    :cond_2
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-lez v7, :cond_7

    .line 1876
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v6

    .line 1883
    :cond_3
    :goto_0
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    if-eq v2, v7, :cond_4

    .line 1884
    const/4 v2, 0x1

    .line 1885
    :cond_4
    iget-object v7, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v7, :cond_5

    .line 1886
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1887
    :cond_5
    if-eqz v2, :cond_6

    .line 1888
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1889
    :cond_6
    if-nez v6, :cond_8

    const/4 v7, 0x1

    :goto_1
    return v7

    .line 1879
    :cond_7
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    .line 1880
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1889
    :cond_8
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected final getWaitQueueLength()I
    .locals 4

    .prologue
    .line 1981
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1982
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 1983
    :cond_0
    const/4 v0, 0x0

    .line 1984
    .local v0, n:I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, w:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 1985
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 1986
    add-int/lit8 v0, v0, 0x1

    .line 1984
    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 1988
    :cond_2
    return v0
.end method

.method protected final getWaitingThreads()Ljava/util/Collection;
    .locals 5
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
    .line 2001
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2002
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 2003
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2004
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v2, w:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 2005
    iget v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 2006
    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 2007
    .local v1, t:Ljava/lang/Thread;
    if-eqz v1, :cond_1

    .line 2008
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2004
    .end local v1           #t:Ljava/lang/Thread;
    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 2011
    :cond_2
    return-object v0
.end method

.method protected final hasWaiters()Z
    .locals 3

    .prologue
    .line 1962
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1963
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1964
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, w:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 1965
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 1966
    const/4 v1, 0x1

    .line 1968
    :goto_1
    return v1

    .line 1964
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_0

    .line 1968
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z
    .locals 1
    .parameter "sync"

    .prologue
    .line 1950
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final signal()V
    .locals 2

    .prologue
    .line 1689
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1690
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1691
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1692
    .local v0, first:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 1693
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 1694
    :cond_1
    return-void
.end method

.method public final signalAll()V
    .locals 2

    .prologue
    .line 1704
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1705
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1706
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1707
    .local v0, first:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 1708
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 1709
    :cond_1
    return-void
.end method
