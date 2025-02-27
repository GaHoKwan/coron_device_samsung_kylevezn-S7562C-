.class public final Lorg/apache/http/conn/scheme/PlainSocketFactory;
.super Ljava/lang/Object;
.source "PlainSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# static fields
.field private static final DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .locals 0
    .parameter "nameResolver"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 71
    return-void
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 6
    .parameter "sock"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Target host may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :cond_0
    if-nez p6, :cond_1

    .line 93
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_1
    if-nez p1, :cond_2

    .line 97
    invoke-virtual {p0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    .line 99
    :cond_2
    if-nez p4, :cond_3

    if-lez p5, :cond_5

    .line 102
    :cond_3
    if-gez p5, :cond_4

    .line 103
    const/4 p5, 0x0

    .line 105
    :cond_4
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 107
    .local v1, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {p1, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 110
    .end local v1           #isa:Ljava/net/InetSocketAddress;
    :cond_5
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v3

    .line 113
    .local v3, timeout:I
    iget-object v4, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v4, :cond_6

    .line 114
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v4, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v2, v4, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 119
    .local v2, remoteAddress:Ljava/net/InetSocketAddress;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-object p1

    .line 116
    .end local v2           #remoteAddress:Ljava/net/InetSocketAddress;
    :cond_6
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .restart local v2       #remoteAddress:Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Ljava/net/SocketTimeoutException;
    new-instance v4, Lorg/apache/http/conn/ConnectTimeoutException;

    const-string v5, "Connect to .. timed out"

    invoke-direct {v4, v5}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 173
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 183
    const-class v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 2
    .parameter "sock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/Socket;

    if-eq v0, v1, :cond_1

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
