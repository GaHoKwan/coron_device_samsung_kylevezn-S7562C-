.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
        "<TK;TV;>.SubMapIter<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 0
    .parameter

    .prologue
    .line 3029
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapValueIterator;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3031
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;,"Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapValueIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->nextValue:Ljava/lang/Object;

    .line 3032
    .local v0, v:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;->advance()V

    .line 3033
    return-object v0
.end method
