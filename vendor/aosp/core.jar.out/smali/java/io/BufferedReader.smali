.class public Ljava/io/BufferedReader;
.super Ljava/io/Reader;
.source "BufferedReader.java"


# instance fields
.field private buf:[C

.field private end:I

.field private in:Ljava/io/Reader;

.field private mark:I

.field private markLimit:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 80
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 2
    .parameter "in"
    .parameter "size"

    .prologue
    const/4 v0, -0x1

    .line 92
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 69
    iput v0, p0, Ljava/io/BufferedReader;->mark:I

    .line 71
    iput v0, p0, Ljava/io/BufferedReader;->markLimit:I

    .line 93
    if-gtz p2, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iput-object p1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 97
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    .line 98
    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    return-void
.end method

.method private fillBuf()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 128
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    if-eq v4, v10, :cond_0

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v4, v5

    iget v5, p0, Ljava/io/BufferedReader;->markLimit:I

    if-lt v4, v5, :cond_3

    .line 130
    :cond_0
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v6, v6

    invoke-virtual {v4, v5, v9, v6}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 131
    .local v3, result:I
    if-lez v3, :cond_1

    .line 132
    iput v10, p0, Ljava/io/BufferedReader;->mark:I

    .line 133
    iput v9, p0, Ljava/io/BufferedReader;->pos:I

    .line 134
    iput v3, p0, Ljava/io/BufferedReader;->end:I

    :cond_1
    move v0, v3

    .line 161
    .end local v3           #result:I
    :cond_2
    :goto_0
    return v0

    .line 139
    :cond_3
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    if-nez v4, :cond_6

    iget v4, p0, Ljava/io/BufferedReader;->markLimit:I

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v5, v5

    if-le v4, v5, :cond_6

    .line 141
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v4, v4

    mul-int/lit8 v1, v4, 0x2

    .line 142
    .local v1, newLength:I
    iget v4, p0, Ljava/io/BufferedReader;->markLimit:I

    if-le v1, v4, :cond_4

    .line 143
    iget v1, p0, Ljava/io/BufferedReader;->markLimit:I

    .line 145
    :cond_4
    new-array v2, v1, [C

    .line 146
    .local v2, newbuf:[C
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v5, v5

    invoke-static {v4, v9, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iput-object v2, p0, Ljava/io/BufferedReader;->buf:[C

    .line 157
    .end local v1           #newLength:I
    .end local v2           #newbuf:[C
    :cond_5
    :goto_1
    iget-object v4, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v7, v7

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 158
    .local v0, count:I
    if-eq v0, v10, :cond_2

    .line 159
    iget v4, p0, Ljava/io/BufferedReader;->end:I

    add-int/2addr v4, v0

    iput v4, p0, Ljava/io/BufferedReader;->end:I

    goto :goto_0

    .line 148
    .end local v0           #count:I
    :cond_6
    iget v4, p0, Ljava/io/BufferedReader;->mark:I

    if-lez v4, :cond_5

    .line 150
    iget-object v4, p0, Ljava/io/BufferedReader;->buf:[C

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget-object v7, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v7, v7

    iget v8, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/io/BufferedReader;->pos:I

    .line 152
    iget v4, p0, Ljava/io/BufferedReader;->end:I

    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/io/BufferedReader;->end:I

    .line 153
    iput v9, p0, Ljava/io/BufferedReader;->mark:I

    goto :goto_1
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final chompNewline()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    iget v1, p0, Ljava/io/BufferedReader;->end:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    iget v1, p0, Ljava/io/BufferedReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 335
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/BufferedReader;->pos:I

    .line 337
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    .line 115
    :cond_0
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public mark(I)V
    .locals 2
    .parameter "markLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    if-gez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 197
    iput p1, p0, Ljava/io/BufferedReader;->markLimit:I

    .line 198
    iget v0, p0, Ljava/io/BufferedReader;->pos:I

    iput v0, p0, Ljava/io/BufferedReader;->mark:I

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 235
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 238
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    iget v3, p0, Ljava/io/BufferedReader;->end:I

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 239
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedReader;->buf:[C

    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedReader;->pos:I

    aget-char v0, v0, v2

    monitor-exit v1

    .line 241
    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read([CII)I
    .locals 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 273
    iget-object v4, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 274
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 275
    array-length v5, p1

    invoke-static {v5, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 276
    move v2, p3

    .line 277
    .local v2, outstanding:I
    :cond_0
    if-lez v2, :cond_2

    .line 282
    iget v5, p0, Ljava/io/BufferedReader;->end:I

    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v0, v5, v6

    .line 283
    .local v0, available:I
    if-lez v0, :cond_1

    .line 284
    if-lt v0, v2, :cond_4

    move v1, v2

    .line 285
    .local v1, count:I
    :goto_0
    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    add-int/2addr v5, v1

    iput v5, p0, Ljava/io/BufferedReader;->pos:I

    .line 287
    add-int/2addr p2, v1

    .line 288
    sub-int/2addr v2, v1

    .line 297
    .end local v1           #count:I
    :cond_1
    if-eqz v2, :cond_2

    if-ge v2, p3, :cond_5

    iget-object v5, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->ready()Z

    move-result v5

    if-nez v5, :cond_5

    .line 323
    .end local v0           #available:I
    :cond_2
    :goto_1
    sub-int v1, p3, v2

    .line 324
    .restart local v1       #count:I
    if-gtz v1, :cond_3

    if-ne v1, p3, :cond_8

    .end local v1           #count:I
    :cond_3
    :goto_2
    monitor-exit v4

    return v1

    .restart local v0       #available:I
    :cond_4
    move v1, v0

    .line 284
    goto :goto_0

    .line 309
    :cond_5
    iget v5, p0, Ljava/io/BufferedReader;->mark:I

    if-eq v5, v3, :cond_6

    iget v5, p0, Ljava/io/BufferedReader;->pos:I

    iget v6, p0, Ljava/io/BufferedReader;->mark:I

    sub-int/2addr v5, v6

    iget v6, p0, Ljava/io/BufferedReader;->markLimit:I

    if-lt v5, v6, :cond_7

    :cond_6
    iget-object v5, p0, Ljava/io/BufferedReader;->buf:[C

    array-length v5, v5

    if-lt v2, v5, :cond_7

    .line 310
    iget-object v5, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v5, p1, p2, v2}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 311
    .restart local v1       #count:I
    if-lez v1, :cond_2

    .line 312
    sub-int/2addr v2, v1

    .line 313
    const/4 v5, -0x1

    iput v5, p0, Ljava/io/BufferedReader;->mark:I

    goto :goto_1

    .line 325
    .end local v0           #available:I
    .end local v1           #count:I
    .end local v2           #outstanding:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 318
    .restart local v0       #available:I
    .restart local v2       #outstanding:I
    :cond_7
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ne v5, v3, :cond_0

    goto :goto_1

    .end local v0           #available:I
    .restart local v1       #count:I
    :cond_8
    move v1, v3

    .line 324
    goto :goto_2
.end method

.method public readLine()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v13, -0x1

    const/16 v12, 0xd

    const/16 v11, 0xa

    .line 351
    iget-object v7, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 352
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 354
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->end:I

    if-ne v6, v8, :cond_0

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v6

    if-ne v6, v13, :cond_0

    .line 355
    monitor-exit v7

    .line 413
    :goto_0
    return-object v4

    .line 357
    :cond_0
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    .local v2, charPos:I
    :goto_1
    iget v6, p0, Ljava/io/BufferedReader;->end:I

    if-ge v2, v6, :cond_6

    .line 358
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v1, v6, v2

    .line 359
    .local v1, ch:C
    if-le v1, v12, :cond_2

    .line 357
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    :cond_2
    if-ne v1, v11, :cond_3

    .line 363
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v9, v2, v9

    invoke-direct {v4, v6, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .line 364
    .local v4, res:Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    .line 365
    monitor-exit v7

    goto :goto_0

    .line 422
    .end local v1           #ch:C
    .end local v2           #charPos:I
    .end local v4           #res:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 366
    .restart local v1       #ch:C
    .restart local v2       #charPos:I
    :cond_3
    if-ne v1, v12, :cond_1

    .line 367
    :try_start_1
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v9, v2, v9

    invoke-direct {v4, v6, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .line 368
    .restart local v4       #res:Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    .line 369
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    iget v8, p0, Ljava/io/BufferedReader;->end:I

    if-lt v6, v8, :cond_4

    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v6

    if-eq v6, v13, :cond_5

    :cond_4
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    aget-char v6, v6, v8

    if-ne v6, v11, :cond_5

    .line 371
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    .line 373
    :cond_5
    monitor-exit v7

    goto :goto_0

    .line 377
    .end local v1           #ch:C
    .end local v4           #res:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .line 378
    .local v3, eol:C
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .local v5, result:Ljava/lang/StringBuilder;
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->end:I

    iget v10, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 383
    :goto_2
    iget v6, p0, Ljava/io/BufferedReader;->end:I

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    .line 386
    if-ne v3, v11, :cond_7

    .line 387
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v7

    goto :goto_0

    .line 390
    :cond_7
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v6

    if-ne v6, v13, :cond_a

    .line 392
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gtz v6, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    monitor-exit v7

    goto/16 :goto_0

    .line 396
    :cond_a
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    :goto_3
    iget v6, p0, Ljava/io/BufferedReader;->end:I

    if-ge v2, v6, :cond_11

    .line 397
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    aget-char v0, v6, v2

    .line 398
    .local v0, c:C
    if-nez v3, :cond_d

    .line 399
    if-eq v0, v11, :cond_b

    if-ne v0, v12, :cond_c

    .line 400
    :cond_b
    move v3, v0

    .line 396
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 402
    :cond_d
    if-ne v3, v12, :cond_f

    if-ne v0, v11, :cond_f

    .line 403
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    if-le v2, v6, :cond_e

    .line 404
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v9, v2, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v6, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 406
    :cond_e
    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Ljava/io/BufferedReader;->pos:I

    .line 407
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v7

    goto/16 :goto_0

    .line 409
    :cond_f
    iget v6, p0, Ljava/io/BufferedReader;->pos:I

    if-le v2, v6, :cond_10

    .line 410
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->pos:I

    sub-int v9, v2, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v6, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 412
    :cond_10
    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    .line 413
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v7

    goto/16 :goto_0

    .line 416
    .end local v0           #c:C
    :cond_11
    if-nez v3, :cond_12

    .line 417
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->end:I

    iget v10, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 419
    :cond_12
    iget-object v6, p0, Ljava/io/BufferedReader;->buf:[C

    iget v8, p0, Ljava/io/BufferedReader;->pos:I

    iget v9, p0, Ljava/io/BufferedReader;->end:I

    iget v10, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v6, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 441
    iget v0, p0, Ljava/io/BufferedReader;->end:I

    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 459
    iget v0, p0, Ljava/io/BufferedReader;->mark:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 460
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid mark"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 462
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/BufferedReader;->mark:I

    iput v0, p0, Ljava/io/BufferedReader;->pos:I

    .line 463
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    return-void
.end method

.method public skip(J)J
    .locals 8
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 486
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 487
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 489
    :cond_0
    iget-object v3, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 490
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedReader;->checkNotClosed()V

    .line 491
    const-wide/16 v4, 0x1

    cmp-long v2, p1, v4

    if-gez v2, :cond_1

    .line 492
    monitor-exit v3

    move-wide p1, v0

    .line 513
    .end local p1
    :goto_0
    return-wide p1

    .line 494
    .restart local p1
    :cond_1
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, v4, p1

    if-ltz v2, :cond_2

    .line 495
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    int-to-long v4, v2

    add-long/2addr v4, p1

    long-to-int v2, v4

    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    .line 496
    monitor-exit v3

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 499
    :cond_2
    :try_start_1
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v0, v2

    .line 500
    .local v0, read:J
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    .line 501
    :goto_1
    cmp-long v2, v0, p1

    if-gez v2, :cond_5

    .line 502
    invoke-direct {p0}, Ljava/io/BufferedReader;->fillBuf()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 503
    monitor-exit v3

    move-wide p1, v0

    goto :goto_0

    .line 505
    :cond_3
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    sub-long v6, p1, v0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_4

    .line 506
    iget v2, p0, Ljava/io/BufferedReader;->pos:I

    int-to-long v4, v2

    sub-long v6, p1, v0

    add-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    .line 507
    monitor-exit v3

    goto :goto_0

    .line 510
    :cond_4
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iget v4, p0, Ljava/io/BufferedReader;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 511
    iget v2, p0, Ljava/io/BufferedReader;->end:I

    iput v2, p0, Ljava/io/BufferedReader;->pos:I

    goto :goto_1

    .line 513
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
