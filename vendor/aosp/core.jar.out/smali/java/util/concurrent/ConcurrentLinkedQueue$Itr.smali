.class Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->advance()Ljava/lang/Object;

    .line 645
    return-void
.end method

.method private advance()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    const/4 v7, 0x0

    .line 652
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 653
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 656
    .local v4, x:Ljava/lang/Object;,"TE;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v5, :cond_0

    .line 657
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    .line 658
    .local v2, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v3, 0x0

    .line 665
    .local v3, pred:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-nez v2, :cond_1

    .line 666
    iput-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 667
    iput-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 674
    :goto_1
    return-object v4

    .line 660
    .end local v2           #p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3           #pred:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 661
    .restart local v3       #pred:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    .restart local v2       #p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    .line 670
    :cond_1
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 671
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_2

    .line 672
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 673
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    goto :goto_1

    .line 677
    :cond_2
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .line 678
    .local v1, next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 679
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    .line 680
    :cond_3
    move-object v2, v1

    .line 682
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 686
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 690
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 691
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->advance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    const/4 v1, 0x0

    .line 695
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 696
    .local v0, l:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 698
    :cond_0
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 699
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 700
    return-void
.end method
