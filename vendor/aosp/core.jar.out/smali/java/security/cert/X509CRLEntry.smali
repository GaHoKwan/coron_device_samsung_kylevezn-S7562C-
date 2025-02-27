.class public abstract Ljava/security/cert/X509CRLEntry;
.super Ljava/lang/Object;
.source "X509CRLEntry.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v2, 0x0

    .line 46
    if-ne p1, p0, :cond_1

    .line 47
    const/4 v2, 0x1

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 49
    :cond_1
    instance-of v3, p1, Ljava/security/cert/X509CRLEntry;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 52
    check-cast v1, Ljava/security/cert/X509CRLEntry;

    .line 54
    .local v1, obj:Ljava/security/cert/X509CRLEntry;
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/security/cert/CRLException;
    goto :goto_0
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getRevocationDate()Ljava/util/Date;
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract hasExtensions()Z
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, res:I
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v0

    .line 69
    .local v0, array:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 70
    aget-byte v3, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0           #array:[B
    .end local v1           #i:I
    :catch_0
    move-exception v3

    .line 74
    :cond_0
    return v2
.end method

.method public abstract toString()Ljava/lang/String;
.end method
