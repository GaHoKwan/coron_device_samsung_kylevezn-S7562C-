.class public abstract Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;,
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$DSA;,
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;,
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE;,
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$PBKDF2;,
        Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 1069
    return-void
.end method


# virtual methods
.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .parameter "paramSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "argument to getParameterSpec must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKAlgorithmParameters;->localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method protected isASN1FormatString(Ljava/lang/String;)Z
    .locals 1
    .parameter "format"

    .prologue
    .line 57
    if-eqz p1, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation
.end method
