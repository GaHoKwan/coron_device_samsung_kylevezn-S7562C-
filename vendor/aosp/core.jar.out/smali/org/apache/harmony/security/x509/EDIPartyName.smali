.class public final Lorg/apache/harmony/security/x509/EDIPartyName;
.super Ljava/lang/Object;
.source "EDIPartyName.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final nameAssigner:Ljava/lang/String;

.field private final partyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    new-instance v0, Lorg/apache/harmony/security/x509/EDIPartyName$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/EDIPartyName$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .parameter "nameAssigner"
    .parameter "partyName"
    .parameter "encoding"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->nameAssigner:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->partyName:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->encoding:[B

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/harmony/security/x509/EDIPartyName$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/EDIPartyName;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/EDIPartyName;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->nameAssigner:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/EDIPartyName;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->partyName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->encoding:[B

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->encoding:[B

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->encoding:[B

    return-object v0
.end method
