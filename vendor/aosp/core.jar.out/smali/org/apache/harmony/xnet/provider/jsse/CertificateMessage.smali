.class public Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "CertificateMessage.java"


# instance fields
.field certs:[Ljava/security/cert/X509Certificate;

.field encoded_certs:[[B


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .locals 10
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x32

    const/4 v7, 0x0

    .line 53
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint24()I

    move-result v4

    .line 55
    .local v4, l:I
    if-nez v4, :cond_2

    .line 56
    if-eq p2, v9, :cond_0

    .line 57
    const-string v6, "DECODE ERROR: incorrect CertificateMessage"

    invoke-virtual {p0, v8, v6}, Lorg/apache/harmony/xnet/provider/jsse/Message;->fatalAlert(BLjava/lang/String;)V

    .line 60
    :cond_0
    new-array v6, v7, [Ljava/security/cert/X509Certificate;

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 61
    filled-new-array {v7, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 62
    iput v9, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    :try_start_0
    const-string v6, "X509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    .local v1, cf:Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, certsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    const/4 v5, 0x0

    .line 74
    .local v5, size:I
    const/4 v3, 0x0

    .line 75
    .local v3, enc_size:I
    :goto_1
    if-lez v4, :cond_3

    .line 76
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint24()I

    move-result v5

    .line 77
    add-int/lit8 v4, v4, -0x3

    .line 79
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :goto_2
    sub-int/2addr v4, v5

    .line 84
    add-int/2addr v3, v5

    goto :goto_1

    .line 68
    .end local v0           #certsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v1           #cf:Ljava/security/cert/CertificateFactory;
    .end local v3           #enc_size:I
    .end local v5           #size:I
    :catch_0
    move-exception v2

    .line 69
    .local v2, e:Ljava/security/cert/CertificateException;
    const/16 v6, 0x50

    const-string v7, "INTERNAL ERROR"

    invoke-virtual {p0, v6, v7, v2}, Lorg/apache/harmony/xnet/provider/jsse/Message;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    .end local v2           #e:Ljava/security/cert/CertificateException;
    .restart local v0       #certsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .restart local v1       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v3       #enc_size:I
    .restart local v5       #size:I
    :catch_1
    move-exception v2

    .line 81
    .restart local v2       #e:Ljava/security/cert/CertificateException;
    const-string v6, "DECODE ERROR"

    invoke-virtual {p0, v8, v6, v2}, Lorg/apache/harmony/xnet/provider/jsse/Message;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 86
    .end local v2           #e:Ljava/security/cert/CertificateException;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 87
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v3

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 88
    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eq v6, p2, :cond_1

    .line 89
    const-string v6, "DECODE ERROR: incorrect CertificateMessage"

    invoke-virtual {p0, v8, v6}, Lorg/apache/harmony/xnet/provider/jsse/Message;->fatalAlert(BLjava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 4
    .parameter "certs"

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 99
    if-nez p1, :cond_1

    .line 100
    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 101
    filled-new-array {v3, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 102
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 121
    :cond_0
    return-void

    .line 105
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    .line 106
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    if-nez v2, :cond_2

    .line 107
    array-length v2, p1

    new-array v2, v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 108
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 110
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    const/16 v2, 0x50

    const-string v3, "INTERNAL ERROR"

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/Message;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 117
    .end local v0           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 118
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 119
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 166
    const/16 v0, 0xb

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 5
    .parameter "out"

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, total_length:I
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    if-nez v3, :cond_0

    .line 133
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    new-array v3, v3, [[B

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    .line 134
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 136
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    const/16 v3, 0x50

    const-string v4, "INTERNAL ERROR"

    invoke-virtual {p0, v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/Message;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 143
    .end local v0           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v1           #i:I
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    mul-int/lit8 v2, v3, 0x3

    .line 144
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 145
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/2addr v2, v3

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    :cond_1
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint24(J)V

    .line 148
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 149
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint24(J)V

    .line 150
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 153
    :cond_2
    return-void
.end method
