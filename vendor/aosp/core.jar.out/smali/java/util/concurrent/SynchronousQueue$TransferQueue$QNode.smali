.class final Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue$TransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QNode"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final itemOffset:J

.field private static final nextOffset:J


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 532
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    .line 533
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "next"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->nextOffset:J

    .line 535
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "item"

    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->itemOffset:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "item"
    .parameter "isData"

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 498
    iput-boolean p2, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    .line 499
    return-void
.end method


# virtual methods
.method casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "cmp"
    .parameter "val"

    .prologue
    .line 507
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->itemOffset:J

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

.method casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z
    .locals 6
    .parameter "cmp"
    .parameter "val"

    .prologue
    .line 502
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_0

    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->nextOffset:J

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

.method isCancelled()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOffList()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method tryCancel(Ljava/lang/Object;)V
    .locals 6
    .parameter "cmp"

    .prologue
    .line 515
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->itemOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 516
    return-void
.end method
