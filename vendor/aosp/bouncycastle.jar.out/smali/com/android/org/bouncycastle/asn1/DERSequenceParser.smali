.class public Lcom/android/org/bouncycastle/asn1/DERSequenceParser;
.super Ljava/lang/Object;
.source "DERSequenceParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;


# instance fields
.field private _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0
    .parameter "parser"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 13
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 3

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method
