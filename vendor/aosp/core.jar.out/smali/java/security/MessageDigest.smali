.class public abstract Ljava/security/MessageDigest;
.super Ljava/security/MessageDigestSpi;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/MessageDigest$1;,
        Ljava/security/MessageDigest$MessageDigestImpl;
    }
.end annotation


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "MessageDigest"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/MessageDigest;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "algorithm"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 70
    iput-object p1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic access$102(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 7
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 88
    if-nez p0, :cond_0

    .line 89
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 91
    :cond_0
    sget-object v4, Ljava/security/MessageDigest;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v4, p0, v6}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v2

    .line 92
    .local v2, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v3, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    .line 93
    .local v3, spi:Ljava/lang/Object;
    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    .line 94
    .local v0, provider:Ljava/security/Provider;
    instance-of v4, v3, Ljava/security/MessageDigest;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 95
    check-cast v1, Ljava/security/MessageDigest;

    .line 96
    .local v1, result:Ljava/security/MessageDigest;
    iput-object p0, v1, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 97
    iput-object v0, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 100
    .end local v1           #result:Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/security/MessageDigest$MessageDigestImpl;

    iget-object v4, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v4, Ljava/security/MessageDigestSpi;

    iget-object v5, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v1, v4, v5, p0, v6}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/MessageDigest$1;)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 126
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 127
    .local v0, p:Ljava/security/Provider;
    if-nez v0, :cond_2

    .line 128
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_2
    invoke-static {p0, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .locals 4
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 154
    :cond_0
    if-nez p0, :cond_1

    .line 155
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 157
    :cond_1
    sget-object v2, Ljava/security/MessageDigest;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, spi:Ljava/lang/Object;
    instance-of v2, v1, Ljava/security/MessageDigest;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 159
    check-cast v0, Ljava/security/MessageDigest;

    .line 160
    .local v0, result:Ljava/security/MessageDigest;
    iput-object p0, v0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 161
    iput-object p1, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 164
    .end local v0           #result:Ljava/security/MessageDigest;
    .end local v1           #spi:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v1       #spi:Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/security/MessageDigest$MessageDigestImpl;

    check-cast v1, Ljava/security/MessageDigestSpi;

    .end local v1           #spi:Ljava/lang/Object;
    invoke-direct {v0, v1, p1, p0, v3}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/MessageDigest$1;)V

    goto :goto_0
.end method

.method public static isEqual([B[B)Z
    .locals 4
    .parameter "digesta"
    .parameter "digestb"

    .prologue
    const/4 v1, 0x0

    .line 302
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v1

    .line 305
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 306
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 356
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    .line 357
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public digest([BII)I
    .locals 4
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 255
    if-eqz p1, :cond_0

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 262
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineDigest([BII)I

    move-result v0

    return v0
.end method

.method public digest()[B
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public digest([B)[B
    .locals 1
    .parameter "input"

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 277
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getDigestLength()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    move-result v1

    .line 340
    .local v1, l:I
    if-eqz v1, :cond_0

    .line 350
    .end local v1           #l:I
    :goto_0
    return v1

    .line 343
    .restart local v1       #l:I
    :cond_0
    instance-of v4, p0, Ljava/lang/Cloneable;

    if-nez v4, :cond_1

    move v1, v3

    .line 344
    goto :goto_0

    .line 347
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    .line 348
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    array-length v1, v4
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    .end local v2           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/CloneNotSupportedException;
    move v1, v3

    .line 350
    goto :goto_0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE DIGEST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(B)V

    .line 184
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 370
    return-void
.end method

.method public update([B)V
    .locals 2
    .parameter "input"

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 223
    return-void
.end method

.method public update([BII)V
    .locals 4
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 207
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 208
    return-void
.end method
