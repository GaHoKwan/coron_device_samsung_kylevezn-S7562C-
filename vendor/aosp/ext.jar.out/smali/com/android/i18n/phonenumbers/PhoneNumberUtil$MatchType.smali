.class public final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 414
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 415
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "NO_MATCH"

    invoke-direct {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 416
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "SHORT_NSN_MATCH"

    invoke-direct {v0, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 417
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "NSN_MATCH"

    invoke-direct {v0, v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 418
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "EXACT_MATCH"

    invoke-direct {v0, v1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 413
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 1
    .parameter "name"

    .prologue
    .line 413
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v0
.end method

.method public static values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v0
.end method
