.class Lcom/android/commands/content/Content$QueryCommand;
.super Lcom/android/commands/content/Content$DeleteCommand;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryCommand"
.end annotation


# instance fields
.field final mProjection:[Ljava/lang/String;

.field final mSortOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "sortOrder"

    .prologue
    .line 367
    invoke-direct {p0, p1, p3}, Lcom/android/commands/content/Content$DeleteCommand;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 368
    iput-object p2, p0, Lcom/android/commands/content/Content$QueryCommand;->mProjection:[Ljava/lang/String;

    .line 369
    iput-object p4, p0, Lcom/android/commands/content/Content$QueryCommand;->mSortOrder:Ljava/lang/String;

    .line 370
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 17
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/content/Content$Command;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/content/Content$QueryCommand;->mProjection:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/content/Content$DeleteCommand;->mWhere:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/commands/content/Content$QueryCommand;->mSortOrder:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v13

    .line 375
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 376
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "No result found."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 380
    :cond_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    const/4 v15, 0x0

    .line 382
    .local v15, rowIndex:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v8, builder:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 385
    const-string v1, "Row: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    add-int/lit8 v15, v15, 0x1

    .line 387
    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    .line 388
    .local v9, columnCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v9, :cond_3

    .line 389
    if-lez v14, :cond_2

    .line 390
    const-string v1, ", "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_2
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v11

    .line 393
    .local v11, columnName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 394
    .local v12, columnValue:Ljava/lang/String;
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 395
    .local v10, columnIndex:I
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getType(I)I

    move-result v16

    .line 396
    .local v16, type:I
    packed-switch v16, :pswitch_data_0

    .line 413
    :goto_2
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 398
    :pswitch_0
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    .line 399
    goto :goto_2

    .line 401
    :pswitch_1
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 402
    goto :goto_2

    .line 404
    :pswitch_2
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 405
    goto :goto_2

    .line 407
    :pswitch_3
    const-string v12, "BLOB"

    .line 408
    goto :goto_2

    .line 410
    :pswitch_4
    const-string v12, "NULL"

    goto :goto_2

    .line 415
    .end local v10           #columnIndex:I
    .end local v11           #columnName:Ljava/lang/String;
    .end local v12           #columnValue:Ljava/lang/String;
    .end local v16           #type:I
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 416
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 421
    .end local v8           #builder:Ljava/lang/StringBuilder;
    .end local v9           #columnCount:I
    .end local v14           #i:I
    .end local v15           #rowIndex:I
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 418
    :cond_4
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "No reuslt found."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 421
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
