.class Ljava/util/Collections$AsLIFOQueue;
.super Ljava/util/AbstractQueue;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsLIFOQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x19020d92eca0694cL


# instance fields
.field private final q:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Deque;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 2747
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, deque:Ljava/util/Deque;,"Ljava/util/Deque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 2748
    iput-object p1, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    .line 2749
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 2772
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 2773
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 2777
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 2778
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 2789
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2793
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2781
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2797
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2752
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 2760
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2764
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2768
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2785
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 2801
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2805
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2809
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2756
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2813
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2817
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2821
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
