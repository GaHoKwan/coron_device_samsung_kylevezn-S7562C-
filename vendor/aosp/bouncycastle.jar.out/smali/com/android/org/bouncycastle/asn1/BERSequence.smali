.class public Lcom/android/org/bouncycastle/asn1/BERSequence;
.super Lcom/android/org/bouncycastle/asn1/DERSequence;
.source "BERSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 23
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    if-eqz v1, :cond_2

    .line 42
    :cond_0
    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 43
    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 46
    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/FilterOutputStream;->write(I)V

    .line 52
    invoke-virtual {p1, v2}, Ljava/io/FilterOutputStream;->write(I)V

    .line 58
    .end local v0           #e:Ljava/util/Enumeration;
    :goto_1
    return-void

    .line 56
    :cond_2
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_1
.end method
