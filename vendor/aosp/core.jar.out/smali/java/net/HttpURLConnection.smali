.class public abstract Ljava/net/HttpURLConnection;
.super Ljava/net/URLConnection;
.source "HttpURLConnection.java"


# static fields
.field public static final HTTP_ACCEPTED:I = 0xca

.field public static final HTTP_BAD_GATEWAY:I = 0x1f6

.field public static final HTTP_BAD_METHOD:I = 0x195

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_CLIENT_TIMEOUT:I = 0x198

.field public static final HTTP_CONFLICT:I = 0x199

.field public static final HTTP_CREATED:I = 0xc9

.field public static final HTTP_ENTITY_TOO_LARGE:I = 0x19d

.field public static final HTTP_FORBIDDEN:I = 0x193

.field public static final HTTP_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final HTTP_GONE:I = 0x19a

.field public static final HTTP_INTERNAL_ERROR:I = 0x1f4

.field public static final HTTP_LENGTH_REQUIRED:I = 0x19b

.field public static final HTTP_MOVED_PERM:I = 0x12d

.field public static final HTTP_MOVED_TEMP:I = 0x12e

.field public static final HTTP_MULT_CHOICE:I = 0x12c

.field public static final HTTP_NOT_ACCEPTABLE:I = 0x196

.field public static final HTTP_NOT_AUTHORITATIVE:I = 0xcb

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final HTTP_NOT_MODIFIED:I = 0x130

.field public static final HTTP_NO_CONTENT:I = 0xcc

.field public static final HTTP_OK:I = 0xc8

.field public static final HTTP_PARTIAL:I = 0xce

.field public static final HTTP_PAYMENT_REQUIRED:I = 0x192

.field public static final HTTP_PRECON_FAILED:I = 0x19c

.field public static final HTTP_PROXY_AUTH:I = 0x197

.field public static final HTTP_REQ_TOO_LONG:I = 0x19e

.field public static final HTTP_RESET:I = 0xcd

.field public static final HTTP_SEE_OTHER:I = 0x12f

.field public static final HTTP_SERVER_ERROR:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final HTTP_UNAVAILABLE:I = 0x1f7

.field public static final HTTP_UNSUPPORTED_TYPE:I = 0x19f

.field public static final HTTP_USE_PROXY:I = 0x131

.field public static final HTTP_VERSION:I = 0x1f9

.field private static final PERMITTED_USER_METHODS:[Ljava/lang/String;

.field private static followRedirects:Z


# instance fields
.field protected chunkLength:I

.field protected fixedContentLength:I

.field protected instanceFollowRedirects:Z

.field protected method:Ljava/lang/String;

.field protected responseCode:I

.field protected responseMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 265
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OPTIONS"

    aput-object v2, v0, v1

    const-string v1, "GET"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "POST"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PUT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TRACE"

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/HttpURLConnection;->PERMITTED_USER_METHODS:[Ljava/lang/String;

    .line 305
    sput-boolean v3, Ljava/net/HttpURLConnection;->followRedirects:Z

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 2
    .parameter "url"

    .prologue
    const/4 v1, -0x1

    .line 522
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 280
    const-string v0, "GET"

    iput-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 292
    iput v1, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 303
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    .line 312
    iput v1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    .line 319
    iput v1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 523
    return-void
.end method

.method public static getFollowRedirects()Z
    .locals 1

    .prologue
    .line 556
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    return v0
.end method

.method public static setFollowRedirects(Z)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 649
    sput-boolean p0, Ljava/net/HttpURLConnection;->followRedirects:Z

    .line 650
    return-void
.end method


# virtual methods
.method public abstract disconnect()V
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    invoke-super {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 736
    invoke-super {p0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    return v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 573
    .local v0, port:I
    if-gez v0, :cond_0

    .line 574
    const/16 v0, 0x50

    .line 576
    :cond_0
    new-instance v1, Ljava/net/SocketPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect, resolve"

    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 604
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 605
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, response:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 622
    :cond_0
    :goto_0
    return v3

    .line 609
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 610
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 611
    .local v1, mark:I
    if-eqz v1, :cond_0

    .line 614
    add-int/lit8 v0, v1, 0x3

    .line 615
    .local v0, last:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 616
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 618
    :cond_2
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 619
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 620
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 622
    :cond_3
    iget v3, p0, Ljava/net/HttpURLConnection;->responseCode:I

    goto :goto_0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 638
    :goto_0
    return-object v0

    .line 637
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 638
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public setChunkedStreamingMode(I)V
    .locals 2
    .parameter "chunkLength"

    .prologue
    .line 783
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 784
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    iget v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    if-ltz v0, :cond_1

    .line 787
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in fixed-length mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_1
    if-gtz p1, :cond_2

    .line 790
    const/16 v0, 0x400

    iput v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    .line 794
    :goto_0
    return-void

    .line 792
    :cond_2
    iput p1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    goto :goto_0
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2
    .parameter "contentLength"

    .prologue
    .line 753
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 754
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_0
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-lez v0, :cond_1

    .line 757
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_1
    if-gez p1, :cond_2

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_2
    iput p1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 763
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 0
    .parameter "followRedirects"

    .prologue
    .line 718
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    .line 719
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 7
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 665
    iget-boolean v4, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v4, :cond_0

    .line 666
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Connection already established"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 668
    :cond_0
    sget-object v0, Ljava/net/HttpURLConnection;->PERMITTED_USER_METHODS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 669
    .local v3, permittedUserMethod:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 672
    iput-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 673
    return-void

    .line 668
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 677
    .end local v3           #permittedUserMethod:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown method \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'; must be one of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/net/HttpURLConnection;->PERMITTED_USER_METHODS:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public abstract usingProxy()Z
.end method
