.class public abstract Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
.super Ljava/lang/Object;
.source "AtomicReferenceFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 72
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .parameter
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "W:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/Class",
            "<TW;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<TU;TW;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, tclass:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    .local p1, vclass:Ljava/lang/Class;,"Ljava/lang/Class<TW;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;TV;)Z"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    .local p2, newValue:Ljava/lang/Object;,"TV;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, current:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    return-object v0
.end method

.method public abstract lazySet(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation
.end method

.method public abstract weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;TV;)Z"
        }
    .end annotation
.end method
