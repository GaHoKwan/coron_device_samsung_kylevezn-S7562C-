.class public interface abstract Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;
.super Ljava/lang/Object;
.source "OIWObjectIdentifiers.java"


# static fields
.field public static final desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final desCFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final desECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final desEDE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final desOFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final elGamalAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final md4WithRSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final md4WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final md5WithRSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sha1WithRSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md4WithRSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md5WithRSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 11
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md4WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.6"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.8"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desOFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.9"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.17"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desEDE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.26"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.27"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.3.2.29"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.14.7.2.1.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
