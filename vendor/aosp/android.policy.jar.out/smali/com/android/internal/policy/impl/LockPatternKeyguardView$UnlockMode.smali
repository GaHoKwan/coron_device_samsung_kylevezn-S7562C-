.class final enum Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
.super Ljava/lang/Enum;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UnlockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Pcw:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Recovery:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum SimPermDisabled:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum SimPersoUnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Pattern"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 247
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "SimPersoUnlockScreen"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPersoUnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 252
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "SimPin"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 257
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "SimPuk"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 262
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "SimPermDisabled"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPermDisabled:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 267
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Account"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 272
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Password"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 277
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Recovery"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Recovery:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 282
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Pcw"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pcw:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 287
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Signature"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 292
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Unknown"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 237
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPersoUnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPermDisabled:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Recovery:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pcw:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

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
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 237
    const-class v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    return-object v0
.end method
