.class public Ljava/util/PriorityQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PriorityQueue$1;,
        Ljava/util/PriorityQueue$PriorityIterator;
    }
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
.field private static final DEFAULT_CAPACITY:I = 0xb

.field private static final DEFAULT_CAPACITY_RATIO:I = 0x2

.field private static final DEFAULT_INIT_CAPACITY_RATIO:D = 1.1

.field private static final serialVersionUID:J = -0x6b25cf4b04c07d4fL


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 69
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .parameter "initialCapacity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 84
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 106
    instance-of v0, p1, Ljava/util/PriorityQueue;

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Ljava/util/PriorityQueue;

    .end local p1           #c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromPriorityQueue(Ljava/util/PriorityQueue;)V

    .line 114
    :goto_0
    return-void

    .line 108
    .restart local p1       #c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 109
    check-cast p1, Ljava/util/SortedSet;

    .end local p1           #c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromSortedSet(Ljava/util/SortedSet;)V

    goto :goto_0

    .line 111
    .restart local p1       #c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    .line 112
    invoke-virtual {p0, p1}, Ljava/util/AbstractQueue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/PriorityQueue;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 127
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromPriorityQueue(Ljava/util/PriorityQueue;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/SortedSet;,"Ljava/util/SortedSet<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 141
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromSortedSet(Ljava/util/SortedSet;)V

    .line 142
    return-void
.end method

.method static synthetic access$100(Ljava/util/PriorityQueue;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    return v0
.end method

.method static synthetic access$200(Ljava/util/PriorityQueue;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/PriorityQueue;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->removeAt(I)V

    return-void
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, o1:Ljava/lang/Object;,"TE;"
    .local p2, o2:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 353
    .end local p1           #o1:Ljava/lang/Object;,"TE;"
    :goto_0
    return v0

    .restart local p1       #o1:Ljava/lang/Object;,"TE;"
    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    .end local p1           #o1:Ljava/lang/Object;,"TE;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private getFromPriorityQueue(Ljava/util/PriorityQueue;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<+TE;>;"
    const/4 v3, 0x0

    .line 326
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    .line 327
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 328
    iget-object v0, p1, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 330
    return-void
.end method

.method private getFromSortedSet(Ljava/util/SortedSet;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/SortedSet;,"Ljava/util/SortedSet<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    .line 335
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 336
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 337
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/PriorityQueue;->size:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method private growToSize(I)V
    .locals 4
    .parameter "size"

    .prologue
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    const/4 v3, 0x0

    .line 402
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-le p1, v1, :cond_0

    .line 403
    mul-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 404
    .local v0, newElements:[Ljava/lang/Object;,"[TE;"
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iput-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    .line 407
    .end local v0           #newElements:[Ljava/lang/Object;,"[TE;"
    :cond_0
    return-void
.end method

.method private initSize(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    if-nez p1, :cond_0

    .line 390
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 392
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 397
    .local v0, capacity:I
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "capacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 304
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 305
    .local v0, capacity:I
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    .line 306
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v1, v2, :cond_0

    .line 307
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method private removeAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 343
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 344
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 345
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->siftDown(I)V

    .line 346
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 347
    return-void
.end method

.method private siftDown(I)V
    .locals 4
    .parameter "rootIndex"

    .prologue
    .line 372
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v1, v2, p1

    .line 374
    .local v1, target:Ljava/lang/Object;,"TE;"
    :goto_0
    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v0, v2, 0x1

    .local v0, childIndex:I
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v2, :cond_1

    .line 375
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 377
    add-int/lit8 v0, v0, 0x1

    .line 379
    :cond_0
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 385
    :cond_1
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 386
    return-void

    .line 382
    :cond_2
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, p1

    .line 383
    move p1, v0

    goto :goto_0
.end method

.method private siftUp(I)V
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 357
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v3, p1

    .line 359
    .local v2, target:Ljava/lang/Object;,"TE;"
    :goto_0
    if-lez p1, :cond_0

    .line 360
    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v1, v3, 0x2

    .line 361
    .local v1, parentIndex:I
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 362
    .local v0, parent:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, v0, v2}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 368
    .end local v0           #parent:Ljava/lang/Object;,"TE;"
    .end local v1           #parentIndex:I
    :cond_0
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aput-object v2, v3, p1

    .line 369
    return-void

    .line 365
    .restart local v0       #parent:Ljava/lang/Object;,"TE;"
    .restart local v1       #parentIndex:I
    :cond_1
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aput-object v0, v3, p1

    .line 366
    move p1, v1

    .line 367
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 318
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
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
    .line 270
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 171
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 173
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    new-instance v0, Ljava/util/PriorityQueue$PriorityIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/PriorityQueue$PriorityIterator;-><init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 191
    :cond_0
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->growToSize(I)V

    .line 192
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    aput-object p1, v0, v1

    .line 193
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->siftUp(I)V

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    .line 206
    :cond_0
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 207
    .local v0, result:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, v2}, Ljava/util/PriorityQueue;->removeAt(I)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    const/4 v1, 0x0

    .line 244
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    const/4 v0, 0x0

    .local v0, targetIndex:I
    :goto_1
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v2, :cond_0

    .line 248
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)V

    .line 250
    const/4 v1, 0x1

    goto :goto_0

    .line 247
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 163
    .local p0, this:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    return v0
.end method
