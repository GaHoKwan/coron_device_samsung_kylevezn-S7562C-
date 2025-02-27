.class Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x4

.field static final CONTENT_APP_IDLE_OFFSET:J = 0x3a98L

.field static final DEBUG:Z = false

.field static final DHA_INCREASE_THRESHOLD:J = 0xa00000L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final EMPTY_APP_IDLE_OFFSET:J = 0x1d4c0L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final FREEMEM_FOR_LARGEMEM_MODEL:J = 0x1f400000L

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x3

.field static final HIDDEN_APP_MAX_ADJ:I = 0xf

.field static HIDDEN_APP_MIN_ADJ:I = 0x0

.field static final HOME_APP_ADJ:I = 0x6

.field static final INIT_HIDDEN_APPS:I = 0x14

.field static final MAX_HIDDEN_APPS:I = 0x18

.field static final MAX_HIDDEN_APPS_FOR_LOWMEM:I = 0x19

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final MIN_DHA_MARGIN_HIGH:J = 0x1800000L

.field static final MIN_DHA_MARGIN_LOW:J = 0x800000L

.field static final MIN_HIDDEN_APPS:I = 0x2

.field static final MIN_HIDDEN_APPS_FOR_DHA:I = 0xf

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

#the value of this static final field might be set in the static constructor
.field static final TOTAL_DEVICE_MEMORY:J = 0x0L

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;


# instance fields
.field private mHaveDisplaySize:Z

.field private mMinDHAMargin:J

.field private final mOomAdj:[I

.field private final mOomKillDepth:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private mSzDHAThreshold:J

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/16 v0, 0x9

    sput v0, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 105
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-array v1, v4, [I

    aput v5, v1, v5

    aput v2, v1, v2

    aput v3, v1, v3

    const/4 v2, 0x3

    aput v6, v1, v2

    sget v2, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    aput v2, v1, v6

    const/4 v2, 0x5

    const/16 v3, 0xf

    aput v3, v1, v2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 151
    new-array v1, v4, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 160
    new-array v1, v4, [J

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 169
    new-array v1, v4, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomKillDepth:[I

    .line 175
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 181
    const-wide/32 v1, 0x2000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 193
    const-wide/32 v1, 0x1800000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mMinDHAMargin:J

    .line 202
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 203
    .local v0, minfo:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 209
    invoke-direct {p0, v5, v5, v5}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 210
    return-void

    .line 151
    :array_0
    .array-data 0x8
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x30t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x60t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x70t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 160
    :array_1
    .array-data 0x8
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 169
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static getInitHiddenApps()I
    .locals 4

    .prologue
    .line 390
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 392
    const/4 v0, 0x6

    .line 395
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method static getMaxHiddenAppsForLowmen()I
    .locals 4

    .prologue
    .line 410
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 412
    const/16 v0, 0xa

    .line 415
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x19

    goto :goto_0
.end method

.method static getMinHiddenAppsForDHA()I
    .locals 4

    .prologue
    .line 400
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 402
    const/4 v0, 0x5

    .line 405
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method

.method static totalDeviceMemory()J
    .locals 4

    .prologue
    .line 108
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 111
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 113
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private updateOomLevels(IIZ)V
    .locals 19
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "write"

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v17, 0x12c

    sub-long v15, v15, v17

    long-to-float v15, v15

    const v16, 0x44b54000

    div-float v14, v15, v16

    .line 233
    .local v14, scaleMem:F
    const v11, 0x25800

    .line 236
    .local v11, minSize:I
    const v9, 0x1fa400

    .line 238
    .local v9, maxSize:I
    mul-int v15, p1, p2

    int-to-float v15, v15

    int-to-float v0, v11

    move/from16 v16, v0

    sub-float v15, v15, v16

    const v16, 0x1d4c00

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 240
    .local v13, scaleDisp:F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v2, adjString:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v10, memString:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v6, killString:Ljava/lang/StringBuilder;
    cmpl-float v15, v14, v13

    if-lez v15, :cond_2

    move v12, v14

    .line 245
    .local v12, scale:F
    :goto_0
    const/4 v15, 0x0

    cmpg-float v15, v12, v15

    if-gez v15, :cond_3

    const/4 v12, 0x0

    .line 248
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    if-ge v5, v15, :cond_4

    .line 249
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    aget-wide v7, v15, v5

    .line 250
    .local v7, low:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    aget-wide v3, v15, v5

    .line 251
    .local v3, high:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    long-to-float v0, v7

    move/from16 v16, v0

    sub-long v17, v3, v7

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v0, v0

    move-wide/from16 v16, v0

    aput-wide v16, v15, v5

    .line 253
    if-lez v5, :cond_1

    .line 254
    const/16 v15, 0x2c

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    const/16 v15, 0x2c

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    const/16 v15, 0x2c

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v15, v15, v5

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v15, v15, v5

    const-wide/16 v17, 0x400

    mul-long v15, v15, v17

    const-wide/16 v17, 0x1000

    div-long v15, v15, v17

    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomKillDepth:[I

    aget v15, v15, v5

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3           #high:J
    .end local v5           #i:I
    .end local v7           #low:J
    .end local v12           #scale:F
    :cond_2
    move v12, v13

    .line 244
    goto :goto_0

    .line 246
    .restart local v12       #scale:F
    :cond_3
    const/high16 v15, 0x3f80

    cmpl-float v15, v12, v15

    if-lez v15, :cond_0

    const/high16 v12, 0x3f80

    goto :goto_1

    .line 270
    .restart local v5       #i:I
    :cond_4
    if-eqz p3, :cond_5

    .line 271
    const-string v15, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v15, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v15, "/sys/module/lowmemorykiller/parameters/adj_killed_level"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_5
    const/high16 v15, 0x4b00

    const/high16 v16, 0x4b80

    mul-float v16, v16, v12

    add-float v15, v15, v16

    float-to-long v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/am/ProcessList;->mMinDHAMargin:J

    .line 293
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "data"

    .prologue
    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 325
    if-eqz v2, :cond_2

    .line 327
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 332
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 328
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 329
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 322
    :catch_1
    move-exception v0

    .line 323
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    if-eqz v1, :cond_0

    .line 327
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 328
    :catch_2
    move-exception v3

    goto :goto_0

    .line 325
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 327
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 329
    :cond_1
    :goto_3
    throw v3

    .line 328
    :catch_3
    move-exception v4

    goto :goto_3

    .line 325
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 322
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .parameter "wm"

    .prologue
    const/4 v3, 0x1

    .line 213
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 214
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 215
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 216
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 217
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 218
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 221
    .end local v0           #p:Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getLMKThreshold(I)J
    .locals 4
    .parameter "adj"

    .prologue
    const/16 v0, 0xf

    .line 308
    if-ge p1, v0, :cond_0

    sget v0, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 5
    .parameter "adjustment"

    .prologue
    const-wide/16 v3, 0x400

    .line 296
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 301
    :goto_1
    return-wide v1

    .line 296
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_1
.end method

.method getMinDHAMargin()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mMinDHAMargin:J

    return-wide v0
.end method

.method public updateHiddenAppNum(II)I
    .locals 12
    .parameter "maxHiddenApp"
    .parameter "curHidden"

    .prologue
    const-wide/16 v10, 0x0

    .line 336
    move v0, p1

    .line 338
    .local v0, ret:I
    sget-object v6, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v6, :cond_2

    .line 340
    sget-object v6, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 343
    sget-object v6, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v6

    sget-object v8, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v8

    add-long v2, v6, v8

    .line 344
    .local v2, szFreeMem:J
    sget-object v6, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getLowFreeSize()J

    move-result-wide v6

    sget-object v8, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getLowCachedSize()J

    move-result-wide v8

    add-long v4, v6, v8

    .line 355
    .local v4, szLowFreeMem:J
    cmp-long v6, v2, v10

    if-nez v6, :cond_0

    move v1, v0

    .line 386
    .end local v0           #ret:I
    .end local v2           #szFreeMem:J
    .end local v4           #szLowFreeMem:J
    .local v1, ret:I
    :goto_0
    return v1

    .line 357
    .end local v1           #ret:I
    .restart local v0       #ret:I
    .restart local v2       #szFreeMem:J
    .restart local v4       #szLowFreeMem:J
    :cond_0
    cmp-long v6, v4, v10

    if-nez v6, :cond_1

    .line 358
    move-wide v4, v2

    .line 362
    :cond_1
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    invoke-static {}, Lcom/android/server/am/ProcessList;->getMinHiddenAppsForDHA()I

    move-result v6

    if-le v0, v6, :cond_3

    .line 363
    add-int/lit8 v0, v0, -0x1

    .end local v2           #szFreeMem:J
    .end local v4           #szLowFreeMem:J
    :cond_2
    :goto_1
    move v1, v0

    .line 386
    .end local v0           #ret:I
    .restart local v1       #ret:I
    goto :goto_0

    .line 370
    .end local v1           #ret:I
    .restart local v0       #ret:I
    .restart local v2       #szFreeMem:J
    .restart local v4       #szLowFreeMem:J
    :cond_3
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/32 v8, 0xa00000

    add-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    const/16 v6, 0x18

    if-ge v0, v6, :cond_2

    if-gt p1, p2, :cond_2

    .line 373
    invoke-static {}, Lcom/android/server/am/ProcessList;->getMaxHiddenAppsForLowmen()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 376
    :cond_4
    const-wide/32 v6, 0x1f400000

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
