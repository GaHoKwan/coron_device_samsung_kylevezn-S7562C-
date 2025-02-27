.class Ljava/nio/channels/Channels$OutputStreamChannel;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "Channels.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputStreamChannel"
.end annotation


# instance fields
.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outputStream"

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    .line 330
    if-nez p1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 333
    :cond_0
    iput-object p1, p0, Ljava/nio/channels/Channels$OutputStreamChannel;->outputStream:Ljava/io/OutputStream;

    .line 334
    return-void
.end method


# virtual methods
.method protected implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Ljava/nio/channels/Channels$OutputStreamChannel;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 358
    return-void
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 337
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 340
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 341
    .local v1, bytesRemain:I
    if-nez v1, :cond_1

    move v1, v2

    .line 352
    .end local v1           #bytesRemain:I
    :goto_0
    monitor-exit p0

    return v1

    .line 344
    .restart local v1       #bytesRemain:I
    :cond_1
    :try_start_2
    new-array v0, v1, [B

    .line 345
    .local v0, buf:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    .line 348
    iget-object v3, p0, Ljava/nio/channels/Channels$OutputStreamChannel;->outputStream:Ljava/io/OutputStream;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 350
    if-ltz v1, :cond_2

    :goto_1
    :try_start_4
    invoke-virtual {p0, v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :catchall_1
    move-exception v3

    if-ltz v1, :cond_3

    move v2, v4

    :cond_3
    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
