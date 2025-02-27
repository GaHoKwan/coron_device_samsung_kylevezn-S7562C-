.class Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;
.super Ljava/io/OutputStream;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketChannelOutputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 596
    iput-object p1, p0, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    .line 597
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 607
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 624
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 625
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 626
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 627
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 612
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 613
    .local v0, buf:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 616
    :cond_0
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 617
    return-void
.end method
