.class public abstract Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;
.super Ljava/lang/Object;
.source "X509NameEntryConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canBePrintable(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 101
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected convertHexEncoded(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 8
    .parameter "str"
    .parameter "off"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x61

    .line 64
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p2

    div-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 66
    .local v1, data:[B
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    array-length v5, v1

    if-eq v2, v5, :cond_2

    .line 68
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, p2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 69
    .local v3, left:C
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, p2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 71
    .local v4, right:C
    if-ge v3, v7, :cond_0

    .line 73
    add-int/lit8 v5, v3, -0x30

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 79
    :goto_1
    if-ge v4, v7, :cond_1

    .line 81
    aget-byte v5, v1, v2

    add-int/lit8 v6, v4, -0x30

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 66
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    add-int/lit8 v5, v3, -0x61

    add-int/lit8 v5, v5, 0xa

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    goto :goto_1

    .line 85
    :cond_1
    aget-byte v5, v1, v2

    add-int/lit8 v6, v4, -0x61

    add-int/lit8 v6, v6, 0xa

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    goto :goto_2

    .line 89
    .end local v3           #left:C
    .end local v4           #right:C
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 91
    .local v0, aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    return-object v5
.end method

.method public abstract getConvertedValue(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;
.end method
