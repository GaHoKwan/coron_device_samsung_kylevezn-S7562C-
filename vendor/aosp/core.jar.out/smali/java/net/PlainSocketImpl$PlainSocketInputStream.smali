.class Ljava/net/PlainSocketImpl$PlainSocketInputStream;
.super Ljava/io/InputStream;
.source "PlainSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/PlainSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlainSocketInputStream"
.end annotation


# instance fields
.field private final socketImpl:Ljava/net/PlainSocketImpl;


# direct methods
.method public constructor <init>(Ljava/net/PlainSocketImpl;)V
    .locals 0
    .parameter "socketImpl"

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 224
    iput-object p1, p0, Ljava/net/PlainSocketImpl$PlainSocketInputStream;->socketImpl:Ljava/net/PlainSocketImpl;

    .line 225
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
    .line 228
    iget-object v0, p0, Ljava/net/PlainSocketImpl$PlainSocketInputStream;->socketImpl:Ljava/net/PlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/PlainSocketImpl;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Ljava/net/PlainSocketImpl$PlainSocketInputStream;->socketImpl:Ljava/net/PlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/PlainSocketImpl;->close()V

    .line 233
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Ljava/net/PlainSocketImpl$PlainSocketInputStream;->socketImpl:Ljava/net/PlainSocketImpl;

    #calls: Ljava/net/PlainSocketImpl;->read([BII)I
    invoke-static {v0, p1, p2, p3}, Ljava/net/PlainSocketImpl;->access$000(Ljava/net/PlainSocketImpl;[BII)I

    move-result v0

    return v0
.end method
