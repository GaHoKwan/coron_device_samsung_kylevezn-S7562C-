.class public Lorg/apache/harmony/xnet/provider/jsse/Finished;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "Finished.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .locals 2
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 51
    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    const/16 v0, 0x24

    if-ne p2, v0, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    .line 53
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_1
    const/16 v0, 0x32

    const-string v1, "DECODE ERROR: incorrect Finished"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Message;->fatalAlert(BLjava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    .line 40
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 41
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x14

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 62
    return-void
.end method
