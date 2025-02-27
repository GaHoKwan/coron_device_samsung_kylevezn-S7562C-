.class Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;
.super Ljava/net/SecureCacheResponse;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySecureCacheResponse"
.end annotation


# instance fields
.field private final entry:Llibcore/net/http/HttpResponseCache$Entry;

.field private final in:Ljava/io/InputStream;

.field private final snapshot:Llibcore/io/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Llibcore/net/http/HttpResponseCache$Entry;Llibcore/io/DiskLruCache$Snapshot;)V
    .locals 1
    .parameter "entry"
    .parameter "snapshot"

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    .line 547
    iput-object p1, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    .line 548
    iput-object p2, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Llibcore/io/DiskLruCache$Snapshot;

    .line 549
    #calls: Llibcore/net/http/HttpResponseCache;->newBodyInputStream(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    invoke-static {p2}, Llibcore/net/http/HttpResponseCache;->access$600(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->in:Ljava/io/InputStream;

    .line 550
    return-void
.end method

.method static synthetic access$200(Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;)Llibcore/io/DiskLruCache$Snapshot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Llibcore/io/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$800(Llibcore/net/http/HttpResponseCache$Entry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$1000(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$1000(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 581
    :cond_0
    const/4 v0, 0x0

    .line 583
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$1000(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$1000(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$1000(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 588
    :cond_0
    const/4 v0, 0x0

    .line 590
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$1000(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$900(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$900(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 574
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$900(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$900(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$900(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 567
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$900(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
