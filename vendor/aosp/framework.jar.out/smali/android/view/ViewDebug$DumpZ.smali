.class Landroid/view/ViewDebug$DumpZ;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpZ"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "out"

    .prologue
    .line 1554
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1555
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1556
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1557
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1558
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    :goto_0
    return-void

    .line 1559
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "out"

    .prologue
    .line 1536
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1537
    const/16 v0, 0xa

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1538
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1539
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1541
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    :goto_0
    return-void

    .line 1542
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "out"

    .prologue
    .line 1571
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1573
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1575
    const-string v0, "4,true "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1585
    :goto_0
    return-void

    .line 1579
    :cond_0
    const-string v0, "5,false "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1581
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-static {p0, p1}, Landroid/view/ViewDebug$DumpZ;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 8
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1349
    const/4 v3, 0x0

    .line 1351
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1352
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 1353
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 1354
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1355
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1361
    .end local v2           #group:Landroid/view/ViewGroup;
    :goto_0
    const-string v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1366
    if-eqz v4, :cond_3

    .line 1367
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v4

    .line 1370
    .end local v4           #out:Ljava/io/BufferedWriter;
    .end local v5           #view:Landroid/view/View;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 1359
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    .restart local v5       #view:Landroid/view/View;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1363
    .end local v5           #view:Landroid/view/View;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1364
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v6, "View"

    const-string v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1366
    if-eqz v3, :cond_0

    .line 1367
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1366
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    .line 1367
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v6

    .line 1366
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1363
    :catch_1
    move-exception v1

    goto :goto_2

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    .restart local v5       #view:Landroid/view/View;
    :cond_3
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 4
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1631
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1632
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1634
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1635
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1636
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1638
    :catch_0
    move-exception v0

    .line 1639
    .local v0, e:Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1611
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1624
    :cond_0
    return-void

    .line 1615
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1616
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1617
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1618
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1619
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1616
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1621
    .restart local v2       #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .parameter "context"
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1377
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1390
    :cond_0
    return-void

    .line 1381
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1382
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1383
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1384
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1385
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1382
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1387
    .restart local v2       #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 8
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1423
    const-string v3, ""

    .line 1425
    .local v3, strValue:Ljava/lang/String;
    instance-of v5, p1, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v4, p1

    .line 1427
    check-cast v4, Landroid/view/View;

    .line 1429
    .local v4, tempView:Landroid/view/View;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1430
    .local v2, location:[I
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1433
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {p0, v5}, Landroid/view/ViewDebug$DumpZ;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #strValue:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1434
    .restart local v3       #strValue:Ljava/lang/String;
    const-string v5, "id"

    invoke-static {v5, v3, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1437
    const-string/jumbo v5, "x"

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1440
    const-string/jumbo v5, "y"

    aget v6, v2, v7

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1443
    const-string/jumbo v5, "width"

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1446
    const-string v5, "height"

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1449
    const-string v5, "enable"

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1451
    const-string v5, "longclickable"

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1453
    const-string v5, "clickable"

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1455
    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-ne v5, v7, :cond_0

    .line 1457
    const-string v5, "hasfocus"

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1469
    .end local v2           #location:[I
    .end local v4           #tempView:Landroid/view/View;
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 1471
    check-cast v1, Landroid/view/ViewGroup;

    .line 1472
    .local v1, group:Landroid/view/ViewGroup;
    const-string v5, "childcount"

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1475
    .end local v1           #group:Landroid/view/ViewGroup;
    :cond_1
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 1477
    check-cast v4, Landroid/widget/TextView;

    .line 1478
    .local v4, tempView:Landroid/widget/TextView;
    const-string/jumbo v5, "text"

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1481
    .end local v4           #tempView:Landroid/widget/TextView;
    :cond_2
    instance-of v5, p1, Landroid/widget/Checkable;

    if-eqz v5, :cond_3

    move-object v0, p1

    .line 1483
    check-cast v0, Landroid/widget/Checkable;

    .line 1484
    .local v0, checkable:Landroid/widget/Checkable;
    const-string v5, "checked"

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1528
    .end local v0           #checkable:Landroid/widget/Checkable;
    :cond_3
    return-void
.end method

.method private static dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    .locals 5
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 1398
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1414
    :goto_0
    return v2

    .line 1401
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_1

    .line 1402
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1401
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1405
    :cond_1
    const-string v3, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1406
    const-string v3, "hash"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1407
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1408
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    const/4 v2, 0x1

    goto :goto_0

    .line 1409
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 1410
    .local v0, e:Ljava/io/IOException;
    const-string v3, "View"

    const-string v4, "Error while dumping hierarchy tree"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1592
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1593
    .local v2, resources:Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 1595
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1604
    .local v1, fieldValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1598
    .end local v1           #fieldValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1599
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1600
    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_0

    .line 1602
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #fieldValue:Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_0
.end method
