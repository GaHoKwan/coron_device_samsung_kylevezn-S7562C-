.class public abstract Lorg/apache/harmony/security/asn1/ASN1Constructed;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Constructed.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "tagNumber"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    .line 35
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .parameter "tagClass"
    .parameter "tagNumber"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    .line 39
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1
    .parameter "identifier"

    .prologue
    .line 49
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 53
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 55
    return-void
.end method
