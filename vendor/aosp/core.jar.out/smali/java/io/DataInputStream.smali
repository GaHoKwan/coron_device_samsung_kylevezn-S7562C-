.class public Ljava/io/DataInputStream;
.super Ljava/io/FilterInputStream;
.source "DataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final scratch:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    .line 55
    return-void
.end method

.method private static decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;
    .locals 3
    .parameter "utfSize"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 194
    new-array v0, p0, [B

    .line 195
    .local v0, buf:[B
    invoke-interface {p1, v0, v2, p0}, Ljava/io/DataInput;->readFully([BII)V

    .line 196
    new-array v1, p0, [C

    invoke-static {v0, v1, v2, p0}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final readUTF(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-static {v0, p0}, Ljava/io/DataInputStream;->decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method decodeUTF(I)Ljava/lang/String;
    .locals 1
    .parameter "utfSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p1, p0}, Ljava/io/DataInputStream;->decodeUTF(ILjava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final read([B)I
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

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
    .line 88
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 89
    .local v0, temp:I
    if-gez v0, :cond_0

    .line 90
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 92
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
    .line 96
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 97
    .local v0, temp:I
    if-gez v0, :cond_0

    .line 98
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 100
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
    .line 104
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

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
    .line 108
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

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
    .line 112
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

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
    .line 116
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 117
    return-void
.end method

.method public final readFully([BII)V
    .locals 1
    .parameter "dst"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 121
    return-void
.end method

.method public final readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    const/4 v2, 0x4

    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 125
    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v1, line:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 133
    .local v0, foundTerminator:Z
    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 134
    .local v2, nextByte:I
    sparse-switch v2, :sswitch_data_0

    .line 154
    if-eqz v0, :cond_3

    .line 155
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 136
    :sswitch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 137
    const/4 v3, 0x0

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 141
    :sswitch_1
    if-eqz v0, :cond_2

    .line 142
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 145
    :cond_2
    const/4 v0, 0x1

    .line 147
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/io/PushbackInputStream;

    if-eq v3, v4, :cond_0

    .line 148
    new-instance v3, Ljava/io/PushbackInputStream;

    iget-object v4, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    .line 152
    :sswitch_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 158
    :cond_3
    int-to-char v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    const/16 v2, 0x8

    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 165
    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/io/DataInputStream;->scratch:[B

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 170
    iget-object v0, p0, Ljava/io/DataInputStream;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 175
    .local v0, temp:I
    if-gez v0, :cond_0

    .line 176
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 178
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
    .line 182
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final skipBytes(I)I
    .locals 6
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, skipped:I
    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    sub-int v4, p1, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .local v0, skip:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 222
    int-to-long v3, v2

    add-long/2addr v3, v0

    long-to-int v2, v3

    goto :goto_0

    .line 224
    .end local v0           #skip:J
    :cond_0
    return v2
.end method
