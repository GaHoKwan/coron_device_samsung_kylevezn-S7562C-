.class public Ljava/io/StringBufferInputStream;
.super Ljava/io/InputStream;
.source "StringBufferInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected buffer:Ljava/lang/String;

.field protected count:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringBufferInputStream;->count:I

    .line 61
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/StringBufferInputStream;->pos:I

    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 103
    monitor-enter p0

    if-nez p1, :cond_0

    .line 104
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "buffer == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 106
    :cond_0
    :try_start_1
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    if-nez p3, :cond_1

    .line 108
    const/4 v0, 0x0

    .line 116
    :goto_0
    monitor-exit p0

    return v0

    .line 111
    :cond_1
    :try_start_2
    iget v2, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v2, v3

    if-ge v2, p3, :cond_2

    iget v2, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v3, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int v0, v2, v3

    .line 112
    .local v0, copylen:I
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 113
    add-int v2, p2, v1

    iget-object v3, p0, Ljava/io/StringBufferInputStream;->buffer:Ljava/lang/String;

    iget v4, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #copylen:I
    .end local v1           #i:I
    :cond_2
    move v0, p3

    .line 111
    goto :goto_1

    .line 115
    .restart local v0       #copylen:I
    .restart local v1       #i:I
    :cond_3
    iget v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 4
    .parameter "charCount"

    .prologue
    const-wide/16 v1, 0x0

    .line 137
    monitor-enter p0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    .line 149
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 142
    :cond_0
    :try_start_0
    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 143
    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    iget v2, p0, Ljava/io/StringBufferInputStream;->pos:I

    sub-int v0, v1, v2

    .line 144
    .local v0, numskipped:I
    iget v1, p0, Ljava/io/StringBufferInputStream;->count:I

    iput v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    .line 149
    :goto_1
    int-to-long v1, v0

    goto :goto_0

    .line 146
    .end local v0           #numskipped:I
    :cond_1
    long-to-int v0, p1

    .line 147
    .restart local v0       #numskipped:I
    iget v1, p0, Ljava/io/StringBufferInputStream;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, p0, Ljava/io/StringBufferInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 137
    .end local v0           #numskipped:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
