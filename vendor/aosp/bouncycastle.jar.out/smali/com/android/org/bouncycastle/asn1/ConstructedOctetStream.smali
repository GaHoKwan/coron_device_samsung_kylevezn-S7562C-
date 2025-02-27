.class Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 1
    .parameter "parser"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 17
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 18
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 73
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v3, :cond_3

    .line 75
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v3, :cond_1

    move v0, v2

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 82
    .local v1, s:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_2

    move v0, v2

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 88
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 93
    .end local v1           #s:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 95
    .local v0, b:I
    if-gez v0, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 102
    .restart local v1       #s:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_4

    .line 104
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    move v0, v2

    .line 105
    goto :goto_0

    .line 108
    :cond_4
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1
.end method

.method public read([BII)I
    .locals 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 22
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v5, :cond_2

    .line 24
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v5, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v4

    .line 29
    :cond_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 31
    .local v2, s:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-eqz v2, :cond_0

    .line 36
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 37
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 40
    .end local v2           #s:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_2
    const/4 v3, 0x0

    .line 44
    .local v3, totalRead:I
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v6, p2, v3

    sub-int v7, p3, v3

    invoke-virtual {v5, p1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 46
    .local v1, numRead:I
    if-ltz v1, :cond_4

    .line 48
    add-int/2addr v3, v1

    .line 50
    if-ne v3, p3, :cond_3

    move v4, v3

    .line 52
    goto :goto_0

    .line 57
    :cond_4
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 59
    .local v0, aos:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_6

    .line 61
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 62
    const/4 v5, 0x1

    if-ge v3, v5, :cond_5

    move v3, v4

    .end local v3           #totalRead:I
    :cond_5
    move v4, v3

    goto :goto_0

    .line 65
    .restart local v3       #totalRead:I
    :cond_6
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1
.end method
