.class public Ljava/util/zip/DeflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DeflaterOutputStream.java"


# static fields
.field static final BUF_SIZE:I = 0x200


# instance fields
.field protected buf:[B

.field protected def:Ljava/util/zip/Deflater;

.field done:Z

.field private final syncFlush:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "os"

    .prologue
    .line 76
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    .locals 2
    .parameter "os"
    .parameter "def"

    .prologue
    .line 62
    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V
    .locals 1
    .parameter "os"
    .parameter "def"
    .parameter "bsize"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V
    .locals 1
    .parameter "os"
    .parameter "def"
    .parameter "bsize"
    .parameter "syncFlush"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    .line 118
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 121
    :cond_1
    if-gtz p3, :cond_2

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :cond_2
    iput-object p2, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    .line 125
    iput-boolean p4, p0, Ljava/util/zip/DeflaterOutputStream;->syncFlush:Z

    .line 126
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    .locals 1
    .parameter "os"
    .parameter "def"
    .parameter "syncFlush"

    .prologue
    .line 109
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .parameter "os"
    .parameter "syncFlush"

    .prologue
    .line 101
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 102
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
    .line 155
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 158
    :cond_0
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 159
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 160
    return-void
.end method

.method protected deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :goto_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    .local v0, byteCount:I
    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    if-eqz v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 174
    :goto_1
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    .line 176
    .local v0, byteCount:I
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 178
    .end local v0           #byteCount:I
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    goto :goto_0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 213
    iget-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->syncFlush:Z

    if-eqz v1, :cond_0

    .line 215
    :goto_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    iget-object v3, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    array-length v3, v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v5, v3, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    .local v0, byteCount:I
    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 219
    .end local v0           #byteCount:I
    :cond_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 220
    return-void
.end method

.method public write(I)V
    .locals 0
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    .line 183
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
    .line 192
    iget-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/io/IOException;

    const-string v1, "attempt to write after finish"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 196
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 199
    :cond_1
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 200
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->deflate()V

    .line 201
    return-void
.end method
