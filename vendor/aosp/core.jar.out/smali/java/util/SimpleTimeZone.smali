.class public Ljava/util/SimpleTimeZone;
.super Ljava/util/TimeZone;
.source "SimpleTimeZone.java"


# static fields
.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x598a29f2ea10a5aL


# instance fields
.field private dstSavings:I

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private rawOffset:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startYear:I

.field private useDaylight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 824
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "dstSavings"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endDay"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endDayOfWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endMode"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endMonth"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endTime"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "monthLength"

    const-class v4, [B

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "rawOffset"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startDay"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startDayOfWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startMode"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startMonth"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startTime"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startYear"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "useDaylight"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/SimpleTimeZone;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "offset"
    .parameter "name"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 75
    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 90
    invoke-virtual {p0, p2}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 91
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 92
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 12
    .parameter "offset"
    .parameter "name"
    .parameter "startMonth"
    .parameter "startDay"
    .parameter "startDayOfWeek"
    .parameter "startTime"
    .parameter "endMonth"
    .parameter "endDay"
    .parameter "endDayOfWeek"
    .parameter "endTime"

    .prologue
    .line 166
    const v11, 0x36ee80

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    .line 168
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .locals 3
    .parameter "offset"
    .parameter "name"
    .parameter "startMonth"
    .parameter "startDay"
    .parameter "startDayOfWeek"
    .parameter "startTime"
    .parameter "endMonth"
    .parameter "endDay"
    .parameter "endDayOfWeek"
    .parameter "endTime"
    .parameter "daylightSavings"

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 216
    if-gtz p11, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid daylightSavings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iput p11, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 222
    invoke-virtual {p0, p3, p4, p5, p6}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 223
    invoke-virtual {p0, p7, p8, p9, p10}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 224
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 13
    .parameter "offset"
    .parameter "name"
    .parameter "startMonth"
    .parameter "startDay"
    .parameter "startDayOfWeek"
    .parameter "startTime"
    .parameter "startTimeMode"
    .parameter "endMonth"
    .parameter "endDay"
    .parameter "endDayOfWeek"
    .parameter "endTime"
    .parameter "endTimeMode"
    .parameter "daylightSavings"

    .prologue
    .line 277
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p13

    invoke-direct/range {v1 .. v12}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    .line 279
    move/from16 v0, p7

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 280
    move/from16 v0, p12

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 281
    return-void
.end method

.method private checkDay(II)V
    .locals 3
    .parameter "month"
    .parameter "day"

    .prologue
    .line 562
    if-lez p2, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p1

    if-le p2, v0, :cond_1

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day of month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_1
    return-void
.end method

.method private checkRange(III)V
    .locals 3
    .parameter "month"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 550
    if-ltz p1, :cond_0

    const/16 v0, 0xb

    if-le p1, v0, :cond_1

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_1
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/4 v0, 0x7

    if-le p2, v0, :cond_3

    .line 554
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_3
    if-ltz p3, :cond_4

    const v0, 0x5265c00

    if-lt p3, v0, :cond_5

    .line 557
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_5
    return-void
.end method

.method private isLeapYear(I)Z
    .locals 3
    .parameter "year"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 524
    const/16 v2, 0x62e

    if-le p1, v2, :cond_2

    .line 525
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 525
    goto :goto_0

    .line 527
    :cond_2
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private mod7(I)I
    .locals 1
    .parameter "num1"

    .prologue
    .line 531
    rem-int/lit8 v0, p1, 0x7

    .line 532
    .local v0, rem:I
    if-gez p1, :cond_0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .end local v0           #rem:I
    :cond_0
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 894
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 895
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v3, "rawOffset"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 896
    const-string v3, "useDaylight"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 897
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_0

    .line 898
    const-string v3, "endMonth"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 899
    const-string v3, "endTime"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 900
    const-string v3, "startMonth"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 901
    const-string v3, "startTime"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 902
    const-string v3, "startYear"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 904
    :cond_0
    const-string v3, "serialVersionOnStream"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 905
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_1

    .line 906
    iput v6, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iput v6, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 907
    const-string v3, "endDay"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 908
    const-string v3, "endDayOfWeek"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 909
    const-string v3, "startDay"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 910
    const-string v3, "startDayOfWeek"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 934
    :cond_1
    :goto_0
    return-void

    .line 913
    :cond_2
    const-string v3, "dstSavings"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 914
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_1

    .line 915
    const-string v3, "endMode"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 916
    const-string v3, "startMode"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 917
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 918
    .local v1, length:I
    new-array v2, v1, [B

    .line 919
    .local v2, values:[B
    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    .line 920
    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 921
    aget-byte v3, v2, v4

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 922
    aget-byte v3, v2, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 923
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v3, v5, :cond_3

    .line 924
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 926
    :cond_3
    aget-byte v3, v2, v6

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 927
    const/4 v3, 0x3

    aget-byte v3, v2, v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 928
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v3, v5, :cond_1

    .line 929
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_0
.end method

.method private setEndMode()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 568
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_2

    .line 569
    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 581
    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_5

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 582
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_0

    .line 583
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-direct {p0, v2, v0, v3}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 585
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v0, v4, :cond_7

    .line 586
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-direct {p0, v0, v2}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 593
    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v0, v1, :cond_1

    .line 594
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 596
    :cond_1
    return-void

    .line 570
    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-gez v0, :cond_4

    .line 571
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 572
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-gez v0, :cond_3

    .line 573
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 574
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    .line 576
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    .line 579
    :cond_4
    iput v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    .line 581
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 583
    :cond_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_2

    .line 588
    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v2, -0x5

    if-lt v0, v2, :cond_8

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 589
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of week in month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setStartMode()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 677
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_2

    .line 678
    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 690
    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_5

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 691
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_0

    .line 692
    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-direct {p0, v2, v0, v3}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 694
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v4, :cond_7

    .line 695
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-direct {p0, v0, v2}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 702
    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v1, :cond_1

    .line 703
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 705
    :cond_1
    return-void

    .line 679
    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-gez v0, :cond_4

    .line 680
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 681
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-gez v0, :cond_3

    .line 682
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 683
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    .line 685
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    .line 688
    :cond_4
    iput v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    .line 690
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 692
    :cond_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_2

    .line 697
    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v2, -0x5

    if-lt v0, v2, :cond_8

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 698
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of week in month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 13
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v12, 0x4

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 844
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .local v2, sEndDay:I
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v3, v7, 0x1

    .local v3, sEndDayOfWeek:I
    iget v4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .local v4, sStartDay:I
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v5, v7, 0x1

    .line 845
    .local v5, sStartDayOfWeek:I
    iget-boolean v7, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v7, :cond_2

    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v10, :cond_0

    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v7, v10, :cond_2

    .line 847
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 848
    .local v0, cal:Ljava/util/Calendar;
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v7, v10, :cond_1

    .line 849
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 850
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 851
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 852
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v7, v11, :cond_1

    .line 853
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    .line 856
    :cond_1
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v7, v10, :cond_2

    .line 857
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 858
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 859
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 860
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v11, :cond_2

    .line 861
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v5

    .line 865
    .end local v0           #cal:Ljava/util/Calendar;
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 866
    .local v1, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v7, "dstSavings"

    iget v9, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 867
    const-string v7, "endDay"

    invoke-virtual {v1, v7, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 868
    const-string v7, "endDayOfWeek"

    invoke-virtual {v1, v7, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 869
    const-string v7, "endMode"

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 870
    const-string v7, "endMonth"

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 871
    const-string v7, "endTime"

    iget v9, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 872
    const-string v7, "monthLength"

    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    const-string v7, "rawOffset"

    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 874
    const-string v7, "serialVersionOnStream"

    invoke-virtual {v1, v7, v11}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 875
    const-string v7, "startDay"

    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 876
    const-string v7, "startDayOfWeek"

    invoke-virtual {v1, v7, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 877
    const-string v7, "startMode"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 878
    const-string v7, "startMonth"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 879
    const-string v7, "startTime"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 880
    const-string v7, "startYear"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 881
    const-string v7, "useDaylight"

    iget-boolean v9, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 882
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 883
    invoke-virtual {p1, v12}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 884
    new-array v6, v12, [B

    .line 885
    .local v6, values:[B
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 886
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v11, :cond_3

    move v7, v8

    :goto_0
    int-to-byte v7, v7

    aput-byte v7, v6, v11

    .line 887
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 888
    const/4 v7, 0x3

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v9, v11, :cond_4

    :goto_1
    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 889
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 890
    return-void

    .line 886
    :cond_3
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 888
    :cond_4
    iget v8, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SimpleTimeZone;

    .line 293
    .local v0, zone:Ljava/util/SimpleTimeZone;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 309
    instance-of v2, p1, Ljava/util/SimpleTimeZone;

    if-nez v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 312
    check-cast v0, Ljava/util/SimpleTimeZone;

    .line 313
    .local v0, tz:Ljava/util/SimpleTimeZone;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDSTSavings()I
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 12
    .parameter "era"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 336
    if-eqz p1, :cond_0

    const/4 v9, 0x1

    if-eq p1, v9, :cond_0

    .line 337
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid era: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 339
    :cond_0
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, p3, v0, v1}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 340
    const/4 v9, 0x1

    if-ne p3, v9, :cond_1

    const/16 v9, 0x1d

    move/from16 v0, p4

    if-ne v0, v9, :cond_1

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 341
    :cond_1
    move/from16 v0, p4

    invoke-direct {p0, p3, v0}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 344
    :cond_2
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    iget v9, p0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ge p2, v9, :cond_4

    .line 345
    :cond_3
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 461
    :goto_0
    return v9

    .line 347
    :cond_4
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ge v9, v10, :cond_5

    .line 348
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-le p3, v9, :cond_7

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ge p3, v9, :cond_7

    .line 349
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_0

    .line 352
    :cond_5
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-lt p3, v9, :cond_6

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-le p3, v9, :cond_7

    .line 353
    :cond_6
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_0

    .line 357
    :cond_7
    const/4 v6, 0x0

    .local v6, ruleDay:I
    sub-int v9, p5, p4

    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v4

    .line 358
    .local v4, firstDayOfMonth:I
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne p3, v9, :cond_c

    .line 359
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMode:I

    packed-switch v9, :pswitch_data_0

    .line 394
    :cond_8
    :goto_1
    move/from16 v0, p4

    if-gt v6, v0, :cond_9

    move/from16 v0, p4

    if-ne v6, v0, :cond_c

    iget v9, p0, Ljava/util/SimpleTimeZone;->startTime:I

    move/from16 v0, p6

    if-ge v0, v9, :cond_c

    .line 395
    :cond_9
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_0

    .line 361
    :pswitch_0
    iget v6, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 362
    goto :goto_1

    .line 364
    :pswitch_1
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ltz v9, :cond_a

    .line 365
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    sub-int/2addr v9, v4

    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    goto :goto_1

    .line 368
    :cond_a
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    iget v10, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    aget-byte v3, v9, v10

    .line 369
    .local v3, daysInMonth:I
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 371
    add-int/lit8 v3, v3, 0x1

    .line 373
    :cond_b
    add-int/lit8 v9, v3, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int v11, v4, v3

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDay:I

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    .line 379
    goto :goto_1

    .line 381
    .end local v3           #daysInMonth:I
    :pswitch_2
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    .line 384
    goto :goto_1

    .line 386
    :pswitch_3
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    .line 389
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eq v6, v9, :cond_8

    .line 390
    add-int/lit8 v6, v6, -0x7

    goto :goto_1

    .line 399
    :cond_c
    iget v9, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    sub-int v8, v9, v10

    .line 400
    .local v8, ruleTime:I
    add-int/lit8 v9, p3, 0x1

    rem-int/lit8 v5, v9, 0xc

    .line 401
    .local v5, nextMonth:I
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-eq p3, v9, :cond_d

    if-gez v8, :cond_15

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v5, v9, :cond_15

    .line 402
    :cond_d
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    packed-switch v9, :pswitch_data_1

    .line 437
    :cond_e
    :goto_2
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 438
    .local v7, ruleMonth:I
    if-gez v8, :cond_10

    .line 439
    const v9, 0x5265c00

    div-int v9, v8, v9

    rsub-int/lit8 v2, v9, 0x1

    .line 440
    .local v2, changeDays:I
    const v9, 0x5265c00

    rem-int v9, v8, v9

    const v10, 0x5265c00

    add-int v8, v9, v10

    .line 441
    sub-int/2addr v6, v2

    .line 442
    if-gtz v6, :cond_10

    .line 443
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_f

    .line 444
    const/16 v7, 0xb

    .line 446
    :cond_f
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v9, v9, v7

    add-int/2addr v6, v9

    .line 447
    const/4 v9, 0x1

    if-ne v7, v9, :cond_10

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 448
    add-int/lit8 v6, v6, 0x1

    .line 453
    .end local v2           #changeDays:I
    :cond_10
    if-ne p3, v7, :cond_14

    .line 454
    move/from16 v0, p4

    if-lt v6, v0, :cond_11

    move/from16 v0, p4

    if-ne v6, v0, :cond_15

    move/from16 v0, p6

    if-lt v0, v8, :cond_15

    .line 455
    :cond_11
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto/16 :goto_0

    .line 404
    .end local v7           #ruleMonth:I
    :pswitch_4
    iget v6, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 405
    goto :goto_2

    .line 407
    :pswitch_5
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ltz v9, :cond_12

    .line 408
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    sub-int/2addr v9, v4

    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    goto :goto_2

    .line 411
    :cond_12
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    iget v10, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    aget-byte v3, v9, v10

    .line 412
    .restart local v3       #daysInMonth:I
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 413
    add-int/lit8 v3, v3, 0x1

    .line 415
    :cond_13
    add-int/lit8 v9, v3, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int v11, v4, v3

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDay:I

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    .line 421
    goto :goto_2

    .line 423
    .end local v3           #daysInMonth:I
    :pswitch_6
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    .line 426
    goto/16 :goto_2

    .line 428
    :pswitch_7
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    .line 431
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eq v6, v9, :cond_e

    .line 432
    add-int/lit8 v6, v6, -0x7

    goto/16 :goto_2

    .line 457
    .restart local v7       #ruleMonth:I
    :cond_14
    if-eq v5, v7, :cond_15

    .line 458
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto/16 :goto_0

    .line 461
    .end local v7           #ruleMonth:I
    :cond_15
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v9, v10

    goto/16 :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 402
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getOffset(J)I
    .locals 8
    .parameter "time"

    .prologue
    const/4 v1, 0x1

    .line 467
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 471
    :goto_0
    return v0

    .line 470
    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    const/4 v0, 0x0

    invoke-static {v2, v3, v0}, Ljava/util/Grego;->timeToFields(J[I)[I

    move-result-object v7

    .line 471
    .local v7, fields:[I
    const/4 v0, 0x0

    aget v2, v7, v0

    aget v3, v7, v1

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljava/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    goto :goto_0
.end method

.method public getRawOffset()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5
    .parameter "zone"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 500
    instance-of v3, p1, Ljava/util/SimpleTimeZone;

    if-nez v3, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 503
    check-cast v0, Ljava/util/SimpleTimeZone;

    .line 504
    .local v0, tz:Ljava/util/SimpleTimeZone;
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v4, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v3, v4, :cond_0

    .line 507
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-nez v3, :cond_3

    .line 508
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 510
    :cond_3
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v3, v4, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    add-int v0, v1, v2

    .line 490
    .local v0, hashCode:I
    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_0

    .line 491
    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 495
    :cond_0
    monitor-exit p0

    return v0

    .line 489
    .end local v0           #hashCode:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 2
    .parameter "time"

    .prologue
    .line 520
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    move-result v0

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getRawOffset()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDSTSavings(I)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 542
    if-lez p1, :cond_0

    .line 543
    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 547
    return-void

    .line 545
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setEndRule(III)V
    .locals 1
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "time"

    .prologue
    .line 611
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 612
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 614
    iput p3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 615
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 616
    return-void
.end method

.method public setEndRule(IIII)V
    .locals 0
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 634
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 635
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 636
    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 637
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 638
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 639
    return-void
.end method

.method public setEndRule(IIIIZ)V
    .locals 1
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"
    .parameter "after"

    .prologue
    .line 658
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 659
    if-eqz p5, :cond_0

    .end local p2
    :goto_0
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 660
    neg-int v0, p3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 661
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 662
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 663
    return-void

    .line 659
    .restart local p2
    :cond_0
    neg-int p2, p2

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 673
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 674
    return-void
.end method

.method public setStartRule(III)V
    .locals 1
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "time"

    .prologue
    .line 720
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 721
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 722
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 723
    iput p3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 724
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 725
    return-void
.end method

.method public setStartRule(IIII)V
    .locals 0
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 743
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 744
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 745
    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 746
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 747
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 748
    return-void
.end method

.method public setStartRule(IIIIZ)V
    .locals 1
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"
    .parameter "after"

    .prologue
    .line 767
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 768
    if-eqz p5, :cond_0

    .end local p2
    :goto_0
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 769
    neg-int v0, p3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 770
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 771
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 772
    return-void

    .line 768
    .restart local p2
    :cond_0
    neg-int p2, p2

    goto :goto_0
.end method

.method public setStartYear(I)V
    .locals 1
    .parameter "year"

    .prologue
    .line 782
    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 784
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",offset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",dstSavings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",useDaylight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startYear="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startMonth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startDay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startDayOfWeek="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endMonth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endDay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endDayOfWeek="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v2, v3, :cond_0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public useDaylightTime()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
