.class Ljava/lang/ref/FinalizerReference$Sentinel;
.super Ljava/lang/Object;
.source "FinalizerReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ref/FinalizerReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sentinel"
.end annotation


# instance fields
.field finalized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/FinalizerReference$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/ref/FinalizerReference$Sentinel;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized awaitFinalization()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
