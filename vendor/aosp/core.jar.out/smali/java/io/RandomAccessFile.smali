.class public Ljava/io/RandomAccessFile;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private mode:I

.field private final scratch:[B

.field private syncMetadata:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .parameter "file"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    .line 56
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    .line 58
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/io/RandomAccessFile;->scratch:[B

    .line 103
    const-string v1, "r"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    sget v0, Llibcore/io/OsConstants;->O_RDONLY:I

    .line 117
    .local v0, flags:I
    :cond_0
    :goto_0
    iput v0, p0, Ljava/io/RandomAccessFile;->mode:I

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    .line 121
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v1, :cond_1

    .line 123
    :try_start_0
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    :goto_1
    iget-object v1, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 129
    return-void

    .line 105
    .end local v0           #flags:I
    :cond_2
    const-string v1, "rw"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "rws"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "rwd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    :cond_3
    sget v1, Llibcore/io/OsConstants;->O_RDWR:I

    sget v2, Llibcore/io/OsConstants;->O_CREAT:I

    or-int v0, v1, v2

    .line 107
    .restart local v0       #flags:I
    const-string v1, "rws"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    goto :goto_0

    .line 110
    :cond_4
    const-string v1, "rwd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget v1, Llibcore/io/OsConstants;->O_SYNC:I

    or-int/2addr v0, v1

    goto :goto_0

    .line 115
    .end local v0           #flags:I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    .restart local v0       #flags:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
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
    .line 160
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 166
    :cond_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 167
    monitor-exit p0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 175
    :cond_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final declared-synchronized getChannel()Ljava/nio/channels/FileChannel;
    .locals 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v1, p0, Ljava/io/RandomAccessFile;->mode:I

    invoke-static {p0, v0, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/lang/Object;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 195
    :cond_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFilePointer()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v3, 0x0

    sget v5, Llibcore/io/OsConstants;->SEEK_CUR:I

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public length()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v1

    iget-wide v1, v1, Llibcore/io/StructStat;->st_size:J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 255
    iget-object v1, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "byteOffset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public final readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 307
    .local v0, temp:I
    if-gez v0, :cond_0

    .line 308
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 310
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 327
    .local v0, temp:I
    if-gez v0, :cond_0

    .line 328
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 330
    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 386
    return-void
.end method

.method public final readFully([BII)V
    .locals 2
    .parameter "dst"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 416
    :goto_0
    if-lez p3, :cond_1

    .line 417
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 418
    .local v0, result:I
    if-gez v0, :cond_0

    .line 419
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 421
    :cond_0
    add-int/2addr p2, v0

    .line 422
    sub-int/2addr p3, v0

    .line 423
    goto :goto_0

    .line 424
    .end local v0           #result:I
    :cond_1
    return-void
.end method

.method public final readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 439
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 440
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 459
    .local v1, line:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 460
    .local v0, foundTerminator:Z
    const-wide/16 v3, 0x0

    .line 462
    .local v3, unreadPosition:J
    :goto_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 463
    .local v2, nextByte:I
    sparse-switch v2, :sswitch_data_0

    .line 478
    if-eqz v0, :cond_2

    .line 479
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 480
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    .line 465
    :sswitch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 467
    :sswitch_1
    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 469
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 471
    :cond_1
    const/4 v0, 0x1

    .line 473
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 474
    goto :goto_0

    .line 476
    :sswitch_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 482
    :cond_2
    int-to-char v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 463
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 500
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 501
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 517
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 518
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 575
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v1

    .line 576
    .local v1, utfSize:I
    if-nez v1, :cond_0

    .line 577
    const-string v2, ""

    .line 583
    :goto_0
    return-object v2

    .line 579
    :cond_0
    new-array v0, v1, [B

    .line 580
    .local v0, buf:[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_1

    .line 581
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 583
    :cond_1
    new-array v2, v1, [C

    invoke-static {v0, v2, v4, v1}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 535
    .local v0, temp:I
    if-gez v0, :cond_0

    .line 536
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 538
    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public seek(J)V
    .locals 4
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 601
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 604
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    sget v3, Llibcore/io/OsConstants;->SEEK_SET:I

    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public setLength(J)V
    .locals 5
    .parameter "newLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    .line 626
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newLength < 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 629
    :cond_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 635
    .local v1, filePointer:J
    cmp-long v3, v1, p1

    if-lez v3, :cond_1

    .line 636
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 640
    :cond_1
    iget-boolean v3, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v3, :cond_2

    .line 641
    iget-object v3, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 643
    :cond_2
    return-void

    .line 630
    .end local v1           #filePointer:J
    :catch_0
    move-exception v0

    .line 631
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method public skipBytes(I)I
    .locals 7
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    if-lez p1, :cond_1

    .line 659
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .local v0, currentPos:J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 660
    .local v2, eof:J
    int-to-long v5, p1

    add-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-lez v5, :cond_0

    sub-long v5, v2, v0

    :goto_0
    long-to-int v4, v5

    .line 661
    .local v4, newCount:I
    int-to-long v5, v4

    add-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 664
    .end local v0           #currentPos:J
    .end local v2           #eof:J
    .end local v4           #newCount:I
    :goto_1
    return v4

    .line 660
    .restart local v0       #currentPos:J
    .restart local v2       #eof:J
    :cond_0
    int-to-long v5, p1

    goto :goto_0

    .line 664
    .end local v0           #currentPos:J
    .end local v2           #eof:J
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
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
    const/4 v2, 0x0

    .line 710
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 711
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 712
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 678
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "byteOffset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 694
    iget-boolean v0, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 697
    :cond_0
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 1
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 726
    return-void

    .line 725
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 1
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 741
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 754
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 755
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 754
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 758
    return-void
.end method

.method public final writeChar(I)V
    .locals 0
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 773
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 1
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    const-string v0, "UTF-16BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 787
    return-void
.end method

.method public final writeDouble(D)V
    .locals 2
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 802
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 817
    return-void
.end method

.method public final writeInt(I)V
    .locals 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 830
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, p1, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 831
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 832
    return-void
.end method

.method public final writeLong(J)V
    .locals 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 845
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, p1, p2, v1}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 846
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 847
    return-void
.end method

.method public final writeShort(I)V
    .locals 4
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 862
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    int-to-short v1, p1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 863
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 864
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 1
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-static {p1}, Ljava/nio/charset/ModifiedUtf8;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 881
    return-void
.end method
