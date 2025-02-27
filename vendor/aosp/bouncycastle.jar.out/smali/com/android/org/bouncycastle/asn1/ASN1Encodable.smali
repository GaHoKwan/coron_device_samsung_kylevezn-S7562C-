.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.super Ljava/lang/Object;
.source "ASN1Encodable.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DEREncodable;


# static fields
.field public static final BER:Ljava/lang/String; = "BER"

.field public static final DER:Ljava/lang/String; = "DER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 81
    if-ne p0, p1, :cond_0

    .line 83
    const/4 v1, 0x1

    .line 93
    :goto_0
    return v1

    .line 86
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    if-nez v1, :cond_1

    .line 88
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 91
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    .line 93
    .local v0, other:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDEREncoded()[B
    .locals 2

    .prologue
    .line 65
    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    .local v0, aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v2, "DER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    .local v1, dOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 53
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
.end method
