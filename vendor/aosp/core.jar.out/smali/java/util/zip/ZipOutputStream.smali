.class public Ljava/util/zip/ZipOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "ZipOutputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I = 0x0

.field private static final ZIPLocalHeaderVersionNeeded:I = 0x14


# instance fields
.field private cDir:Ljava/io/ByteArrayOutputStream;

.field private comment:Ljava/lang/String;

.field private compressLevel:I

.field private compressMethod:I

.field private final crc:Ljava/util/zip/CRC32;

.field private curOffset:I

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private final entries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nameBytes:[B

.field private nameLength:I

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "p1"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 105
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    .line 83
    const/16 v0, 0x8

    iput v0, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    .line 85
    iput v2, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    .line 87
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    .line 91
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 93
    iput v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 106
    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    return-void
.end method

.method private writeLong(Ljava/io/OutputStream;J)J
    .locals 2
    .parameter "os"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const-wide/16 v0, 0xff

    and-long/2addr v0, p2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 393
    const/16 v0, 0x8

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 394
    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 395
    const/16 v0, 0x18

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 396
    return-wide p2
.end method

.method private writeShort(Ljava/io/OutputStream;I)I
    .locals 1
    .parameter "os"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 401
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 402
    return p2
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
    .line 118
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 120
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 121
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 124
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x14

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->checkClosed()V

    .line 135
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v4, :cond_0

    .line 212
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 139
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 143
    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_3

    .line 144
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    iget-object v6, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v6, v6, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 145
    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "CRC mismatch"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_2
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    iget-object v6, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v6, v6, Ljava/util/zip/CRC32;->tbytes:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 148
    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "Size mismatch"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_3
    const/16 v4, 0x1e

    iput v4, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 154
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    iget v4, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    add-int/lit8 v4, v4, 0x10

    iput v4, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 156
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v5, 0x8074b50

    invoke-direct {p0, v4, v5, v6}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 157
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v6, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    iput-wide v6, v5, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v4, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 158
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v6, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Ljava/util/zip/ZipEntry;->compressedSize:J

    invoke-direct {p0, v4, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 159
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v6, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v4, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 163
    :cond_4
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_7

    move v1, v2

    .line 167
    .local v1, flags:I
    :goto_1
    or-int/lit16 v1, v1, 0x800

    .line 168
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v5, 0x2014b50

    invoke-direct {p0, v4, v5, v6}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 169
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 170
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 171
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 172
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v5

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 173
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v5, v5, Ljava/util/zip/ZipEntry;->time:I

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 174
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v5, v5, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 175
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-direct {p0, v4, v5, v6}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 176
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-ne v4, v3, :cond_8

    .line 177
    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    int-to-long v3, v3

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v6, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, v5, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 178
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 183
    :goto_2
    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 184
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v3, :cond_9

    .line 185
    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v5, v5, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v5, v5

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 190
    :goto_3
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .local v0, c:Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 191
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 195
    :goto_4
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 196
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 197
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 198
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v4, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    int-to-long v4, v4

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 199
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 200
    iput-object v9, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    .line 201
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v3, :cond_5

    .line 202
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 204
    :cond_5
    iget v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    iget v4, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    .line 205
    if-eqz v0, :cond_6

    .line 206
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 208
    :cond_6
    iput-object v9, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 209
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 210
    iget-object v3, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->reset()V

    .line 211
    iput-boolean v2, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    goto/16 :goto_0

    .end local v0           #c:Ljava/lang/String;
    .end local v1           #flags:I
    :cond_7
    move v1, v3

    .line 163
    goto/16 :goto_1

    .line 180
    .restart local v1       #flags:I
    :cond_8
    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    int-to-long v3, v3

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v6, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v6, v6, Ljava/util/zip/CRC32;->tbytes:J

    invoke-direct {p0, v5, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 181
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v4, v4, Ljava/util/zip/CRC32;->tbytes:J

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    goto/16 :goto_2

    .line 187
    :cond_9
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto/16 :goto_3

    .line 193
    .restart local v0       #c:Ljava/lang/String;
    :cond_a
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_4
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 224
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_1

    .line 254
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "No entries"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_2
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_3

    .line 234
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 236
    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 238
    .local v0, cdirSize:I
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v2, 0x6054b50

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 239
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 240
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 241
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 242
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 243
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 244
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 245
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 246
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 247
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 252
    :goto_1
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 253
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    .line 249
    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_1
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 12
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v11, 0xffff

    const/4 v1, 0x0

    const/4 v10, -0x1

    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    .line 269
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 272
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-ne v2, v10, :cond_4

    .line 273
    :cond_1
    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 274
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_2
    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 277
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_3
    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 280
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_4
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->checkClosed()V

    .line 284
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    iget-object v3, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_5
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v11, :cond_6

    .line 289
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Too many entries for the zip file format\'s 16-bit entry count"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_6
    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iput-object v2, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    .line 292
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    array-length v2, v2

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    .line 293
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    if-le v2, v11, :cond_7

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UTF-8 bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_7
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    invoke-virtual {v2, v3}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 298
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 299
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-ne v2, v10, :cond_8

    .line 301
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 306
    :cond_8
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 309
    .local v0, flags:I
    :goto_0
    or-int/lit16 v0, v0, 0x800

    .line 310
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v3, 0x4034b50

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 311
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v3, 0x14

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 312
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 313
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 314
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_9

    .line 315
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 317
    :cond_9
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v3, v3, Ljava/util/zip/ZipEntry;->time:I

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 318
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v3, v3, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 320
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_e

    .line 321
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_d

    .line 322
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v3, v2, Ljava/util/zip/ZipEntry;->size:J

    .line 326
    :cond_a
    :goto_1
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 327
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 328
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 334
    :goto_2
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 335
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_f

    .line 336
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v2, v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 340
    :goto_3
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 341
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, v1, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v1, :cond_b

    .line 342
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 344
    :cond_b
    return-void

    .line 306
    .end local v0           #flags:I
    :cond_c
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 323
    .restart local v0       #flags:I
    :cond_d
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_a

    .line 324
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v3, v2, Ljava/util/zip/ZipEntry;->compressedSize:J

    goto :goto_1

    .line 330
    :cond_e
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 331
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 332
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    goto :goto_2

    .line 338
    :cond_f
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_3
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 3
    .parameter "comment"

    .prologue
    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comment too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 369
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 372
    :cond_1
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    .line 373
    return-void
.end method

.method public setMethod(I)V
    .locals 1
    .parameter "method"

    .prologue
    .line 384
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 387
    :cond_0
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    .line 388
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
    .line 413
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 414
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "No active entry"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 423
    :goto_0
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 424
    return-void

    .line 421
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    goto :goto_0
.end method
