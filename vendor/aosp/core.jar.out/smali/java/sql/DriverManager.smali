.class public Ljava/sql/DriverManager;
.super Ljava/lang/Object;
.source "DriverManager.java"


# static fields
.field private static final logPermission:Ljava/sql/SQLPermission;

.field private static loginTimeout:I

.field private static final theDrivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation
.end field

.field private static thePrintStream:Ljava/io/PrintStream;

.field private static thePrintWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "setLog"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/sql/DriverManager;->logPermission:Ljava/sql/SQLPermission;

    .line 63
    invoke-static {}, Ljava/sql/DriverManager;->loadInitialDrivers()V

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static deregisterDriver(Ljava/sql/Driver;)V
    .locals 3
    .parameter "driver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 120
    .local v0, callerClassLoader:Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling class not authorized to deregister JDBC driver"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_1
    sget-object v2, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v2

    .line 124
    :try_start_0
    sget-object v1, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {p0, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2
    .parameter "url"
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 203
    .local v0, theProperties:Ljava/util/Properties;
    if-eqz p1, :cond_0

    .line 204
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    :cond_0
    if-eqz p2, :cond_1

    .line 207
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    :cond_1
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v1

    return-object v1
.end method

.method public static getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 6
    .parameter "url"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 164
    const-string v1, "08001"

    .line 165
    .local v1, sqlState:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 166
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "The url cannot be null"

    invoke-direct {v4, v5, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 168
    :cond_0
    sget-object v5, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v5

    .line 174
    :try_start_0
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Driver;

    .line 175
    .local v3, theDriver:Ljava/sql/Driver;
    invoke-interface {v3, p0, p1}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v2

    .line 176
    .local v2, theConnection:Ljava/sql/Connection;
    if-eqz v2, :cond_1

    .line 177
    monitor-exit v5

    return-object v2

    .line 180
    .end local v2           #theConnection:Ljava/sql/Connection;
    .end local v3           #theDriver:Ljava/sql/Driver;
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "No suitable driver"

    invoke-direct {v4, v5, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 180
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static getDriver(Ljava/lang/String;)Ljava/sql/Driver;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 224
    .local v0, callerClassLoader:Ljava/lang/ClassLoader;
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v4

    .line 230
    :try_start_0
    sget-object v3, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Driver;

    .line 231
    .local v1, driver:Ljava/sql/Driver;
    invoke-interface {v1, p0}, Ljava/sql/Driver;->acceptsURL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    monitor-exit v4

    return-object v1

    .line 236
    .end local v1           #driver:Ljava/sql/Driver;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    new-instance v3, Ljava/sql/SQLException;

    const-string v4, "No suitable driver"

    const-string v5, "08001"

    invoke-direct {v3, v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 236
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static getDrivers()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 256
    .local v0, callerClassLoader:Ljava/lang/ClassLoader;
    sget-object v5, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v5

    .line 257
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/sql/Driver;>;"
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Driver;

    .line 259
    .local v1, driver:Ljava/sql/Driver;
    invoke-static {v1, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v1           #driver:Ljava/sql/Driver;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/sql/Driver;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 263
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/sql/Driver;>;"
    :cond_1
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4
.end method

.method public static getLogStream()Ljava/io/PrintStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method public static getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static getLoginTimeout()I
    .locals 1

    .prologue
    .line 273
    sget v0, Ljava/sql/DriverManager;->loginTimeout:I

    return v0
.end method

.method private static isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z
    .locals 6
    .parameter "theObject"
    .parameter "theClassLoader"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 386
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v3

    .line 401
    :cond_1
    :goto_0
    return v2

    .line 390
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 393
    .local v1, objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 395
    .local v0, checkClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_1

    .end local v0           #checkClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    move v2, v3

    .line 401
    goto :goto_0

    .line 398
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static loadInitialDrivers()V
    .locals 8

    .prologue
    .line 71
    const-string v6, "jdbc.drivers"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, theDriverList:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 92
    :cond_0
    return-void

    .line 80
    :cond_1
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, theDriverNames:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 85
    .local v1, element:Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v1, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static println(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 306
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 307
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_0
.end method

.method public static registerDriver(Ljava/sql/Driver;)V
    .locals 2
    .parameter "driver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 331
    if-nez p0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 334
    :cond_0
    sget-object v1, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v1

    .line 335
    :try_start_0
    sget-object v0, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    monitor-exit v1

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLogStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "out"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    sput-object p0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    .line 360
    return-void
.end method

.method public static setLogWriter(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 370
    sput-object p0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    .line 371
    return-void
.end method

.method public static setLoginTimeout(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 346
    sput p0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 347
    return-void
.end method
