.class public Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;
.super Lorg/apache/harmony/security/PublicKeyImpl;
.source "DSAPublicKeyImpl.java"

# interfaces
.implements Ljava/security/interfaces/DSAPublicKey;


# static fields
.field private static final serialVersionUID:J = -0x1fa305b9a7260520L


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private transient params:Ljava/security/interfaces/DSAParams;

.field private q:Ljava/math/BigInteger;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/DSAPublicKeySpec;)V
    .locals 7
    .parameter "keySpec"

    .prologue
    .line 68
    const-string v3, "DSA"

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/PublicKeyImpl;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->p:Ljava/math/BigInteger;

    .line 73
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->q:Ljava/math/BigInteger;

    .line 74
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->g:Ljava/math/BigInteger;

    .line 76
    new-instance v2, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;

    iget-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->p:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->q:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->g:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;-><init>([B[B[B)V

    .line 79
    .local v2, threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    new-instance v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const-string v3, "DSA"

    invoke-static {v3}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 83
    .local v0, ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->y:Ljava/math/BigInteger;

    .line 85
    new-instance v1, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->y:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    .line 87
    .local v1, spki:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/security/PublicKeyImpl;->setEncoding([B)V

    .line 89
    new-instance v3, Ljava/security/spec/DSAParameterSpec;

    iget-object v4, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->p:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->q:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->g:Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/X509EncodedKeySpec;)V
    .locals 11
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v7, "DSA"

    invoke-direct {p0, v7}, Lorg/apache/harmony/security/PublicKeyImpl;-><init>(Ljava/lang/String;)V

    .line 105
    const/4 v6, 0x0

    .line 107
    .local v6, threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    const/4 v5, 0x0

    .line 109
    .local v5, subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    .line 114
    .local v4, encoding:[B
    :try_start_0
    sget-object v7, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    check-cast v5, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .restart local v5       #subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    :try_start_1
    new-instance v8, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getSubjectPublicKey()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v8, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->y:Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 130
    .local v0, ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    :try_start_2
    sget-object v7, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    check-cast v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    .restart local v6       #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->p:[B

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->p:Ljava/math/BigInteger;

    .line 136
    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->q:[B

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->q:Ljava/math/BigInteger;

    .line 137
    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->g:[B

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->g:Ljava/math/BigInteger;

    .line 138
    new-instance v7, Ljava/security/spec/DSAParameterSpec;

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->p:Ljava/math/BigInteger;

    iget-object v9, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->q:Ljava/math/BigInteger;

    iget-object v10, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->g:Ljava/math/BigInteger;

    invoke-direct {v7, v8, v9, v10}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    .line 140
    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/PublicKeyImpl;->setEncoding([B)V

    .line 145
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, alg:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, algName:Ljava/lang/String;
    if-nez v2, :cond_0

    .end local v1           #alg:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/PublicKeyImpl;->setAlgorithm(Ljava/lang/String;)V

    .line 148
    return-void

    .line 116
    .end local v0           #ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .end local v2           #algName:Ljava/lang/String;
    .end local v5           #subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v3

    .line 117
    .local v3, e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode keySpec encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 123
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    :catch_1
    move-exception v3

    .line 124
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 132
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    .restart local v0       #ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    :catch_2
    move-exception v3

    .line 133
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #alg:Ljava/lang/String;
    .restart local v2       #algName:Ljava/lang/String;
    .restart local v6       #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    :cond_0
    move-object v1, v2

    .line 147
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 168
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->p:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->g:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    .line 169
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->y:Ljava/math/BigInteger;

    return-object v0
.end method
