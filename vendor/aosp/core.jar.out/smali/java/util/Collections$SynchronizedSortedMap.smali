.class Ljava/util/Collections$SynchronizedSortedMap;
.super Ljava/util/Collections$SynchronizedMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a194bdf48d1f3d1L


# instance fields
.field private final sm:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    .line 805
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    .line 806
    return-void
.end method

.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 810
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    .line 811
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 853
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 854
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 855
    monitor-exit v1

    .line 856
    return-void

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 815
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 820
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 821
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 826
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, endKey:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 834
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 835
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 839
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, startKey:Ljava/lang/Object;,"TK;"
    .local p2, endKey:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 840
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, startKey:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 847
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
