.class Ljava/util/ArrayDeque$DescendingIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Ljava/util/ArrayDeque;


# direct methods
.method private constructor <init>(Ljava/util/ArrayDeque;)V
    .locals 1
    .parameter

    .prologue
    .line 621
    .local p0, this:Ljava/util/ArrayDeque$DescendingIterator;,"Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->tail:I
    invoke-static {v0}, Ljava/util/ArrayDeque;->access$300(Ljava/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 628
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->head:I
    invoke-static {v0}, Ljava/util/ArrayDeque;->access$200(Ljava/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    .line 629
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 621
    .local p0, this:Ljava/util/ArrayDeque$DescendingIterator;,"Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque$DescendingIterator;-><init>(Ljava/util/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 632
    .local p0, this:Ljava/util/ArrayDeque$DescendingIterator;,"Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, this:Ljava/util/ArrayDeque$DescendingIterator;,"Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_0

    .line 637
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 638
    :cond_0
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/ArrayDeque;->access$400(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 639
    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/ArrayDeque;->access$400(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    aget-object v0, v1, v2

    .line 640
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->head:I
    invoke-static {v1}, Ljava/util/ArrayDeque;->access$200(Ljava/util/ArrayDeque;)I

    move-result v1

    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 641
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 642
    :cond_2
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    iput v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    .line 643
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 647
    .local p0, this:Ljava/util/ArrayDeque$DescendingIterator;,"Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 649
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    #calls: Ljava/util/ArrayDeque;->delete(I)Z
    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->access$500(Ljava/util/ArrayDeque;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/ArrayDeque;->access$400(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 651
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    #getter for: Ljava/util/ArrayDeque;->head:I
    invoke-static {v0}, Ljava/util/ArrayDeque;->access$200(Ljava/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->fence:I

    .line 653
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    .line 654
    return-void
.end method
