.class public Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;
.super Ljava/lang/Object;
.source "SSLEngineDataStream.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/DataStream;


# instance fields
.field private available:I

.field private consumed:I

.field private limit:I

.field private offset:I

.field private srcs:[Ljava/nio/ByteBuffer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available:I

    return v0
.end method

.method protected consumed()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed:I

    return v0
.end method

.method public getData(I)[B
    .locals 6
    .parameter "length"

    .prologue
    .line 69
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available:I

    if-ge p1, v4, :cond_1

    move v0, p1

    .line 70
    .local v0, len:I
    :goto_0
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available:I

    sub-int/2addr v4, v0

    iput v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available:I

    .line 71
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed:I

    .line 72
    new-array v3, v0, [B

    .line 73
    .local v3, res:[B
    const/4 v1, 0x0

    .line 75
    .local v1, pos:I
    :goto_1
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->limit:I

    if-ge v4, v5, :cond_0

    .line 76
    :goto_2
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->srcs:[Ljava/nio/ByteBuffer;

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->offset:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .local v2, pos:I
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->srcs:[Ljava/nio/ByteBuffer;

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->offset:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v1

    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 79
    if-nez v0, :cond_3

    move v1, v2

    .line 84
    .end local v2           #pos:I
    .restart local v1       #pos:I
    :cond_0
    return-object v3

    .line 69
    .end local v0           #len:I
    .end local v1           #pos:I
    .end local v3           #res:[B
    :cond_1
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available:I

    goto :goto_0

    .line 75
    .restart local v0       #len:I
    .restart local v1       #pos:I
    .restart local v3       #res:[B
    :cond_2
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->offset:I

    goto :goto_1

    .end local v1           #pos:I
    .restart local v2       #pos:I
    :cond_3
    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    goto :goto_2
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setSourceBuffers([Ljava/nio/ByteBuffer;II)V
    .locals 3
    .parameter "srcs"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 43
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->srcs:[Ljava/nio/ByteBuffer;

    .line 44
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->offset:I

    .line 45
    add-int v1, p2, p3

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->limit:I

    .line 46
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed:I

    .line 47
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available:I

    .line 48
    move v0, p2

    .local v0, i:I
    :goto_0
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->limit:I

    if-ge v0, v1, :cond_1

    .line 49
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Some of the input parameters are null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available:I

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available:I

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method
