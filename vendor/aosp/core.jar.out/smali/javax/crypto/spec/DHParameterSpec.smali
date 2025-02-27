.class public Ljavax/crypto/spec/DHParameterSpec;
.super Ljava/lang/Object;
.source "DHParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final l:I

.field private final p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .parameter "p"
    .parameter "g"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    .line 43
    iput-object p2, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0
    .parameter "p"
    .parameter "g"
    .parameter "l"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    .line 61
    iput-object p2, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    .line 62
    iput p3, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    .line 63
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method
