.class public Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;
.super Ljava/security/KeyStoreSpi;
.source "JDKKeyStore.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;,
        Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field private static final KEY_CIPHER:Ljava/lang/String; = "PBEWithSHAAnd3-KeyTripleDES-CBC"

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field private static final KEY_SALT_SIZE:I = 0x14

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final STORE_CIPHER:Ljava/lang/String; = "PBEWithSHAAndTwofish-CBC"

.field private static final STORE_SALT_SIZE:I = 0x14

.field private static final STORE_VERSION:I = 0x1


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected table:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 88
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    .line 90
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method private decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;
    .locals 7
    .parameter "dIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, type:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-array v1, v5, [B

    .line 360
    .local v1, cEnc:[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 364
    :try_start_0
    const-string v5, "BC"

    invoke-static {v4, v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 365
    .local v2, cFact:Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 367
    .local v0, bIn:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 369
    .end local v0           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v2           #cFact:Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v3

    .line 371
    .local v3, ex:Ljava/security/NoSuchProviderException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 373
    .end local v3           #ex:Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v3

    .line 375
    .local v3, ex:Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    .locals 9
    .parameter "dIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p1}, Ljava/io/FilterInputStream;->read()I

    move-result v4

    .line 410
    .local v4, keyType:I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, format:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, algorithm:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    new-array v2, v6, [B

    .line 415
    .local v2, enc:[B
    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 417
    const-string v6, "PKCS#8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "PKCS8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 419
    :cond_0
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v5, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 436
    .local v5, spec:Ljava/security/spec/KeySpec;
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 445
    :try_start_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not recognised!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :catch_0
    move-exception v1

    .line 451
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception creating key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #spec:Ljava/security/spec/KeySpec;
    :cond_1
    const-string v6, "X.509"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "X509"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 423
    :cond_2
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .restart local v5       #spec:Ljava/security/spec/KeySpec;
    goto :goto_0

    .line 425
    .end local v5           #spec:Ljava/security/spec/KeySpec;
    :cond_3
    const-string v6, "RAW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 427
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v6, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 443
    :goto_1
    return-object v6

    .line 431
    :cond_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not recognised!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 439
    .restart local v5       #spec:Ljava/security/spec/KeySpec;
    :pswitch_0
    :try_start_1
    const-string v6, "BC"

    invoke-static {v0, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    goto :goto_1

    .line 441
    :pswitch_1
    const-string v6, "BC"

    invoke-static {v0, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    goto :goto_1

    .line 443
    :pswitch_2
    const-string v6, "BC"

    invoke-static {v0, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V
    .locals 4
    .parameter "cert"
    .parameter "dOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 343
    .local v0, cEnc:[B
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 344
    array-length v2, v0

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 345
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 347
    .end local v0           #cEnc:[B
    :catch_0
    move-exception v1

    .line 349
    .local v1, ex:Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "key"
    .parameter "dOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 386
    .local v0, enc:[B
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    .line 388
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 399
    :goto_0
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 400
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 401
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 402
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 403
    return-void

    .line 390
    :cond_0
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_1

    .line 392
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    .line 396
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .parameter "alias"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 2
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 504
    .local v0, entry:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .parameter "alias"

    .prologue
    .line 521
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 523
    .local v1, entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v1, :cond_1

    .line 525
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 527
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 540
    :goto_0
    return-object v2

    .line 531
    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 533
    .local v0, chain:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    .line 535
    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_0

    .line 540
    .end local v0           #chain:[Ljava/security/cert/Certificate;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .parameter "cert"

    .prologue
    .line 546
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 547
    .local v2, e:Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 549
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 551
    .local v3, entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/Certificate;

    if-eqz v4, :cond_1

    .line 553
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 555
    .local v0, c:Ljava/security/cert/Certificate;
    invoke-virtual {v0, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v4

    .line 571
    .end local v0           #c:Ljava/security/cert/Certificate;
    .end local v3           #entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    :goto_0
    return-object v4

    .line 562
    .restart local v3       #entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    :cond_1
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 564
    .local v1, chain:[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 571
    .end local v1           #chain:[Ljava/security/cert/Certificate;
    .end local v3           #entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2
    .parameter "alias"

    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 579
    .local v0, entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 584
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .parameter "alias"

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 591
    .local v0, entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 596
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3
    .parameter "alias"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 606
    .local v0, entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 608
    :cond_0
    const/4 v1, 0x0

    .line 611
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject([C)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Key;

    goto :goto_0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .parameter "alias"

    .prologue
    const/4 v1, 0x1

    .line 617
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 619
    .local v0, entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 624
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .parameter "alias"

    .prologue
    const/4 v1, 0x1

    .line 630
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 632
    .local v0, entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 637
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 13
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 798
    iget-object v11, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    .line 800
    if-nez p1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 806
    .local v0, dIn:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 808
    .local v10, version:I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 810
    if-eqz v10, :cond_2

    .line 812
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Wrong version of key store."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 816
    :cond_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    new-array v9, v11, [B

    .line 818
    .local v9, salt:[B
    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->readFully([B)V

    .line 820
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 826
    .local v2, iterationCount:I
    new-instance v1, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v11, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v11}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    invoke-direct {v1, v11}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 828
    .local v1, hMac:Lcom/android/org/bouncycastle/crypto/macs/HMac;
    if-eqz p2, :cond_3

    array-length v11, p2

    if-eqz v11, :cond_3

    .line 830
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v7

    .line 833
    .local v7, passKey:[B
    new-instance v8, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v11, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v11}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    invoke-direct {v8, v11}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 835
    .local v8, pbeGen:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {v8, v7, v9, v2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 836
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 837
    .local v5, macParams:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-static {v7, v12}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 839
    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 840
    new-instance v3, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;

    invoke-direct {v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;-><init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Mac;)V

    .line 842
    .local v3, mIn:Lcom/android/org/bouncycastle/crypto/io/MacInputStream;
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->loadStore(Ljava/io/InputStream;)V

    .line 845
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    new-array v4, v11, [B

    .line 846
    .local v4, mac:[B
    invoke-virtual {v1, v4, v12}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 850
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    new-array v6, v11, [B

    .line 851
    .local v6, oldMac:[B
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 853
    invoke-static {v4, v6}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v11

    if-nez v11, :cond_0

    .line 855
    iget-object v11, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    .line 856
    new-instance v11, Ljava/io/IOException;

    const-string v12, "KeyStore integrity check failed."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 861
    .end local v3           #mIn:Lcom/android/org/bouncycastle/crypto/io/MacInputStream;
    .end local v4           #mac:[B
    .end local v5           #macParams:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v6           #oldMac:[B
    .end local v7           #passKey:[B
    .end local v8           #pbeGen:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->loadStore(Ljava/io/InputStream;)V

    .line 865
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    new-array v6, v11, [B

    .line 866
    .restart local v6       #oldMac:[B
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    goto/16 :goto_0
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 4
    .parameter "alias"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 647
    .local v0, entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 649
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key store already has a key entry with alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 8
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 671
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 673
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    invoke-virtual {v7, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    return-void

    .line 680
    :catch_0
    move-exception v6

    .line 682
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Ljava/security/KeyStoreException;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .parameter "alias"
    .parameter "key"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    return-void
.end method

.method public engineSize()I
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 11
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 874
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 875
    .local v0, dOut:Ljava/io/DataOutputStream;
    const/16 v9, 0x14

    new-array v8, v9, [B

    .line 876
    .local v8, salt:[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    and-int/lit16 v9, v9, 0x3ff

    add-int/lit16 v3, v9, 0x400

    .line 878
    .local v3, iterationCount:I
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 880
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 881
    array-length v9, v8

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 882
    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 883
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 886
    new-instance v1, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v9, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    invoke-direct {v1, v9}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 887
    .local v1, hMac:Lcom/android/org/bouncycastle/crypto/macs/HMac;
    new-instance v4, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;

    invoke-direct {v4, v0, v1}, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;-><init>(Ljava/io/OutputStream;Lcom/android/org/bouncycastle/crypto/Mac;)V

    .line 888
    .local v4, mOut:Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;
    new-instance v7, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v9, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    invoke-direct {v7, v9}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 890
    .local v7, pbeGen:Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v6

    .line 892
    .local v6, passKey:[B
    invoke-virtual {v7, v6, v8, v3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 894
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 896
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v6

    if-eq v2, v9, :cond_0

    .line 898
    aput-byte v10, v6, v2

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->saveStore(Ljava/io/OutputStream;)V

    .line 903
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v9

    new-array v5, v9, [B

    .line 905
    .local v5, mac:[B
    invoke-virtual {v1, v5, v10}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 907
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 909
    invoke-virtual {v0}, Ljava/io/FilterOutputStream;->close()V

    .line 910
    return-void
.end method

.method protected loadStore(Ljava/io/InputStream;)V
    .locals 25
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v23, Ljava/io/DataInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 696
    .local v23, dIn:Ljava/io/DataInputStream;
    invoke-virtual/range {v23 .. v23}, Ljava/io/FilterInputStream;->read()I

    move-result v19

    .line 698
    .local v19, type:I
    :goto_0
    if-lez v19, :cond_1

    .line 700
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 701
    .local v4, alias:Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 702
    .local v5, date:Ljava/util/Date;
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 703
    .local v22, chainLength:I
    const/4 v14, 0x0

    .line 705
    .local v14, chain:[Ljava/security/cert/Certificate;
    if-eqz v22, :cond_0

    .line 707
    move/from16 v0, v22

    new-array v14, v0, [Ljava/security/cert/Certificate;

    .line 709
    const/16 v24, 0x0

    .local v24, i:I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 711
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    aput-object v2, v14, v24

    .line 709
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 715
    .end local v24           #i:I
    :cond_0
    packed-switch v19, :pswitch_data_0

    .line 734
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown object type in store."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 718
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    .line 720
    .local v7, cert:Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    const/4 v6, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V

    invoke-virtual {v8, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .end local v7           #cert:Ljava/security/cert/Certificate;
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/FilterInputStream;->read()I

    move-result v19

    .line 738
    goto :goto_0

    .line 723
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v13

    .line 724
    .local v13, key:Ljava/security/Key;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v8 .. v14}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v2, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 728
    .end local v13           #key:Ljava/security/Key;
    :pswitch_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 730
    .local v20, b:[B
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v15, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    move-object/from16 v16, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v14

    invoke-direct/range {v15 .. v21}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v2, v4, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 739
    .end local v4           #alias:Ljava/lang/String;
    .end local v5           #date:Ljava/util/Date;
    .end local v14           #chain:[Ljava/security/cert/Certificate;
    .end local v20           #b:[B
    .end local v22           #chainLength:I
    :cond_1
    return-void

    .line 715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;
    .locals 8
    .parameter "algorithm"
    .parameter "mode"
    .parameter "password"
    .parameter "salt"
    .parameter "iterationCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 466
    .local v4, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    const-string v5, "BC"

    invoke-static {p1, v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 467
    .local v3, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v1, p4, p5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 469
    .local v1, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    const-string v5, "BC"

    invoke-static {p1, v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 471
    .local v0, cipher:Ljavax/crypto/Cipher;
    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v0, p2, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    return-object v0

    .line 475
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v4           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :catch_0
    move-exception v2

    .line 477
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error initialising store of key store: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected saveStore(Ljava/io/OutputStream;)V
    .locals 9
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 745
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 746
    .local v3, e:Ljava/util/Enumeration;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 748
    .local v2, dOut:Ljava/io/DataOutputStream;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 750
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 752
    .local v4, entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 753
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 756
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 757
    .local v1, chain:[Ljava/security/cert/Certificate;
    if-nez v1, :cond_1

    .line 759
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 770
    :cond_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 786
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unknown object type in store."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 763
    :cond_1
    array-length v6, v1

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 764
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v6, v1

    if-eq v5, v6, :cond_0

    .line 766
    aget-object v6, v1, v5

    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    .line 764
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 773
    .end local v5           #i:I
    :pswitch_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 776
    :pswitch_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Key;

    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 780
    :pswitch_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 782
    .local v0, b:[B
    array-length v6, v0

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 783
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 790
    .end local v0           #b:[B
    .end local v1           #chain:[Ljava/security/cert/Certificate;
    .end local v4           #entry:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    :cond_2
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 791
    return-void

    .line 770
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .parameter "rand"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    .line 485
    return-void
.end method
