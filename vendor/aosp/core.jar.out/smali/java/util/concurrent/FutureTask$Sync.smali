.class final Ljava/util/concurrent/FutureTask$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "FutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Sync"
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final RAN:I = 0x2

.field private static final READY:I = 0x0

.field private static final RUNNING:I = 0x1

.field private static final serialVersionUID:J = -0x6ca30f4d402ddea1L


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Throwable;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile runner:Ljava/lang/Thread;

.field final synthetic this$0:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    .local p2, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 187
    iput-object p2, p0, Ljava/util/concurrent/FutureTask$Sync;->callable:Ljava/util/concurrent/Callable;

    .line 188
    return-void
.end method

.method private ranOrCancelled(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 191
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method innerCancel(Z)Z
    .locals 4
    .parameter "mayInterruptIfRunning"

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v2, 0x0

    .line 281
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v1

    .line 282
    .local v1, s:I
    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask$Sync;->ranOrCancelled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    :goto_0
    return v2

    .line 284
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    if-eqz p1, :cond_2

    .line 288
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    .line 289
    .local v0, r:Ljava/lang/Thread;
    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 292
    .end local v0           #r:Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->releaseShared(I)Z

    .line 293
    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->done()V

    .line 294
    const/4 v2, 0x1

    goto :goto_0
.end method

.method innerGet()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 219
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireSharedInterruptibly(I)V

    .line 220
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 221
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 222
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 223
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 224
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->result:Ljava/lang/Object;

    return-object v0
.end method

.method innerGet(J)Ljava/lang/Object;
    .locals 2
    .parameter "nanosTimeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 228
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 231
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 232
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 233
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 234
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->result:Ljava/lang/Object;

    return-object v0
.end method

.method innerIsCancelled()Z
    .locals 2

    .prologue
    .line 211
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method innerIsDone()Z
    .locals 1

    .prologue
    .line 215
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask$Sync;->ranOrCancelled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method innerRun()V
    .locals 5

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 298
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    .line 302
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 305
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 310
    .local v1, result:Ljava/lang/Object;,"TV;"
    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    .end local v1           #result:Ljava/lang/Object;,"TV;"
    :catch_0
    move-exception v0

    .line 307
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 312
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->releaseShared(I)Z

    goto :goto_0
.end method

.method innerRunAndReset()Z
    .locals 4

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 317
    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    :goto_0
    return v1

    .line 320
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    .line 321
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 322
    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 323
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    .line 324
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v2, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method innerSet(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    .local p1, v:Ljava/lang/Object;,"TV;"
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 239
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    .line 240
    .local v0, s:I
    if-ne v0, v3, :cond_1

    .line 253
    :goto_0
    return-void

    .line 242
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 246
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->releaseShared(I)Z

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iput-object p1, p0, Ljava/util/concurrent/FutureTask$Sync;->result:Ljava/lang/Object;

    .line 251
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->releaseShared(I)Z

    .line 252
    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->done()V

    goto :goto_0
.end method

.method innerSetException(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 260
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    .line 261
    .local v0, s:I
    if-ne v0, v3, :cond_1

    .line 274
    :goto_0
    return-void

    .line 263
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 267
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->releaseShared(I)Z

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iput-object p1, p0, Ljava/util/concurrent/FutureTask$Sync;->exception:Ljava/lang/Throwable;

    .line 272
    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->releaseShared(I)Z

    .line 273
    iget-object v1, p0, Ljava/util/concurrent/FutureTask$Sync;->this$0:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->done()V

    goto :goto_0
.end method

.method protected tryAcquireShared(I)I
    .locals 1
    .parameter "ignore"

    .prologue
    .line 198
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask$Sync;->innerIsDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected tryReleaseShared(I)Z
    .locals 1
    .parameter "ignore"

    .prologue
    .line 206
    .local p0, this:Ljava/util/concurrent/FutureTask$Sync;,"Ljava/util/concurrent/FutureTask<TV;>.Sync;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask$Sync;->runner:Ljava/lang/Thread;

    .line 207
    const/4 v0, 0x1

    return v0
.end method
