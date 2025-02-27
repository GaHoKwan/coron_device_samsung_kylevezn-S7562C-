.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;
.source "SSLSocketWrapper.java"


# instance fields
.field private final autoClose:Z

.field private final socket:Ljava/net/Socket;


# direct methods
.method protected constructor <init>(Ljava/net/Socket;ZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "socket"
    .parameter "autoClose"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 37
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    .line 41
    iput-boolean p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->autoClose:Z

    .line 42
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 43
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .parameter "sockaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying socket is already connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected closeTransportLayer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->autoClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 56
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 58
    :cond_0
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2
    .parameter "sockaddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying socket is already connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .parameter "sockaddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Underlying socket is already connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method protected initTransportLayer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    .line 48
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    .line 49
    return-void
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 121
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 141
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 116
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 136
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .parameter "on"
    .parameter "linger"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 106
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 131
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 111
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .parameter "tos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSL socket over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
