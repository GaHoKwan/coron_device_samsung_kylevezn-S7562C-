.class public Ljava/util/zip/CRC32;
.super Ljava/lang/Object;
.source "CRC32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# instance fields
.field private crc:J

.field tbytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    .line 30
    iput-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    return-void
.end method

.method private native updateByteImpl(BJ)J
.end method

.method private native updateImpl([BIIJ)J
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    iput-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    .line 47
    return-void
.end method

.method public update(I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 56
    int-to-byte v0, p1

    iget-wide v1, p0, Ljava/util/zip/CRC32;->crc:J

    invoke-direct {p0, v0, v1, v2}, Ljava/util/zip/CRC32;->updateByteImpl(BJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    .line 57
    return-void
.end method

.method public update([B)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 66
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 67
    return-void
.end method

.method public update([BII)V
    .locals 6
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 74
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 75
    iget-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    .line 76
    iget-wide v4, p0, Ljava/util/zip/CRC32;->crc:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/CRC32;->updateImpl([BIIJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    .line 77
    return-void
.end method
