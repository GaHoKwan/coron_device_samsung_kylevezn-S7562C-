.class public final Ljava/io/Console;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/Console$ConsoleWriter;,
        Ljava/io/Console$ConsoleReader;
    }
.end annotation


# static fields
.field private static final CONSOLE_LOCK:Ljava/lang/Object;

.field private static final console:Ljava/io/Console;


# instance fields
.field private final reader:Ljava/io/Console$ConsoleReader;

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    .line 31
    invoke-static {}, Ljava/io/Console;->makeConsole()Ljava/io/Console;

    move-result-object v0

    sput-object v0, Ljava/io/Console;->console:Ljava/io/Console;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/io/Console$ConsoleReader;

    invoke-direct {v0, p1}, Ljava/io/Console$ConsoleReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    .line 58
    new-instance v0, Ljava/io/Console$ConsoleWriter;

    invoke-direct {v0, p2}, Ljava/io/Console$ConsoleWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static getConsole()Ljava/io/Console;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Ljava/io/Console;->console:Ljava/io/Console;

    return-object v0
.end method

.method private static makeConsole()Ljava/io/Console;
    .locals 4

    .prologue
    .line 46
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/Console;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2, v3}, Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static setEcho(ZI)I
    .locals 2
    .parameter "on"
    .parameter "previousState"

    .prologue
    .line 151
    :try_start_0
    invoke-static {p0, p1}, Ljava/io/Console;->setEchoImpl(ZI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native setEchoImpl(ZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 63
    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 77
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 78
    .local v0, f:Ljava/util/Formatter;
    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 79
    invoke-virtual {v0}, Ljava/util/Formatter;->flush()V

    .line 80
    return-object p0
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .locals 1
    .parameter "format"
    .parameter "args"

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 125
    sget-object v1, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    .line 127
    invoke-virtual {p0}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readPassword()[C
    .locals 5

    .prologue
    .line 137
    sget-object v3, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 138
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v4}, Ljava/io/Console;->setEcho(ZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 140
    .local v1, previousState:I
    :try_start_1
    invoke-virtual {p0}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, password:Ljava/lang/String;
    iget-object v2, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 144
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    invoke-static {v4, v1}, Ljava/io/Console;->setEcho(ZI)I

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    .line 142
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 144
    .end local v0           #password:Ljava/lang/String;
    :catchall_0
    move-exception v2

    const/4 v4, 0x1

    :try_start_4
    invoke-static {v4, v1}, Ljava/io/Console;->setEcho(ZI)I

    throw v2

    .line 146
    .end local v1           #previousState:I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public varargs readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 170
    sget-object v1, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    .line 172
    invoke-virtual {p0}, Ljava/io/Console;->readPassword()[C

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    return-object v0
.end method

.method public writer()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    return-object v0
.end method
