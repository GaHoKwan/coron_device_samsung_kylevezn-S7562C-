.class public final enum Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;
.super Ljava/lang/Enum;
.source "CircleMissedEventWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnlockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

.field public static final enum MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

.field public static final enum MissedCallAndMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

.field public static final enum MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

.field public static final enum MissedNone:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    const-string v1, "MissedNone"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    const-string v1, "MissedCall"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    const-string v1, "MissedMsg"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    const-string v1, "MissedCallAndMsg"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedCallAndMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedCallAndMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->$VALUES:[Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->$VALUES:[Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    return-object v0
.end method
