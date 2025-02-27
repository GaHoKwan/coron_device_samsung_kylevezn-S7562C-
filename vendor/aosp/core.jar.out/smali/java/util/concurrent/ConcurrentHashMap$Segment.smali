.class final Ljava/util/concurrent/ConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field transient modCount:I

.field volatile transient table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient threshold:I


# direct methods
.method constructor <init>(IF)V
    .locals 1
    .parameter "initialCapacity"
    .parameter "lf"

    .prologue
    .line 288
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 289
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    .line 290
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 291
    return-void
.end method

.method static final newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .locals 1
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 295
    new-array v0, p0, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 548
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 551
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 552
    .local v1, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 553
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 555
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 560
    .end local v0           #i:I
    .end local v1           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    return-void

    .line 557
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2
    .parameter "key"
    .parameter "hash"

    .prologue
    .line 350
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 352
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 353
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 358
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    return v1

    .line 355
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 358
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 6
    .parameter "value"

    .prologue
    .line 362
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_3

    .line 363
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 364
    .local v3, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v2, v3

    .line 365
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 366
    aget-object v0, v3, v1

    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 367
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 368
    .local v4, v:Ljava/lang/Object;,"TV;"
    if-nez v4, :cond_0

    .line 369
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->readValueUnderLock(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v4

    .line 370
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 371
    const/4 v5, 0x1

    .line 375
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v4           #v:Ljava/lang/Object;,"TV;"
    :goto_2
    return v5

    .line 366
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v1       #i:I
    .restart local v2       #len:I
    .restart local v3       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v4       #v:Ljava/lang/Object;,"TV;"
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_1

    .line 365
    .end local v4           #v:Ljava/lang/Object;,"TV;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 335
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 336
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 337
    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_1

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 339
    .local v1, v:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_0

    .line 346
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :goto_1
    return-object v1

    .line 341
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v1       #v:Ljava/lang/Object;,"TV;"
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->readValueUnderLock(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 343
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 346
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 2
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 312
    .local v0, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter "hash"
    .parameter
    .parameter "onlyIfAbsent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 418
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 419
    .local v0, c:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #c:I
    .local v1, c:I
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    if-le v0, v7, :cond_0

    .line 420
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->rehash()V

    .line 421
    :cond_0
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 422
    .local v6, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int v4, p2, v7

    .line 423
    .local v4, index:I
    aget-object v3, v6, v4

    .line 424
    .local v3, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v2, v3

    .line 425
    .local v2, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    iget v7, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v7, p2, :cond_1

    iget-object v7, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 426
    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 429
    :cond_2
    if-eqz v2, :cond_4

    .line 430
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 431
    .local v5, oldValue:Ljava/lang/Object;,"TV;"
    if-nez p4, :cond_3

    .line 432
    iput-object p3, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    .end local v5           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    .line 435
    :cond_4
    const/4 v5, 0x0

    .line 436
    .restart local v5       #oldValue:Ljava/lang/Object;,"TV;"
    :try_start_1
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 437
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-direct {v7, p1, p2, v3, p3}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v7, v6, v4

    .line 438
    iput v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 442
    .end local v1           #c:I
    .end local v2           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3           #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v4           #index:I
    .end local v5           #oldValue:Ljava/lang/Object;,"TV;"
    .end local v6           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method readValueUnderLock(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 325
    :try_start_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method rehash()V
    .locals 22

    .prologue
    .line 447
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 448
    .local v15, oldTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v14, v15

    .line 449
    .local v14, oldCapacity:I
    const/high16 v18, 0x4000

    move/from16 v0, v18

    if-lt v14, v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 466
    :cond_0
    shl-int/lit8 v18, v14, 0x1

    invoke-static/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v12

    .line 467
    .local v12, newTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 468
    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v17, v18, -0x1

    .line 469
    .local v17, sizeMask:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v14, :cond_5

    .line 472
    aget-object v4, v15, v5

    .line 474
    .local v4, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-eqz v4, :cond_1

    .line 475
    iget-object v13, v4, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 476
    .local v13, next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    iget v0, v4, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v18, v0

    and-int v6, v18, v17

    .line 479
    .local v6, idx:I
    if-nez v13, :cond_2

    .line 480
    aput-object v4, v12, v6

    .line 469
    .end local v6           #idx:I
    .end local v13           #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 484
    .restart local v6       #idx:I
    .restart local v13       #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_2
    move-object v10, v4

    .line 485
    .local v10, lastRun:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move v9, v6

    .line 486
    .local v9, lastIdx:I
    move-object v8, v13

    .line 487
    .local v8, last:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_2
    if-eqz v8, :cond_4

    .line 489
    iget v0, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v18, v0

    and-int v7, v18, v17

    .line 490
    .local v7, k:I
    if-eq v7, v9, :cond_3

    .line 491
    move v9, v7

    .line 492
    move-object v10, v8

    .line 488
    :cond_3
    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_2

    .line 495
    .end local v7           #k:I
    :cond_4
    aput-object v10, v12, v9

    .line 498
    move-object/from16 v16, v4

    .local v16, p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_3
    move-object/from16 v0, v16

    if-eq v0, v10, :cond_1

    .line 499
    move-object/from16 v0, v16

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v18, v0

    and-int v7, v18, v17

    .line 500
    .restart local v7       #k:I
    aget-object v11, v12, v7

    .line 501
    .local v11, n:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    new-instance v18, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v11, v3}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v18, v12, v7

    .line 498
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v16, v0

    goto :goto_3

    .line 507
    .end local v4           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v6           #idx:I
    .end local v7           #k:I
    .end local v8           #last:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v9           #lastIdx:I
    .end local v10           #lastRun:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v11           #n:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v13           #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v16           #p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_5
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto/16 :goto_0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "key"
    .parameter "hash"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 516
    :try_start_0
    iget v11, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    add-int/lit8 v1, v11, -0x1

    .line 517
    .local v1, c:I
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 518
    .local v9, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    and-int v4, p2, v11

    .line 519
    .local v4, index:I
    aget-object v3, v9, v4

    .line 520
    .local v3, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v2, v3

    .line 521
    .local v2, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    iget v11, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v0, p2

    if-ne v11, v0, :cond_0

    iget-object v11, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 522
    :cond_0
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 524
    :cond_1
    const/4 v7, 0x0

    .line 525
    .local v7, oldValue:Ljava/lang/Object;,"TV;"
    if-eqz v2, :cond_4

    .line 526
    iget-object v10, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 527
    .local v10, v:Ljava/lang/Object;,"TV;"
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 528
    :cond_2
    move-object v7, v10

    .line 532
    iget v11, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 533
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 534
    .local v5, newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v8, v3

    .local v8, p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v6, v5

    .end local v5           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .local v6, newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eq v8, v2, :cond_3

    .line 535
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v11, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v12, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    iget-object v13, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct {v5, v11, v12, v6, v13}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    .line 534
    .end local v6           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v5       #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v6, v5

    .end local v5           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v6       #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    goto :goto_1

    .line 537
    :cond_3
    aput-object v6, v9, v4

    .line 538
    iput v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    .end local v6           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v7           #oldValue:Ljava/lang/Object;,"TV;"
    .end local v8           #p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v10           #v:Ljava/lang/Object;,"TV;"
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v7

    .end local v1           #c:I
    .end local v2           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3           #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v4           #index:I
    .end local v9           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v11

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v11
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 399
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 400
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 403
    :cond_1
    const/4 v1, 0x0

    .line 404
    .local v1, oldValue:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_2

    .line 405
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 406
    iput-object p3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    .end local v1           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter "hash"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, oldValue:Ljava/lang/Object;,"TV;"
    .local p4, newValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 381
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 382
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 385
    :cond_1
    const/4 v1, 0x0

    .line 386
    .local v1, replaced:Z
    if-eqz v0, :cond_2

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    const/4 v1, 0x1

    .line 388
    iput-object p4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #replaced:Z
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, newTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 304
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 305
    return-void
.end method
