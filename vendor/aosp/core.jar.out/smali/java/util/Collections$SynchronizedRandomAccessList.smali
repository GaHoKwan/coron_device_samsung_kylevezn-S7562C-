.class Ljava/util/Collections$SynchronizedRandomAccessList;
.super Ljava/util/Collections$SynchronizedList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x153e0c6c865668d2L


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, this:Ljava/util/Collections$SynchronizedRandomAccessList;,"Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    .line 475
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, this:Ljava/util/Collections$SynchronizedRandomAccessList;,"Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 499
    .local p0, this:Ljava/util/Collections$SynchronizedRandomAccessList;,"Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .locals 4
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, this:Ljava/util/Collections$SynchronizedRandomAccessList;,"Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
