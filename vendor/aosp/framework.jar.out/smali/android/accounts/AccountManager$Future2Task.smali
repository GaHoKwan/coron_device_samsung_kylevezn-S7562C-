.class abstract Landroid/accounts/AccountManager$Future2Task;
.super Landroid/accounts/AccountManager$BaseFutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Future2Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/accounts/AccountManager$BaseFutureTask",
        "<TT;>;",
        "Landroid/accounts/AccountManagerFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1529
    .local p0, this:Landroid/accounts/AccountManager$Future2Task;,"Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .local p3, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<TT;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    .line 1530
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManager$BaseFutureTask;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V

    .line 1531
    iput-object p3, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 1532
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/accounts/AccountManager$Future2Task;,"Landroid/accounts/AccountManager$Future2Task<TT;>;"
    const/4 v4, 0x1

    .line 1551
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1552
    iget-object v2, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    #calls: Landroid/accounts/AccountManager;->ensureNotOnMainThread()V
    invoke-static {v2}, Landroid/accounts/AccountManager;->access$200(Landroid/accounts/AccountManager;)V

    .line 1555
    :cond_0
    if-nez p1, :cond_1

    .line 1556
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1582
    :goto_0
    invoke-virtual {p0, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 1558
    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    :try_start_2
    invoke-virtual {p0, v2, v3, p2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1566
    :catch_0
    move-exception v1

    .line 1567
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1568
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 1569
    check-cast v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1582
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    throw v2

    .line 1570
    .restart local v0       #cause:Ljava/lang/Throwable;
    .restart local v1       #e:Ljava/util/concurrent/ExecutionException;
    :cond_2
    :try_start_4
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_3

    .line 1571
    new-instance v2, Landroid/accounts/AuthenticatorException;

    invoke-direct {v2, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1572
    :cond_3
    instance-of v2, v0, Landroid/accounts/AuthenticatorException;

    if-eqz v2, :cond_4

    .line 1573
    check-cast v0, Landroid/accounts/AuthenticatorException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 1574
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_5

    .line 1575
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 1576
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_5
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_6

    .line 1577
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 1579
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1564
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 1582
    :goto_1
    invoke-virtual {p0, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 1584
    new-instance v2, Landroid/accounts/OperationCanceledException;

    invoke-direct {v2}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v2

    .line 1564
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    .line 1562
    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1

    .line 1560
    :catch_7
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected done()V
    .locals 1

    .prologue
    .line 1535
    .local p0, this:Landroid/accounts/AccountManager$Future2Task;,"Landroid/accounts/AccountManager$Future2Task<TT;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_0

    .line 1536
    new-instance v0, Landroid/accounts/AccountManager$Future2Task$1;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$Future2Task$1;-><init>(Landroid/accounts/AccountManager$Future2Task;)V

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$BaseFutureTask;->postRunnableToHandler(Ljava/lang/Runnable;)V

    .line 1542
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/accounts/AccountManager$Future2Task;,"Landroid/accounts/AccountManager$Future2Task<TT;>;"
    const/4 v0, 0x0

    .line 1589
    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 1594
    .local p0, this:Landroid/accounts/AccountManager$Future2Task;,"Landroid/accounts/AccountManager$Future2Task<TT;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public start()Landroid/accounts/AccountManager$Future2Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManager$Future2Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1545
    .local p0, this:Landroid/accounts/AccountManager$Future2Task;,"Landroid/accounts/AccountManager$Future2Task<TT;>;"
    invoke-virtual {p0}, Landroid/accounts/AccountManager$BaseFutureTask;->startTask()V

    .line 1546
    return-object p0
.end method
