.class abstract Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SubMapIter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 2
    .parameter

    .prologue
    .line 2957
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2959
    :cond_0
    #getter for: Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->access$100(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Z

    move-result v1

    if-eqz v1, :cond_1

    #calls: Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->access$200(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2960
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_2

    .line 2971
    :goto_1
    return-void

    .line 2959
    :cond_1
    #calls: Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->access$300(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    goto :goto_0

    .line 2962
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 2963
    .local v0, x:Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_0

    .line 2964
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #calls: Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z
    invoke-static {p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->access$400(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2965
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_1

    .line 2967
    :cond_3
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    goto :goto_1
.end method

.method private ascend()V
    .locals 3

    .prologue
    .line 2989
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2990
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_1

    .line 3001
    :goto_0
    return-void

    .line 2992
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 2993
    .local v0, x:Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_0

    .line 2994
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #calls: Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z
    invoke-static {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->access$500(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2995
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 2997
    :cond_2
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method private descend()V
    .locals 4

    .prologue
    .line 3005
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #getter for: Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->access$600(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object v1

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3006
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v1, :cond_1

    .line 3017
    :goto_0
    return-void

    .line 3008
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .line 3009
    .local v0, x:Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eq v0, v1, :cond_0

    .line 3010
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #calls: Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z
    invoke-static {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->access$700(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3011
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 3013
    :cond_2
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method final advance()V
    .locals 1

    .prologue
    .line 2978
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-nez v0, :cond_0

    .line 2979
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 2980
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2981
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #getter for: Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->access$100(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2982
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->descend()V

    .line 2985
    :goto_0
    return-void

    .line 2984
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->ascend()V

    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 2974
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 3020
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapIter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3021
    .local v0, l:Ljava/util/concurrent/ConcurrentSkipListMap$Node;,"Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    .line 3022
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3023
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #getter for: Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->access$600(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object v1

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3024
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->lastReturned:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3025
    return-void
.end method
