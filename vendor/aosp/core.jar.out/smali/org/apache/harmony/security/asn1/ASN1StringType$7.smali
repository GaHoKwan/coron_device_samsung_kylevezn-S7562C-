.class final Lorg/apache/harmony/security/asn1/ASN1StringType$7;
.super Lorg/apache/harmony/security/asn1/ASN1StringType;
.source "ASN1StringType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1StringType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 67
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 68
    .local v0, bytes:[B
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 69
    array-length v1, v0

    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 70
    return-void
.end method
