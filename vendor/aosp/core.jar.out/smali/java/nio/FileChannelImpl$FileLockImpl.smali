.class final Ljava/nio/FileChannelImpl$FileLockImpl;
.super Ljava/nio/channels/FileLock;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileLockImpl"
.end annotation


# instance fields
.field private isReleased:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .locals 1
    .parameter "channel"
    .parameter "position"
    .parameter "size"
    .parameter "shared"

    .prologue
    .line 142
    invoke-direct/range {p0 .. p6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    .line 143
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 153
    :cond_0
    iget-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/FileChannelImpl;

    invoke-virtual {v0, p0}, Ljava/nio/FileChannelImpl;->release(Ljava/nio/channels/FileLock;)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/FileChannelImpl$FileLockImpl;->isReleased:Z

    .line 157
    :cond_1
    return-void
.end method
