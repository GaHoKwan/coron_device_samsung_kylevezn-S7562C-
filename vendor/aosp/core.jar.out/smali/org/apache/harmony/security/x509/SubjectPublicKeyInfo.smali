.class public final Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
.super Ljava/lang/Object;
.source "SubjectPublicKeyInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private encoding:[B

.field private publicKey:Ljava/security/PublicKey;

.field private subjectPublicKey:[B

.field private unusedBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .parameter "algID"
    .parameter "subjectPublicKey"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI)V
    .locals 2
    .parameter "algID"
    .parameter "subjectPublicKey"
    .parameter "unused"

    .prologue
    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V

    .line 70
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V
    .locals 0
    .parameter "algID"
    .parameter "subjectPublicKey"
    .parameter "unused"
    .parameter "encoding"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 76
    iput-object p2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    .line 77
    iput p3, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I

    .line 78
    iput-object p4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[BLorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I

    return v0
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 5

    .prologue
    .line 110
    iget-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    if-nez v2, :cond_1

    .line 111
    iget-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, alg_oid:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, alg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 117
    move-object v0, v1

    .line 119
    :cond_0
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0           #alg:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    if-nez v2, :cond_1

    .line 125
    new-instance v2, Lorg/apache/harmony/security/x509/X509PublicKey;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/harmony/security/x509/X509PublicKey;-><init>(Ljava/lang/String;[B[B)V

    iput-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    .line 129
    .end local v1           #alg_oid:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    return-object v2

    .line 122
    .restart local v1       #alg_oid:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 121
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getSubjectPublicKey()[B
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    return-object v0
.end method
