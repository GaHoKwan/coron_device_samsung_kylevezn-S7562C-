.class final Ljava/util/Hashtable$KeySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .parameter

    .prologue
    .line 902
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iput-object p1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 902
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 920
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 921
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 910
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 933
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 934
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 938
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 939
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 943
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 944
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/Hashtable$KeyIterator;

    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$KeyIterator;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 913
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v2, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v2

    .line 914
    :try_start_0
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->size:I
    invoke-static {v1}, Ljava/util/Hashtable;->access$800(Ljava/util/Hashtable;)I

    move-result v0

    .line 915
    .local v0, oldSize:I
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->size:I
    invoke-static {v1}, Ljava/util/Hashtable;->access$800(Ljava/util/Hashtable;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 917
    .end local v0           #oldSize:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 924
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 925
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 929
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 907
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 953
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 954
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 955
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 958
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 959
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 948
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 949
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
