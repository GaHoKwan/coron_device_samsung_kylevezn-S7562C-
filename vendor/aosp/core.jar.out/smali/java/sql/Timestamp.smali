.class public Ljava/sql/Timestamp;
.super Ljava/util/Date;
.source "Timestamp.java"


# static fields
.field private static final PADDING:Ljava/lang/String; = "000000000"

.field private static final TIME_FORMAT_REGEX:Ljava/lang/String; = "[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}.*"

.field private static final serialVersionUID:J = 0x2618d5c80153bf65L


# instance fields
.field private nanos:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1
    .parameter "theYear"
    .parameter "theMonth"
    .parameter "theDate"
    .parameter "theHour"
    .parameter "theMinute"
    .parameter "theSecond"
    .parameter "theNano"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    invoke-direct/range {p0 .. p6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 84
    if-ltz p7, :cond_0

    const v0, 0x3b9ac9ff

    if-le p7, v0, :cond_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 87
    :cond_1
    iput p7, p0, Ljava/sql/Timestamp;->nanos:I

    .line 88
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "theTime"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;->setTimeImpl(J)V

    .line 105
    return-void
.end method

.method private static badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .parameter "s"

    .prologue
    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp format must be yyyy-MM-dd HH:mm:ss.fffffffff; was \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private format(IILjava/lang/StringBuilder;)V
    .locals 4
    .parameter "date"
    .parameter "digits"
    .parameter "sb"

    .prologue
    .line 385
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    if-lez v1, :cond_0

    .line 387
    const-string v1, "000000000"

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    return-void
.end method

.method private setTimeImpl(J)V
    .locals 5
    .parameter "theTime"

    .prologue
    const-wide/16 v3, 0x3e8

    .line 333
    rem-long v1, p1, v3

    long-to-int v0, v1

    .line 334
    .local v0, milliseconds:I
    int-to-long v1, v0

    sub-long/2addr p1, v1

    .line 335
    if-gez v0, :cond_0

    .line 336
    sub-long/2addr p1, v3

    .line 337
    add-int/lit16 v0, v0, 0x3e8

    .line 339
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 340
    const v1, 0xf4240

    mul-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 341
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 13
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 406
    if-nez p0, :cond_0

    .line 407
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Argument cannot be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 411
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 412
    const-string v10, "[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}.*"

    invoke-static {v10, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 413
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v10

    throw v10

    .line 416
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, df:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v12}, Ljava/text/ParsePosition;-><init>(I)V

    .line 428
    .local v4, pp:Ljava/text/ParsePosition;
    :try_start_0
    invoke-virtual {v0, p0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 433
    .local v6, theDate:Ljava/util/Date;
    if-nez v6, :cond_2

    .line 434
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v10

    throw v10

    .line 429
    .end local v6           #theDate:Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 430
    .local v1, e:Ljava/lang/Exception;
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v10

    throw v10

    .line 445
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #theDate:Ljava/util/Date;
    :cond_2
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 446
    .local v3, position:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v5, v10, v3

    .line 449
    .local v5, remaining:I
    if-nez v5, :cond_4

    .line 451
    const/4 v8, 0x0

    .line 495
    .local v8, theNanos:I
    :goto_0
    if-ltz v8, :cond_3

    const v10, 0x3b9ac9ff

    if-le v8, v10, :cond_8

    .line 496
    :cond_3
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v10

    throw v10

    .line 457
    .end local v8           #theNanos:I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    const-string v11, ".n"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 458
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v10

    throw v10

    .line 465
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    const-string v11, ".nnnnnnnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_6

    .line 466
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v10

    throw v10

    .line 470
    :cond_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_7

    .line 471
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad input string format: expected \'.\' not \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' in \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 475
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    add-int/lit8 v2, v10, -0x1

    .line 478
    .local v2, nanoLength:I
    add-int/lit8 v10, v3, 0x1

    add-int/lit8 v11, v3, 0x1

    add-int/2addr v11, v2

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 484
    .local v7, theNanoString:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "000000000"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 485
    const/16 v10, 0x9

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 488
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .restart local v8       #theNanos:I
    goto/16 :goto_0

    .line 489
    .end local v8           #theNanos:I
    :catch_1
    move-exception v1

    .line 491
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v10

    throw v10

    .line 499
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #nanoLength:I
    .end local v7           #theNanoString:Ljava/lang/String;
    .restart local v8       #theNanos:I
    :cond_8
    new-instance v9, Ljava/sql/Timestamp;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/sql/Timestamp;-><init>(J)V

    .line 500
    .local v9, theTimestamp:Ljava/sql/Timestamp;
    invoke-virtual {v9, v8}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 502
    return-object v9
.end method


# virtual methods
.method public after(Ljava/sql/Timestamp;)Z
    .locals 8
    .parameter "theTimestamp"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    .line 118
    .local v2, thisTime:J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 121
    .local v0, compareTime:J
    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v4

    .line 125
    :cond_1
    cmp-long v6, v2, v0

    if-gez v6, :cond_2

    move v4, v5

    .line 126
    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v6

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v7

    if-gt v6, v7, :cond_0

    move v4, v5

    .line 135
    goto :goto_0
.end method

.method public before(Ljava/sql/Timestamp;)Z
    .locals 8
    .parameter "theTimestamp"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 149
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    .line 150
    .local v2, thisTime:J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 153
    .local v0, compareTime:J
    cmp-long v6, v2, v0

    if-gez v6, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v4

    .line 157
    :cond_1
    cmp-long v6, v2, v0

    if-lez v6, :cond_2

    move v4, v5

    .line 158
    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v6

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v7

    if-lt v6, v7, :cond_0

    move v4, v5

    .line 167
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/sql/Timestamp;)I
    .locals 3
    .parameter "theTimestamp"

    .prologue
    .line 217
    invoke-super {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 218
    .local v0, result:I
    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    .line 220
    .local v2, thisNano:I
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v1

    .line 221
    .local v1, thatNano:I
    if-le v2, v1, :cond_1

    .line 222
    const/4 v0, 0x1

    .line 229
    .end local v0           #result:I
    .end local v1           #thatNano:I
    .end local v2           #thisNano:I
    :cond_0
    :goto_0
    return v0

    .line 223
    .restart local v0       #result:I
    .restart local v1       #thatNano:I
    .restart local v2       #thisNano:I
    :cond_1
    if-ne v2, v1, :cond_2

    .line 224
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public compareTo(Ljava/util/Date;)I
    .locals 1
    .parameter "theObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 196
    check-cast p1, Ljava/sql/Timestamp;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "theObject"

    .prologue
    .line 244
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_0

    .line 245
    check-cast p1, Ljava/sql/Timestamp;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->equals(Ljava/sql/Timestamp;)Z

    move-result v0

    .line 247
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/sql/Timestamp;)Z
    .locals 5
    .parameter "theTimestamp"

    .prologue
    const/4 v0, 0x0

    .line 260
    if-nez p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v1

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getNanos()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    return v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 287
    invoke-super {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 288
    .local v0, theTime:J
    iget v2, p0, Ljava/sql/Timestamp;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 289
    return-wide v0
.end method

.method public setNanos(I)V
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 302
    if-ltz p1, :cond_0

    const v0, 0x3b9ac9ff

    if-le p1, v0, :cond_1

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    iput p1, p0, Ljava/sql/Timestamp;->nanos:I

    .line 306
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "theTime"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;->setTimeImpl(J)V

    .line 320
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3a

    const/16 v5, 0x30

    const/16 v4, 0x2d

    const/4 v3, 0x2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 355
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 356
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 358
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 360
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 362
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 364
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result v1

    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 366
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    iget v1, p0, Ljava/sql/Timestamp;->nanos:I

    if-nez v1, :cond_1

    .line 368
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 370
    :cond_1
    iget v1, p0, Ljava/sql/Timestamp;->nanos:I

    const/16 v2, 0x9

    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    .line 371
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
