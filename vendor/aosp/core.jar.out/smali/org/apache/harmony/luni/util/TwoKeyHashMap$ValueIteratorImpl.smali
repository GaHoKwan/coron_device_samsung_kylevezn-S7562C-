.class Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;
.super Ljava/lang/Object;
.source "TwoKeyHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private itr:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap",
            "<TE;TK;TV;>.EntryIteratorImpl;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V
    .locals 1
    .parameter

    .prologue
    .line 550
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.ValueIteratorImpl;"
    iput-object p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;-><init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;->itr:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;

    .line 552
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 563
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.ValueIteratorImpl;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;->itr:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.ValueIteratorImpl;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;->itr:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->next()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 559
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.ValueIteratorImpl;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$ValueIteratorImpl;->itr:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->remove()V

    .line 560
    return-void
.end method
