.class final Ljava/util/concurrent/SynchronousQueue$TransferQueue;
.super Ljava/util/concurrent/SynchronousQueue$Transferer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final cleanMeOffset:J

.field private static final headOffset:J

.field private static final tailOffset:J


# instance fields
.field volatile transient cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 766
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    .line 767
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "head"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->headOffset:J

    .line 769
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "tail"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tailOffset:J

    .line 771
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "cleanMe"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMeOffset:J

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    .line 551
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    .line 552
    .local v0, h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 553
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 554
    return-void
.end method


# virtual methods
.method advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 6
    .parameter "h"
    .parameter "nh"

    .prologue
    .line 561
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iput-object p1, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 564
    :cond_0
    return-void
.end method

.method advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 6
    .parameter "t"
    .parameter "nt"

    .prologue
    .line 570
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_0

    .line 571
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 572
    :cond_0
    return-void
.end method

.method awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 9
    .parameter "s"
    .parameter "e"
    .parameter "timed"
    .parameter "nanos"

    .prologue
    .line 681
    if-eqz p3, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 682
    .local v0, lastTime:J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 683
    .local v5, w:Ljava/lang/Thread;
    iget-object v7, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    iget-object v7, v7, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v7, p1, :cond_4

    if-eqz p3, :cond_3

    sget v4, Ljava/util/concurrent/SynchronousQueue;->maxTimedSpins:I

    .line 686
    .local v4, spins:I
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 687
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    .line 688
    :cond_1
    iget-object v6, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 689
    .local v6, x:Ljava/lang/Object;
    if-eq v6, p2, :cond_5

    .line 690
    return-object v6

    .line 681
    .end local v0           #lastTime:J
    .end local v4           #spins:I
    .end local v5           #w:Ljava/lang/Thread;
    .end local v6           #x:Ljava/lang/Object;
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 683
    .restart local v0       #lastTime:J
    .restart local v5       #w:Ljava/lang/Thread;
    :cond_3
    sget v4, Ljava/util/concurrent/SynchronousQueue;->maxUntimedSpins:I

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 691
    .restart local v4       #spins:I
    .restart local v6       #x:Ljava/lang/Object;
    :cond_5
    if-eqz p3, :cond_6

    .line 692
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 693
    .local v2, now:J
    sub-long v7, v2, v0

    sub-long/2addr p4, v7

    .line 694
    move-wide v0, v2

    .line 695
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-gtz v7, :cond_6

    .line 696
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    goto :goto_1

    .line 700
    .end local v2           #now:J
    :cond_6
    if-lez v4, :cond_7

    .line 701
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 702
    :cond_7
    iget-object v7, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    if-nez v7, :cond_8

    .line 703
    iput-object v5, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    goto :goto_1

    .line 704
    :cond_8
    if-nez p3, :cond_9

    .line 705
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1

    .line 706
    :cond_9
    const-wide/16 v7, 0x3e8

    cmp-long v7, p4, v7

    if-lez v7, :cond_0

    .line 707
    invoke-static {p0, p4, p5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1
.end method

.method casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z
    .locals 6
    .parameter "cmp"
    .parameter "val"

    .prologue
    .line 578
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMeOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 10
    .parameter "pred"
    .parameter "s"

    .prologue
    const/4 v9, 0x0

    .line 715
    iput-object v9, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    .line 724
    :cond_0
    :goto_0
    iget-object v8, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v8, p2, :cond_2

    .line 725
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 726
    .local v3, h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v4, v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 727
    .local v4, hn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 728
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_0

    .line 731
    :cond_1
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 732
    .local v6, t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-ne v6, v3, :cond_3

    .line 763
    .end local v3           #h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v4           #hn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v6           #t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_2
    :goto_1
    return-void

    .line 734
    .restart local v3       #h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v4       #hn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v6       #t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_3
    iget-object v7, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 735
    .local v7, tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v8, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v6, v8, :cond_0

    .line 737
    if-eqz v7, :cond_4

    .line 738
    invoke-virtual {p0, v6, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_0

    .line 741
    :cond_4
    if-eq p2, v6, :cond_5

    .line 742
    iget-object v5, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 743
    .local v5, sn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eq v5, p2, :cond_2

    invoke-virtual {p1, p2, v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 746
    .end local v5           #sn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_5
    iget-object v2, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 747
    .local v2, dp:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v2, :cond_8

    .line 748
    iget-object v0, v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 750
    .local v0, d:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eq v0, v6, :cond_7

    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .local v1, dn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 757
    .end local v1           #dn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_6
    invoke-virtual {p0, v2, v9}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    .line 758
    :cond_7
    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 760
    .end local v0           #d:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_8
    invoke-virtual {p0, v9, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1
.end method

.method transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 12
    .parameter "e"
    .parameter "timed"
    .parameter "nanos"

    .prologue
    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, s:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz p1, :cond_2

    const/4 v7, 0x1

    .line 615
    .local v7, isData:Z
    :cond_0
    :goto_0
    iget-object v9, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 616
    .local v9, t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 617
    .local v6, h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    .line 620
    if-eq v6, v9, :cond_1

    iget-boolean v0, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    if-ne v0, v7, :cond_a

    .line 621
    :cond_1
    iget-object v10, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 622
    .local v10, tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v9, v0, :cond_0

    .line 624
    if-eqz v10, :cond_3

    .line 625
    invoke-virtual {p0, v9, v10}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_0

    .line 612
    .end local v6           #h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v7           #isData:Z
    .end local v9           #t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v10           #tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 628
    .restart local v6       #h:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v7       #isData:Z
    .restart local v9       #t:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v10       #tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_3
    if-eqz p2, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_5

    .line 629
    const/4 v11, 0x0

    .line 665
    .end local v10           #tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_4
    :goto_1
    return-object v11

    .line 630
    .restart local v10       #tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_5
    if-nez v1, :cond_6

    .line 631
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .end local v1           #s:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    invoke-direct {v1, p1, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    .line 632
    .restart local v1       #s:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 636
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v11

    .line 637
    .local v11, x:Ljava/lang/Object;
    if-ne v11, v1, :cond_7

    .line 638
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 639
    const/4 v11, 0x0

    goto :goto_1

    .line 642
    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isOffList()Z

    move-result v0

    if-nez v0, :cond_9

    .line 643
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 644
    if-eqz v11, :cond_8

    .line 645
    iput-object v1, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 646
    :cond_8
    const/4 v0, 0x0

    iput-object v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    .line 648
    :cond_9
    if-nez v11, :cond_4

    move-object v11, p1

    goto :goto_1

    .line 651
    .end local v10           #tn:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v11           #x:Ljava/lang/Object;
    :cond_a
    iget-object v8, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 652
    .local v8, m:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v9, v0, :cond_0

    if-eqz v8, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v6, v0, :cond_0

    .line 655
    iget-object v11, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 656
    .restart local v11       #x:Ljava/lang/Object;
    if-eqz v11, :cond_c

    const/4 v0, 0x1

    :goto_2
    if-eq v7, v0, :cond_b

    if-eq v11, v8, :cond_b

    invoke-virtual {v8, v11, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 659
    :cond_b
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_0

    .line 656
    :cond_c
    const/4 v0, 0x0

    goto :goto_2

    .line 663
    :cond_d
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 664
    iget-object v0, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 665
    if-nez v11, :cond_4

    move-object v11, p1

    goto :goto_1
.end method
