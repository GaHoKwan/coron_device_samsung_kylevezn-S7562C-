.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$Control;,
        Ljava/util/ResourceBundle$SimpleControl;,
        Ljava/util/ResourceBundle$NoFallbackControl;,
        Ljava/util/ResourceBundle$MissingBundle;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final MISSING:Ljava/util/ResourceBundle; = null

.field private static final MISSINGBASE:Ljava/util/ResourceBundle; = null

.field private static final UNDER_SCORE:Ljava/lang/String; = "_"

.field private static final cache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ResourceBundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cacheLocale:Ljava/util/Locale;


# instance fields
.field private lastLoadTime:J

.field private locale:Ljava/util/Locale;

.field protected parent:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Ljava/util/ResourceBundle$MissingBundle;

    invoke-direct {v0}, Ljava/util/ResourceBundle$MissingBundle;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    .line 111
    new-instance v0, Ljava/util/ResourceBundle$MissingBundle;

    invoke-direct {v0}, Ljava/util/ResourceBundle$MissingBundle;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    .line 113
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/ResourceBundle;->lastLoadTime:J

    .line 123
    return-void
.end method

.method static synthetic access$000(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 608
    sget-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-void
.end method

.method public static clearCache(Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 612
    if-nez p0, :cond_0

    .line 613
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 615
    :cond_0
    sget-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method public static getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 2
    .parameter "bundleName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 137
    .local v0, classLoader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 140
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 2
    .parameter "bundleName"
    .parameter "locale"

    .prologue
    .line 156
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 157
    .local v0, classLoader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 160
    :cond_0
    invoke-static {p0, p1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 4
    .parameter "bundleName"
    .parameter "locale"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 214
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 215
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 217
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 218
    .local v1, defaultLocale:Ljava/util/Locale;
    sget-object v2, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 219
    sget-object v2, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 220
    sput-object v1, Ljava/util/ResourceBundle;->cacheLocale:Ljava/util/Locale;

    .line 222
    :cond_2
    const/4 v0, 0x0

    .line 223
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 224
    const/4 v2, 0x0

    invoke-static {v2, p0, p1, p2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 226
    :cond_3
    if-nez v0, :cond_4

    .line 227
    const/4 v2, 0x1

    invoke-static {v2, p0, v1, p2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 228
    if-nez v0, :cond_4

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/util/ResourceBundle;->missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;

    move-result-object v2

    throw v2

    .line 232
    :cond_4
    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 12
    .parameter "baseName"
    .parameter "targetLocale"
    .parameter "loader"
    .parameter "control"

    .prologue
    .line 299
    const/4 v4, 0x0

    .line 300
    .local v4, expired:Z
    invoke-virtual {p3, p0, p1}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, bundleName:Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object v7, p2

    .line 302
    .local v7, cacheKey:Ljava/lang/Object;
    :goto_0
    invoke-static {v7}, Ljava/util/ResourceBundle;->getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;

    move-result-object v8

    .line 303
    .local v8, loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ResourceBundle;

    .line 304
    .local v5, result:Ljava/util/ResourceBundle;
    if-eqz v5, :cond_3

    .line 305
    invoke-virtual {p3, p0, p1}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    move-result-wide v10

    .line 306
    .local v10, time:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    iget-wide v0, v5, Ljava/util/ResourceBundle;->lastLoadTime:J

    add-long/2addr v0, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 308
    :cond_0
    sget-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    if-ne v0, v5, :cond_4

    .line 309
    new-instance v0, Ljava/util/MissingResourceException;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 301
    .end local v5           #result:Ljava/util/ResourceBundle;
    .end local v7           #cacheKey:Ljava/lang/Object;
    .end local v8           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .end local v10           #time:J
    :cond_1
    const-string v7, "null"

    goto :goto_0

    .line 314
    .restart local v5       #result:Ljava/util/ResourceBundle;
    .restart local v7       #cacheKey:Ljava/lang/Object;
    .restart local v8       #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .restart local v10       #time:J
    :cond_2
    const/4 v4, 0x1

    .end local v10           #time:J
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 317
    invoke-static/range {v0 .. v5}, Ljava/util/ResourceBundle;->processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v9

    .line 320
    .local v9, ret:Ljava/util/ResourceBundle;
    if-eqz v9, :cond_5

    .line 321
    invoke-virtual {v8, v6, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Ljava/util/ResourceBundle;->lastLoadTime:J

    move-object v5, v9

    .line 323
    .end local v5           #result:Ljava/util/ResourceBundle;
    .end local v9           #ret:Ljava/util/ResourceBundle;
    :cond_4
    return-object v5

    .line 325
    .restart local v5       #result:Ljava/util/ResourceBundle;
    .restart local v9       #ret:Ljava/util/ResourceBundle;
    :cond_5
    sget-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    invoke-virtual {v8, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v0, Ljava/util/MissingResourceException;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1
    .parameter "baseName"
    .parameter "targetLocale"
    .parameter "control"

    .prologue
    .line 270
    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 2
    .parameter "baseName"
    .parameter "control"

    .prologue
    .line 252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/ResourceBundle;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 274
    const-class v1, Ljava/util/ResourceBundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 275
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 276
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 278
    :cond_0
    return-object v0
.end method

.method private static getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;
    .locals 3
    .parameter "cacheKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ResourceBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    sget-object v2, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 553
    :try_start_0
    sget-object v1, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 554
    .local v0, loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    if-nez v0, :cond_0

    .line 555
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 556
    .restart local v0       #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    sget-object v1, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_0
    monitor-exit v2

    return-object v0

    .line 559
    .end local v0           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 19
    .parameter "loadBase"
    .parameter "base"
    .parameter "locale"
    .parameter "loader"

    .prologue
    .line 477
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    .line 478
    .local v11, localeName:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v6, p1

    .line 481
    .local v6, bundleName:Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_1

    move-object/from16 v7, p3

    .line 482
    .local v7, cacheKey:Ljava/lang/Object;
    :goto_1
    invoke-static {v7}, Ljava/util/ResourceBundle;->getLoaderCache(Ljava/lang/Object;)Ljava/util/Hashtable;

    move-result-object v10

    .line 483
    .local v10, loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ResourceBundle;

    .line 484
    .local v8, cached:Ljava/util/ResourceBundle;
    if-eqz v8, :cond_6

    .line 485
    sget-object v16, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_2

    .line 486
    const/4 v3, 0x0

    .line 548
    :goto_2
    return-object v3

    .line 478
    .end local v6           #bundleName:Ljava/lang/String;
    .end local v7           #cacheKey:Ljava/lang/Object;
    .end local v8           #cached:Ljava/util/ResourceBundle;
    .end local v10           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :cond_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 481
    .restart local v6       #bundleName:Ljava/lang/String;
    :cond_1
    const-string v7, "null"

    goto :goto_1

    .line 487
    .restart local v7       #cacheKey:Ljava/lang/Object;
    .restart local v8       #cached:Ljava/util/ResourceBundle;
    .restart local v10       #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    :cond_2
    sget-object v16, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    move-object/from16 v0, v16

    if-ne v8, v0, :cond_5

    .line 488
    if-nez p0, :cond_3

    .line 489
    const/4 v3, 0x0

    goto :goto_2

    .line 491
    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/util/ResourceBundle;->strip(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v12

    .line 492
    .local v12, newLocale:Ljava/util/Locale;
    if-nez v12, :cond_4

    .line 493
    const/4 v3, 0x0

    goto :goto_2

    .line 495
    :cond_4
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v12, v2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    goto :goto_2

    .end local v12           #newLocale:Ljava/util/Locale;
    :cond_5
    move-object v3, v8

    .line 497
    goto :goto_2

    .line 500
    :cond_6
    const/4 v3, 0x0

    .line 502
    .local v3, bundle:Ljava/util/ResourceBundle;
    const/16 v16, 0x1

    :try_start_0
    move/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v6, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 503
    .local v5, bundleClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v16, Ljava/util/ResourceBundle;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 504
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/ResourceBundle;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    move-object v4, v3

    .line 510
    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .end local v5           #bundleClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v4, bundle:Ljava/util/ResourceBundle;
    :goto_3
    if-eqz v4, :cond_9

    .line 511
    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V

    move-object v3, v4

    .line 528
    .end local v4           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    :goto_4
    invoke-static/range {p2 .. p2}, Ljava/util/ResourceBundle;->strip(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v15

    .line 529
    .local v15, strippedLocale:Ljava/util/Locale;
    if-eqz v3, :cond_b

    .line 530
    if-eqz v15, :cond_8

    .line 531
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v15, v2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v13

    .line 532
    .local v13, parent:Ljava/util/ResourceBundle;
    if-eqz v13, :cond_8

    .line 533
    invoke-virtual {v3, v13}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 536
    .end local v13           #parent:Ljava/util/ResourceBundle;
    :cond_8
    invoke-virtual {v10, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 506
    .end local v15           #strippedLocale:Ljava/util/Locale;
    :catch_0
    move-exception v16

    move-object v4, v3

    .line 508
    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .restart local v4       #bundle:Ljava/util/ResourceBundle;
    goto :goto_3

    .line 507
    .end local v4           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    :catch_1
    move-exception v16

    move-object v4, v3

    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .restart local v4       #bundle:Ljava/util/ResourceBundle;
    goto :goto_3

    .line 513
    :cond_9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x2e

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".properties"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 514
    .local v9, fileName:Ljava/lang/String;
    if-eqz p3, :cond_a

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 517
    .local v14, stream:Ljava/io/InputStream;
    :goto_5
    if-eqz v14, :cond_f

    .line 519
    :try_start_1
    new-instance v3, Ljava/util/PropertyResourceBundle;

    new-instance v16, Ljava/io/InputStreamReader;

    sget-object v17, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 520
    .end local v4           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    :try_start_2
    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/util/ResourceBundle;->setLocale(Ljava/util/Locale;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 523
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    .line 514
    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .end local v14           #stream:Ljava/io/InputStream;
    .restart local v4       #bundle:Ljava/util/ResourceBundle;
    :cond_a
    invoke-static {v9}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    goto :goto_5

    .line 521
    .restart local v14       #stream:Ljava/io/InputStream;
    :catch_2
    move-exception v16

    move-object v3, v4

    .line 523
    .end local v4           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    :goto_6
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .restart local v4       #bundle:Ljava/util/ResourceBundle;
    :catchall_0
    move-exception v16

    move-object v3, v4

    .end local v4           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    :goto_7
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v16

    .line 540
    .end local v9           #fileName:Ljava/lang/String;
    .end local v14           #stream:Ljava/io/InputStream;
    .restart local v15       #strippedLocale:Ljava/util/Locale;
    :cond_b
    if-eqz v15, :cond_d

    if-nez p0, :cond_c

    invoke-virtual {v15}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_d

    .line 541
    :cond_c
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v15, v2}, Ljava/util/ResourceBundle;->handleGetBundle(ZLjava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 542
    if-eqz v3, :cond_d

    .line 543
    invoke-virtual {v10, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 547
    :cond_d
    if-eqz p0, :cond_e

    sget-object v16, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v10, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 547
    :cond_e
    sget-object v16, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    goto :goto_8

    .line 523
    .end local v15           #strippedLocale:Ljava/util/Locale;
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v14       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v16

    goto :goto_7

    .line 521
    :catch_3
    move-exception v16

    goto :goto_6

    .end local v3           #bundle:Ljava/util/ResourceBundle;
    .restart local v4       #bundle:Ljava/util/ResourceBundle;
    :cond_f
    move-object v3, v4

    .end local v4           #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundle:Ljava/util/ResourceBundle;
    goto/16 :goto_4
.end method

.method private static missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;
    .locals 3
    .parameter "className"
    .parameter "key"

    .prologue
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find resource for bundle \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, detail:Ljava/lang/String;
    new-instance v1, Ljava/util/MissingResourceException;

    invoke-direct {v1, v0, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private static processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .locals 20
    .parameter "baseName"
    .parameter "targetLocale"
    .parameter "loader"
    .parameter "control"
    .parameter "expired"
    .parameter "result"

    .prologue
    .line 333
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v18

    .line 334
    .local v18, locales:Ljava/util/List;,"Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v18, :cond_0

    .line 335
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 337
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 338
    .local v15, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    if-eq v3, v15, :cond_1

    sget-object v3, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    if-eq v3, v15, :cond_1

    sget-object v3, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    if-ne v3, v15, :cond_2

    .line 341
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 343
    :cond_2
    const/16 v19, 0x0

    .line 344
    .local v19, ret:Ljava/util/ResourceBundle;
    const/4 v14, 0x0

    .line 345
    .local v14, currentBundle:Ljava/util/ResourceBundle;
    const/4 v13, 0x0

    .line 346
    .local v13, bundle:Ljava/util/ResourceBundle;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 347
    .local v5, locale:Ljava/util/Locale;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 349
    .local v6, format:Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 350
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    move-result v8

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 370
    :goto_1
    if-eqz v13, :cond_5

    .line 371
    if-eqz v14, :cond_7

    .line 372
    invoke-virtual {v14, v13}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 373
    move-object v14, v13

    .line 381
    :cond_5
    :goto_2
    if-eqz v13, :cond_4

    goto :goto_0

    .line 357
    :cond_6
    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    goto :goto_1

    .line 375
    :cond_7
    if-nez v19, :cond_5

    .line 376
    move-object/from16 v19, v13

    .line 377
    move-object/from16 v14, v19

    goto :goto_2

    .line 387
    .end local v5           #locale:Ljava/util/Locale;
    .end local v6           #format:Ljava/lang/String;
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_8
    if-eqz v19, :cond_9

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 390
    :cond_9
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v8

    .line 391
    .local v8, nextLocale:Ljava/util/Locale;
    if-eqz v8, :cond_a

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    .line 392
    invoke-static/range {v7 .. v12}, Ljava/util/ResourceBundle;->processGetBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;ZLjava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v19

    .line 397
    .end local v8           #nextLocale:Ljava/util/Locale;
    :cond_a
    return-object v19

    .line 359
    .restart local v5       #locale:Ljava/util/Locale;
    .restart local v6       #format:Ljava/lang/String;
    .restart local v17       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 367
    :catch_1
    move-exception v3

    goto :goto_1

    .line 365
    :catch_2
    move-exception v3

    goto :goto_1

    .line 363
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 604
    iput-object p1, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 605
    return-void
.end method

.method private static strip(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4
    .parameter "locale"

    .prologue
    .line 588
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, language:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, variant:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 592
    const-string v2, ""

    .line 600
    :goto_0
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v3

    .line 593
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 594
    const-string v0, ""

    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 596
    const-string v1, ""

    goto :goto_0

    .line 598
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 622
    :cond_0
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    .line 431
    move-object v2, p0

    .line 433
    .local v2, theParent:Ljava/util/ResourceBundle;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 434
    .local v1, result:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 435
    return-object v1

    .line 437
    :cond_1
    move-object v0, v2

    .line 438
    .local v0, last:Ljava/util/ResourceBundle;
    iget-object v2, v2, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 439
    if-nez v2, :cond_0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/ResourceBundle;->missingResourceException(Ljava/lang/String;Ljava/lang/String;)Ljava/util/MissingResourceException;

    move-result-object v3

    throw v3
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected abstract handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 636
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 637
    .local v2, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 638
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 639
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 642
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 627
    .local v1, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 628
    .local v0, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    :cond_0
    return-object v1
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 580
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 581
    return-void
.end method
