.class public final Lorg/apache/harmony/security/asn1/ASN1UTCTime;
.super Lorg/apache/harmony/security/asn1/ASN1Time;
.source "ASN1UTCTime.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1UTCTime; = null

.field public static final UTC_HM:I = 0xb

.field public static final UTC_HMS:I = 0xd

.field public static final UTC_LOCAL_HM:I = 0xf

.field public static final UTC_LOCAL_HMS:I = 0x11

.field private static final UTC_PATTERN:Ljava/lang/String; = "yyMMddHHmmss\'Z\'"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1UTCTime;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1UTCTime;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1UTCTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1UTCTime;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Time;-><init>(I)V

    .line 62
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1UTCTime;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1UTCTime;->ASN1:Lorg/apache/harmony/security/asn1/ASN1UTCTime;

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
    .line 77
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readUTCTime()V

    .line 79
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Time;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 86
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeUTCTime()V

    .line 87
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 99
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 100
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    array-length v1, v1

    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 101
    return-void
.end method
