.class public interface abstract Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;
.super Ljava/lang/Object;
.source "SECObjectIdentifiers.java"


# static fields
.field public static final ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp112r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp112r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp128r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp128r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp160k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp160r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp160r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp192k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp224k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp256k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect113r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect113r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect131r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect131r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect163k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect163r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect163r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect193r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect193r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect233k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect233r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect239k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect283k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect283r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect409k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect409r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect571k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sect571r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.132.0"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "16"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "17"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "23"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "24"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "26"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "27"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "28"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "29"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "33"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "34"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "35"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "36"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 43
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "37"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "38"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->ellipticCurve:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "39"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime256v1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
