.class public Ljava/lang/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# static fields
.field private static finalizeOnExit:Z

.field private static final mRuntime:Ljava/lang/Runtime;


# instance fields
.field private final mLibPaths:[Ljava/lang/String;

.field private shutdownHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private shuttingDown:Z

.field private tracingMethods:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Runtime;

    invoke-direct {v0}, Ljava/lang/Runtime;-><init>()V

    sput-object v0, Ljava/lang/Runtime;->mRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    .line 94
    const-string v4, "java.library.path"

    const-string v5, "."

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, pathList:Ljava/lang/String;
    const-string v4, "path.separator"

    const-string v5, ":"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, pathSep:Ljava/lang/String;
    const-string v4, "file.separator"

    const-string v5, "/"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, fileSep:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    .line 102
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 103
    iget-object v4, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    aget-object v6, v5, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method

.method public static getRuntime()Ljava/lang/Runtime;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Ljava/lang/Runtime;->mRuntime:Ljava/lang/Runtime;

    return-object v0
.end method

.method private static native nativeExit(I)V
.end method

.method private static native nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .parameter "run"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 425
    sput-boolean p0, Ljava/lang/Runtime;->finalizeOnExit:Z

    .line 426
    return-void
.end method


# virtual methods
.method public addShutdownHook(Ljava/lang/Thread;)V
    .locals 3
    .parameter "hook"

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 540
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Hook may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-eqz v0, :cond_1

    .line 544
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VM already shutting down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_1
    iget-boolean v0, p1, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v0, :cond_2

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hook has already been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_2
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v1

    .line 552
    :try_start_0
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Hook already registered."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 556
    :cond_3
    :try_start_1
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    return-void
.end method

.method public availableProcessors()I
    .locals 2

    .prologue
    .line 605
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->_SC_NPROCESSORS_ONLN:I

    invoke-interface {v0, v1}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public exec(Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .parameter "prog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .parameter "prog"
    .parameter "envp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 5
    .parameter "prog"
    .parameter "envp"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 228
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 229
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 233
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 234
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 235
    .local v1, length:I
    new-array v2, v1, [Ljava/lang/String;

    .line 236
    .local v2, progArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 237
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0, v2, p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v4

    return-object v4
.end method

.method public exec([Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .parameter "progArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .parameter "progArray"
    .parameter "envp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 2
    .parameter "progArray"
    .parameter "envp"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Ljava/lang/ProcessManager;->getInstance()Ljava/lang/ProcessManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/lang/ProcessManager;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exit(I)V
    .locals 7
    .parameter "code"

    .prologue
    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-boolean v5, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-nez v5, :cond_3

    .line 258
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/lang/Runtime;->shuttingDown:Z

    .line 261
    iget-object v6, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    iget-object v5, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/Thread;

    .line 264
    .local v2, hooks:[Ljava/lang/Thread;
    iget-object v5, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 265
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/Thread;
    :try_start_2
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 269
    .local v1, hook:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    .end local v0           #arr$:[Ljava/lang/Thread;
    .end local v1           #hook:Ljava/lang/Thread;
    .end local v2           #hooks:[Ljava/lang/Thread;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 289
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 273
    .restart local v0       #arr$:[Ljava/lang/Thread;
    .restart local v2       #hooks:[Ljava/lang/Thread;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    move-object v0, v2

    :try_start_5
    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 275
    .restart local v1       #hook:Ljava/lang/Thread;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 273
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    .end local v1           #hook:Ljava/lang/Thread;
    :cond_1
    :try_start_7
    sget-boolean v5, Ljava/lang/Runtime;->finalizeOnExit:Z

    if-eqz v5, :cond_2

    .line 283
    invoke-virtual {p0}, Ljava/lang/Runtime;->runFinalization()V

    .line 287
    :cond_2
    invoke-static {p1}, Ljava/lang/Runtime;->nativeExit(I)V

    .line 289
    .end local v0           #arr$:[Ljava/lang/Thread;
    .end local v2           #hooks:[Ljava/lang/Thread;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 290
    return-void

    .line 276
    .restart local v0       #arr$:[Ljava/lang/Thread;
    .restart local v1       #hook:Ljava/lang/Thread;
    .restart local v2       #hooks:[Ljava/lang/Thread;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public native freeMemory()J
.end method

.method public native gc()V
.end method

.method public getLocalizedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .parameter "stream"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    const-string v1, "file.encoding"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, encoding:Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot localize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_0
    return-object p1
.end method

.method public getLocalizedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4
    .parameter "stream"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    const-string v1, "file.encoding"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, encoding:Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot localize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_0
    return-object p1
.end method

.method public halt(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 598
    invoke-static {p1}, Ljava/lang/Runtime;->nativeExit(I)V

    .line 599
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .parameter "pathName"

    .prologue
    .line 328
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/Runtime;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 329
    return-void
.end method

.method load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .parameter "filename"
    .parameter "loader"

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "library path was null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 340
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_1
    return-void
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .locals 1
    .parameter "libName"

    .prologue
    .line 355
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 356
    return-void
.end method

.method loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 12
    .parameter "libraryName"
    .parameter "loader"

    .prologue
    .line 362
    if-eqz p2, :cond_1

    .line 363
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, filename:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 365
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t load "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "findLibrary returned null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 368
    :cond_0
    invoke-static {v5, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, error:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 370
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v9, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 375
    .end local v4           #error:Ljava/lang/String;
    .end local v5           #filename:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 376
    .restart local v5       #filename:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v2, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 378
    .local v7, lastError:Ljava/lang/String;
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v3, v0, v6

    .line 379
    .local v3, directory:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, candidate:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 382
    invoke-static {v1, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v4

    .line 383
    .restart local v4       #error:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 384
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #candidate:Ljava/lang/String;
    .end local v2           #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #directory:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #lastError:Ljava/lang/String;
    .end local v8           #len$:I
    :cond_2
    return-void

    .line 386
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #candidate:Ljava/lang/String;
    .restart local v2       #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #directory:Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #lastError:Ljava/lang/String;
    .restart local v8       #len$:I
    :cond_3
    move-object v7, v4

    .line 378
    .end local v4           #error:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 390
    .end local v1           #candidate:Ljava/lang/String;
    .end local v3           #directory:Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    .line 391
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v9, v7}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 393
    :cond_6
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Library "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found; tried "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public native maxMemory()J
.end method

.method public removeShutdownHook(Ljava/lang/Thread;)Z
    .locals 2
    .parameter "hook"

    .prologue
    .line 572
    if-nez p1, :cond_0

    .line 573
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Hook may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-eqz v0, :cond_1

    .line 577
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VM already shutting down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runFinalization()V
    .locals 2

    .prologue
    .line 406
    :try_start_0
    invoke-static {}, Ljava/lang/ref/FinalizerReference;->finalizeAllEnqueued()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public native totalMemory()J
.end method

.method public traceInstructions(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 445
    return-void
.end method

.method public traceMethodCalls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 455
    iget-boolean v0, p0, Ljava/lang/Runtime;->tracingMethods:Z

    if-eq p1, v0, :cond_0

    .line 456
    if-eqz p1, :cond_1

    .line 457
    invoke-static {}, Ldalvik/system/VMDebug;->startMethodTracing()V

    .line 461
    :goto_0
    iput-boolean p1, p0, Ljava/lang/Runtime;->tracingMethods:Z

    .line 463
    :cond_0
    return-void

    .line 459
    :cond_1
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    goto :goto_0
.end method
