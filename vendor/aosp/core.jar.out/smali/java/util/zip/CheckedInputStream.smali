.class public Ljava/util/zip/CheckedInputStream;
.super Ljava/io/FilterInputStream;
.source "CheckedInputStream.java"


# instance fields
.field private final check:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    .locals 0
    .parameter "is"
    .parameter "csum"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    iput-object p2, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    .line 50
    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/util/zip/Checksum;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 64
    .local v0, x:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 67
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 90
    .local v0, x:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    invoke-interface {v1, p1, p2, v0}, Ljava/util/zip/Checksum;->update([BII)V

    .line 93
    :cond_0
    return v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
