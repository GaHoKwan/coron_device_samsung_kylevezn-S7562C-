.class public Ljava/net/InetAddress;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UNSPECIFIED:Ljava/net/InetAddress; = null

.field private static final addressCache:Ljava/net/AddressCache; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# instance fields
.field private family:I

.field hostName:Ljava/lang/String;

.field ipaddress:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 128
    new-instance v0, Ljava/net/AddressCache;

    invoke-direct {v0}, Ljava/net/AddressCache;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    .line 142
    new-instance v0, Ljava/net/InetAddress;

    sget v1, Llibcore/io/OsConstants;->AF_UNSPEC:I

    invoke-direct {v0, v1, v2, v2}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    sput-object v0, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    .line 821
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "address"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "family"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "hostName"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/InetAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>(I[BLjava/lang/String;)V
    .locals 0
    .parameter "family"
    .parameter "ipaddress"
    .parameter "hostName"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Ljava/net/InetAddress;->family:I

    .line 151
    iput-object p2, p0, Ljava/net/InetAddress;->ipaddress:[B

    .line 152
    iput-object p3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method static synthetic access$000(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetAddress;->isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method private static badAddressLength([B)Ljava/net/UnknownHostException;
    .locals 3
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 792
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address is neither 4 or 16 bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bytesToInetAddresses([[BLjava/lang/String;)[Ljava/net/InetAddress;
    .locals 3
    .parameter "rawAddresses"
    .parameter "hostName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 194
    array-length v2, p0

    new-array v1, v2, [Ljava/net/InetAddress;

    .line 195
    .local v1, returnedAddresses:[Ljava/net/InetAddress;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 196
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v1, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-object v1
.end method

.method public static clearDnsCache()V
    .locals 1

    .prologue
    .line 434
    sget-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    .line 435
    return-void
.end method

.method private static disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 2
    .parameter "address"
    .parameter "inetAddress"

    .prologue
    .line 251
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 257
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->AF_INET:I

    invoke-interface {v0, v1, p0}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    goto :goto_0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method private static getAllByNameImpl(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 222
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    invoke-static {}, Ljava/net/InetAddress;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    .line 227
    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 228
    .local v0, result:Ljava/net/InetAddress;
    if-eqz v0, :cond_3

    .line 229
    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    .line 230
    if-nez v0, :cond_2

    .line 231
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deprecated IPv4 address format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    .line 236
    :cond_3
    invoke-static {p0}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public static getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .locals 1
    .parameter "hostName"
    .parameter "ipAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 768
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;
    .locals 2
    .parameter "hostName"
    .parameter "ipAddress"
    .parameter "scopeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 772
    if-nez p1, :cond_0

    .line 773
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "ipAddress == null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_0
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 776
    new-instance v1, Ljava/net/Inet4Address;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    .line 784
    :goto_0
    return-object v0

    .line 777
    :cond_1
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 781
    invoke-static {p1}, Ljava/net/InetAddress;->isIPv4MappedAddress([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    new-instance v0, Ljava/net/Inet4Address;

    invoke-static {p1}, Ljava/net/InetAddress;->ipv4MappedToIPv4([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_2
    new-instance v1, Ljava/net/Inet6Address;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 787
    :cond_3
    invoke-static {p1}, Ljava/net/InetAddress;->badAddressLength([B)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
.end method

.method public static getByAddress([B)Ljava/net/InetAddress;
    .locals 2
    .parameter "ipAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 748
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 4
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 440
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->NI_NAMEREQD:I

    invoke-interface {v2, p0, v3}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, hostname:Ljava/lang/String;
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v1}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Llibcore/io/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 442
    .end local v1           #hostname:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 443
    .local v0, gaiException:Llibcore/io/GaiException;
    invoke-virtual {v0}, Llibcore/io/GaiException;->rethrowAsUnknownHostException()Ljava/net/UnknownHostException;

    move-result-object v2

    throw v2
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 364
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1}, Llibcore/io/Os;->uname()Llibcore/io/StructUtsname;

    move-result-object v1

    iget-object v0, v1, Llibcore/io/StructUtsname;->nodename:Ljava/lang/String;

    .line 365
    .local v0, host:Ljava/lang/String;
    invoke-static {v0}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static getLoopbackAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    return-object v0
.end method

.method private static ipv4MappedToIPv4([B)[B
    .locals 4
    .parameter "mappedAddress"

    .prologue
    const/4 v3, 0x4

    .line 814
    new-array v1, v3, [B

    .line 815
    .local v1, ipv4Address:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 816
    add-int/lit8 v2, v0, 0xc

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 815
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 818
    :cond_0
    return-object v1
.end method

.method private static isIPv4MappedAddress([B)Z
    .locals 6
    .parameter "ipAddress"

    .prologue
    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 799
    if-eqz p0, :cond_0

    array-length v2, p0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v1

    .line 802
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 803
    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 807
    :cond_2
    aget-byte v2, p0, v5

    if-ne v2, v4, :cond_0

    const/16 v2, 0xb

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_0

    .line 810
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 467
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 468
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 7
    .parameter "destination"
    .parameter "source"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 723
    invoke-static {v4}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 724
    .local v1, fd:Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .line 726
    .local v2, reached:Z
    if-eqz p2, :cond_0

    .line 727
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, p2, v3}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 729
    :cond_0
    const/4 v3, 0x7

    invoke-static {v1, p1, v3, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    const/4 v2, 0x1

    .line 738
    :cond_1
    :goto_0
    invoke-static {v1}, Llibcore/io/IoBridge;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 740
    return v2

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Llibcore/io/ErrnoException;

    if-eqz v3, :cond_1

    .line 734
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Llibcore/io/ErrnoException;

    iget v3, v3, Llibcore/io/ErrnoException;->errno:I

    sget v6, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-ne v3, v6, :cond_2

    move v2, v4

    :goto_1
    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1
.end method

.method private static lookupHostByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 12
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v9

    invoke-interface {v9}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 387
    sget-object v9, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v9, p0}, Ljava/net/AddressCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 388
    .local v3, cachedResult:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 389
    instance-of v9, v3, [Ljava/net/InetAddress;

    if-eqz v9, :cond_0

    .line 391
    check-cast v3, [Ljava/net/InetAddress;

    .end local v3           #cachedResult:Ljava/lang/Object;
    check-cast v3, [Ljava/net/InetAddress;

    .line 411
    :goto_0
    return-object v3

    .line 394
    .restart local v3       #cachedResult:Ljava/lang/Object;
    :cond_0
    new-instance v9, Ljava/net/UnknownHostException;

    check-cast v3, Ljava/lang/String;

    .end local v3           #cachedResult:Ljava/lang/Object;
    invoke-direct {v9, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 398
    .restart local v3       #cachedResult:Ljava/lang/Object;
    :cond_1
    :try_start_0
    new-instance v6, Llibcore/io/StructAddrinfo;

    invoke-direct {v6}, Llibcore/io/StructAddrinfo;-><init>()V

    .line 399
    .local v6, hints:Llibcore/io/StructAddrinfo;
    sget v9, Llibcore/io/OsConstants;->AI_ADDRCONFIG:I

    iput v9, v6, Llibcore/io/StructAddrinfo;->ai_flags:I

    .line 400
    sget v9, Llibcore/io/OsConstants;->AF_UNSPEC:I

    iput v9, v6, Llibcore/io/StructAddrinfo;->ai_family:I

    .line 404
    sget v9, Llibcore/io/OsConstants;->SOCK_STREAM:I

    iput v9, v6, Llibcore/io/StructAddrinfo;->ai_socktype:I

    .line 405
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, p0, v6}, Llibcore/io/Os;->getaddrinfo(Ljava/lang/String;Llibcore/io/StructAddrinfo;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 407
    .local v1, addresses:[Ljava/net/InetAddress;
    move-object v2, v1

    .local v2, arr$:[Ljava/net/InetAddress;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v0, v2, v7

    .line 408
    .local v0, address:Ljava/net/InetAddress;
    iput-object p0, v0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 407
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 410
    .end local v0           #address:Ljava/net/InetAddress;
    :cond_2
    sget-object v9, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v9, p0, v1}, Ljava/net/AddressCache;->put(Ljava/lang/String;[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Llibcore/io/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 411
    goto :goto_0

    .line 412
    .end local v1           #addresses:[Ljava/net/InetAddress;
    .end local v2           #arr$:[Ljava/net/InetAddress;
    .end local v6           #hints:Llibcore/io/StructAddrinfo;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :catch_0
    move-exception v5

    .line 416
    .local v5, gaiException:Llibcore/io/GaiException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    instance-of v9, v9, Llibcore/io/ErrnoException;

    if-eqz v9, :cond_3

    .line 417
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Llibcore/io/ErrnoException;

    iget v9, v9, Llibcore/io/ErrnoException;->errno:I

    sget v10, Llibcore/io/OsConstants;->EACCES:I

    if-ne v9, v10, :cond_3

    .line 418
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "Permission denied (missing INTERNET permission?)"

    invoke-direct {v9, v10, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 422
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to resolve host \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v11, v5, Llibcore/io/GaiException;->error:I

    invoke-interface {v10, v11}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, detailMessage:Ljava/lang/String;
    sget-object v9, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v9, p0, v4}, Ljava/net/AddressCache;->putUnknownHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v5, v4}, Llibcore/io/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    move-result-object v9

    throw v9
.end method

.method private static loopbackAddresses()[Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 492
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .parameter "bytes"
    .parameter "hostName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 240
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 241
    new-instance v0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0, p1}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    .line 243
    :goto_0
    return-object v0

    .line 242
    :cond_0
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 243
    new-instance v0, Ljava/net/Inet6Address;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->badAddressLength([B)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
.end method

.method public static parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .parameter "numericAddress"

    .prologue
    .line 480
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    :cond_0
    sget-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 488
    :cond_1
    return-object v0

    .line 483
    :cond_2
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 484
    .local v0, result:Ljava/net/InetAddress;
    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    .line 485
    if-nez v0, :cond_1

    .line 486
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a numeric address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .parameter "address"

    .prologue
    .line 262
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 263
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 265
    :cond_0
    new-instance v1, Llibcore/io/StructAddrinfo;

    invoke-direct {v1}, Llibcore/io/StructAddrinfo;-><init>()V

    .line 266
    .local v1, hints:Llibcore/io/StructAddrinfo;
    sget v2, Llibcore/io/OsConstants;->AI_NUMERICHOST:I

    iput v2, v1, Llibcore/io/StructAddrinfo;->ai_flags:I

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, addresses:[Ljava/net/InetAddress;
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, v1}, Llibcore/io/Os;->getaddrinfo(Ljava/lang/String;Llibcore/io/StructAddrinfo;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Llibcore/io/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 272
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 270
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 841
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 842
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v2, "address"

    invoke-virtual {v1, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    .line 843
    .local v0, addr:I
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    .line 844
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v4, v0, v3}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 845
    const-string v2, "hostName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 846
    const-string v2, "family"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/net/InetAddress;->family:I

    .line 847
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 854
    new-instance v0, Ljava/net/Inet4Address;

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 828
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 829
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    if-nez v1, :cond_0

    .line 830
    const-string v1, "address"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 834
    :goto_0
    const-string v1, "family"

    iget v2, p0, Ljava/net/InetAddress;->family:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 835
    const-string v1, "hostName"

    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 837
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 838
    return-void

    .line 832
    :cond_0
    const-string v1, "address"

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v4, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 166
    instance-of v0, p1, Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    check-cast p1, Ljava/net/InetAddress;

    .end local p1
    iget-object v1, p1, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()[B
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCanonicalHostName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v1, v1, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-object v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, ex:Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->NI_NUMERICHOST:I

    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 307
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v1, v1, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    return-object v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, ex:Ljava/net/UnknownHostException;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public isLinkLocalAddress()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public isLoopbackAddress()Z
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public isMCGlobal()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public isMCLinkLocal()Z
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public isMCNodeLocal()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    return v0
.end method

.method public isMCSiteLocal()Z
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public isMulticastAddress()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public isReachable(I)Z
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    move-result v0

    return v0
.end method

.method public isReachable(Ljava/net/NetworkInterface;II)Z
    .locals 10
    .parameter "networkInterface"
    .parameter "ttl"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 677
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 678
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ttl < 0 || timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_1
    if-nez p1, :cond_3

    .line 683
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0, p3}, Ljava/net/InetAddress;->isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    .line 718
    :cond_2
    :goto_0
    return v0

    .line 688
    :cond_3
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v9

    .line 689
    .local v9, sourceAddresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 692
    move-object v2, p0

    .line 693
    .local v2, destinationAddress:Ljava/net/InetAddress;
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 694
    .local v6, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 695
    .local v5, isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 696
    .local v3, sourceAddress:Ljava/net/InetAddress;
    new-instance v0, Ljava/net/InetAddress$1;

    move-object v1, p0

    move v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/net/InetAddress$1;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 714
    .end local v3           #sourceAddress:Ljava/net/InetAddress;
    :cond_4
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_2
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v8

    .line 716
    .local v8, ignored:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2
.end method

.method public isSiteLocalAddress()Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_0
.end method
