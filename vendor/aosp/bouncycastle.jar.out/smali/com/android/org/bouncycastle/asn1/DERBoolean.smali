.class public Lcom/android/org/bouncycastle/asn1/DERBoolean;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERBoolean.java"


# static fields
.field public static final FALSE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

.field public static final TRUE:Lcom/android/org/bouncycastle/asn1/DERBoolean;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 96
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput-byte v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    .line 97
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBoolean;
    .locals 2
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 66
    .local v0, o:Lcom/android/org/bouncycastle/asn1/DERObject;
    if-nez p1, :cond_0

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBoolean;

    move-result-object v1

    .line 73
    .end local v0           #o:Lcom/android/org/bouncycastle/asn1/DERObject;
    :goto_0
    return-object v1

    .restart local v0       #o:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_1
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local v0           #o:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERBoolean;->getInstance([B)Lcom/android/org/bouncycastle/asn1/DERBoolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBoolean;
    .locals 3
    .parameter "obj"

    .prologue
    .line 23
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .end local p0
    return-object p0

    .line 28
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Z)Lcom/android/org/bouncycastle/asn1/DERBoolean;
    .locals 1
    .parameter "value"

    .prologue
    .line 37
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    goto :goto_0
.end method

.method public static getInstance([B)Lcom/android/org/bouncycastle/asn1/DERBoolean;
    .locals 1
    .parameter "octets"

    .prologue
    .line 47
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/android/org/bouncycastle/asn1/DERBoolean;

    goto :goto_0
.end method


# virtual methods
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    if-nez v1, :cond_1

    .line 123
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-byte v1, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERBoolean;

    .end local p1
    iget-byte v2, p1, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 108
    new-array v0, v3, [B

    .line 110
    .local v0, bytes:[B
    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    aput-byte v2, v0, v1

    .line 112
    invoke-virtual {p1, v3, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 113
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    iget-byte v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    return v0
.end method

.method public isTrue()Z
    .locals 1

    .prologue
    .line 101
    iget-byte v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-byte v0, p0, Lcom/android/org/bouncycastle/asn1/DERBoolean;->value:B

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method
