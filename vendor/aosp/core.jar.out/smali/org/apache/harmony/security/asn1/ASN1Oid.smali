.class public Lorg/apache/harmony/security/asn1/ASN1Oid;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Oid.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

.field private static final STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Oid;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    .line 133
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Oid$1;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Oid$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    .line 48
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Oid;

    return-object v0
.end method

.method public static getInstanceForString()Lorg/apache/harmony/security/asn1/ASN1Oid;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Oid;->STRING_OID:Lorg/apache/harmony/security/asn1/ASN1Oid;

    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readOID()V

    .line 65
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 102
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeOID()V

    .line 103
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 78
    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    .line 79
    .local v4, oidElement:I
    new-array v3, v4, [I

    .line 80
    .local v3, oid:[I
    const/4 v1, 0x1

    .local v1, id:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 81
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v0

    aget-byte v2, v5, v6

    .line 82
    .local v2, octet:I
    and-int/lit8 v4, v2, 0x7f

    .line 83
    :goto_1
    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_0

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v0

    aget-byte v2, v5, v6

    .line 86
    shl-int/lit8 v5, v4, 0x7

    and-int/lit8 v6, v2, 0x7f

    or-int v4, v5, v6

    goto :goto_1

    .line 88
    :cond_0
    aput v4, v3, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v2           #octet:I
    :cond_1
    aget v5, v3, v7

    const/16 v6, 0x4f

    if-le v5, v6, :cond_2

    .line 92
    const/4 v5, 0x2

    aput v5, v3, v8

    .line 93
    aget v5, v3, v7

    add-int/lit8 v5, v5, -0x50

    aput v5, v3, v7

    .line 98
    :goto_2
    return-object v3

    .line 95
    :cond_2
    aget v5, v3, v7

    div-int/lit8 v5, v5, 0x28

    aput v5, v3, v8

    .line 96
    aget v5, v3, v7

    rem-int/lit8 v5, v5, 0x28

    aput v5, v3, v7

    goto :goto_2
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 6
    .parameter "out"

    .prologue
    .line 106
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    .line 108
    .local v3, oid:[I
    const/4 v2, 0x0

    .line 111
    .local v2, length:I
    const/4 v4, 0x0

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0x28

    const/4 v5, 0x1

    aget v5, v3, v5

    add-int v0, v4, v5

    .line 112
    .local v0, elem:I
    if-nez v0, :cond_2

    .line 113
    const/4 v2, 0x1

    .line 121
    :cond_0
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 122
    aget v4, v3, v1

    if-nez v4, :cond_3

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 121
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1           #i:I
    :cond_2
    :goto_1
    if-lez v0, :cond_0

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 115
    shr-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 126
    .restart local v1       #i:I
    :cond_3
    aget v0, v3, v1

    :goto_2
    if-lez v0, :cond_1

    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 126
    shr-int/lit8 v0, v0, 0x7

    goto :goto_2

    .line 130
    :cond_4
    iput v2, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 131
    return-void
.end method
