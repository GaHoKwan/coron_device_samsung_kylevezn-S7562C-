.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# instance fields
.field private setAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/net/DatagramSocket;-><init>()V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 1
    .parameter "localAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 69
    return-void
.end method

.method private checkJoinOrLeave(Ljava/net/InetAddress;)V
    .locals 3
    .parameter "groupAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 232
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a multicast group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    return-void
.end method

.method private checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 4
    .parameter "groupAddress"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "groupAddress == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No address associated with interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_1
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_2

    .line 216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group address not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, p1

    .line 220
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 221
    .local v0, groupAddr:Ljava/net/InetAddress;
    if-nez v0, :cond_3

    .line 222
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group address has no address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_3
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_4

    .line 226
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a multicast group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_4
    return-void
.end method


# virtual methods
.method declared-synchronized createSocket(ILjava/net/InetAddress;)V
    .locals 4
    .parameter "aPort"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    sget-object v1, Ljava/net/MulticastSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_0

    sget-object v1, Ljava/net/MulticastSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 328
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :try_start_1
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 331
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 332
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    monitor-exit p0

    return-void

    .line 327
    :cond_0
    :try_start_2
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/net/SocketException;
    :try_start_3
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 335
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getInterface()Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 79
    iget-object v4, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    if-eqz v4, :cond_0

    .line 80
    iget-object v2, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    .line 99
    :goto_0
    return-object v2

    .line 82
    :cond_0
    iget-object v4, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 83
    .local v1, ipvXaddress:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    .line 87
    .local v3, theInterface:Ljava/net/NetworkInterface;
    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 89
    .local v0, addresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v0, :cond_2

    .line 90
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 92
    .local v2, nextAddress:Ljava/net/InetAddress;
    instance-of v4, v2, Ljava/net/Inet6Address;

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0           #addresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2           #nextAddress:Ljava/net/InetAddress;
    .end local v3           #theInterface:Ljava/net/NetworkInterface;
    :cond_2
    move-object v2, v1

    .line 99
    goto :goto_0
.end method

.method public getLoopbackMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 348
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 109
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    .local v0, index:I
    if-eqz v0, :cond_0

    .line 111
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->forUnboundMulticastSocket()Ljava/net/NetworkInterface;

    move-result-object v1

    goto :goto_0
.end method

.method public getTTL()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 135
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    move-result v0

    return v0
.end method

.method public getTimeToLive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 123
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "groupAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/InetAddress;)V

    .line 149
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    .line 150
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 1
    .parameter "groupAddress"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 169
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 170
    return-void
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "groupAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0, p1}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/InetAddress;)V

    .line 184
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    .line 185
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 1
    .parameter "groupAddress"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 202
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 203
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;B)V
    .locals 3
    .parameter "packet"
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 247
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 248
    .local v1, packAddr:Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTimeToLive()I

    move-result v0

    .line 249
    .local v0, currTTL:I
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-byte v2, v0

    if-eq v2, p2, :cond_0

    .line 251
    and-int/lit16 v2, p2, 0xff

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 252
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 259
    :goto_0
    return-void

    .line 254
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    throw v2

    .line 257
    :cond_0
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .locals 4
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 270
    if-nez p1, :cond_0

    .line 271
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "address == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 275
    .local v0, networkInterface:Ljava/net/NetworkInterface;
    if-nez v0, :cond_1

    .line 276
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address not associated with an interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_1
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v2, 0x1f

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 279
    iput-object p1, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    .line 280
    return-void
.end method

.method public setLoopbackMode(Z)V
    .locals 3
    .parameter "disable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 360
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v2, 0x12

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 361
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 3
    .parameter "networkInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "networkInterface == null"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1f

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    .line 296
    return-void
.end method

.method public setTTL(B)V
    .locals 1
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 322
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 323
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 3
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 306
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeToLive out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    .line 310
    return-void
.end method
