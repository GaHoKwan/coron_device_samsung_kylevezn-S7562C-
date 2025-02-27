.class final Llibcore/net/http/UnknownLengthHttpInputStream;
.super Llibcore/net/http/AbstractHttpInputStream;
.source "UnknownLengthHttpInputStream.java"


# instance fields
.field private inputExhausted:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;)V
    .locals 0
    .parameter "is"
    .parameter "cacheRequest"
    .parameter "httpEngine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p3, p2}, Llibcore/net/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Llibcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V

    .line 33
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Llibcore/net/http/AbstractHttpInputStream;->checkNotClosed()V

    .line 53
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-boolean v0, p0, Llibcore/net/http/AbstractHttpInputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/AbstractHttpInputStream;->closed:Z

    .line 61
    iget-boolean v0, p0, Llibcore/net/http/UnknownLengthHttpInputStream;->inputExhausted:Z

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Llibcore/net/http/AbstractHttpInputStream;->unexpectedEndOfInput()V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 36
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 37
    invoke-virtual {p0}, Llibcore/net/http/AbstractHttpInputStream;->checkNotClosed()V

    .line 38
    iget-object v2, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Llibcore/net/http/UnknownLengthHttpInputStream;->inputExhausted:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 48
    :goto_0
    return v0

    .line 41
    :cond_1
    iget-object v2, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 42
    .local v0, read:I
    if-ne v0, v1, :cond_2

    .line 43
    const/4 v2, 0x1

    iput-boolean v2, p0, Llibcore/net/http/UnknownLengthHttpInputStream;->inputExhausted:Z

    .line 44
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Llibcore/net/http/AbstractHttpInputStream;->endOfInput(Z)V

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Llibcore/net/http/AbstractHttpInputStream;->cacheWrite([BII)V

    goto :goto_0
.end method
