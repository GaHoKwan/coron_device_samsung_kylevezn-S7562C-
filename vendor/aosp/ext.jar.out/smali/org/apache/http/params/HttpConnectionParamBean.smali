.class public Lorg/apache/http/params/HttpConnectionParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "HttpConnectionParamBean.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 38
    return-void
.end method


# virtual methods
.method public setConnectionTimeout(I)V
    .locals 1
    .parameter "connectionTimeout"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/http/params/HttpAbstractParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 58
    return-void
.end method

.method public setLinger(I)V
    .locals 1
    .parameter "linger"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/http/params/HttpAbstractParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .parameter "soTimeout"

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/http/params/HttpAbstractParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 42
    return-void
.end method

.method public setSocketBufferSize(I)V
    .locals 1
    .parameter "socketBufferSize"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/http/params/HttpAbstractParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 50
    return-void
.end method

.method public setStaleCheckingEnabled(Z)V
    .locals 1
    .parameter "staleCheckingEnabled"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/http/params/HttpAbstractParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 62
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .parameter "tcpNoDelay"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/http/params/HttpAbstractParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 46
    return-void
.end method
