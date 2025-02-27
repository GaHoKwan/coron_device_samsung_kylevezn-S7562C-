.class Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;
.super Ljava/lang/Thread;
.source "NetworkStatsDetailedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsDetailedMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetStatsMonitorThread"
.end annotation


# static fields
.field private static final SLEEP_DURATION:J = 0x3e8L

.field private static final THREAD_NAME:Ljava/lang/String; = "NetStatsMonitorThread"


# instance fields
.field mStop:Z

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 277
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    .line 278
    const-string v0, "NetStatsMonitorThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 276
    iput-boolean v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->mStop:Z

    .line 281
    iput-boolean v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->mStop:Z

    .line 283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 289
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(xxxz) NetStatsMonitorThread>> run: Begin..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->mStop:Z

    if-eqz v4, :cond_1

    .line 293
    const-string v4, "NetworkStatsEx"

    const-string v5, "(xxxz) NetStatsMonitorThread>> run: set stop, exiting..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_1
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(xxxz) NetStatsMonitorThread>> run: End!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 298
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 299
    .local v2, now:J
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxxz) NetStatsMonitorThread>> run: polling... now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", last="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #getter for: Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J
    invoke-static {v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Lcom/android/server/net/NetworkStatsDetailedMonitor;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", elapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #getter for: Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J
    invoke-static {v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Lcom/android/server/net/NetworkStatsDetailedMonitor;)J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    const/4 v5, 0x3

    const/4 v6, 0x1

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->performPoll(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$200(Lcom/android/server/net/NetworkStatsDetailedMonitor;IZ)V

    .line 303
    iget-boolean v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->mStop:Z

    if-eqz v4, :cond_2

    .line 304
    const-string v4, "NetworkStatsEx"

    const-string v5, "(xxxz) NetStatsMonitorThread>> run: set stop, exiting... 2"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 312
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 316
    .local v0, elapsed:J
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    .line 317
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(xxxz) NetStatsMonitorThread>> run: sleeped more than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; elapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 313
    .end local v0           #elapsed:J
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public setStop()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->mStop:Z

    .line 287
    return-void
.end method
