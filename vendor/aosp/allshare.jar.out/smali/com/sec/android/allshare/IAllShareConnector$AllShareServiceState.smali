.class public final enum Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;
.super Ljava/lang/Enum;
.source "IAllShareConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/IAllShareConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AllShareServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

.field public static final enum ALLSHARE_SERVICE_CONNECTED:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

.field public static final enum ALLSHARE_SERVICE_DISCONNECTED:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    const-string v1, "ALLSHARE_SERVICE_CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_CONNECTED:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    new-instance v0, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    const-string v1, "ALLSHARE_SERVICE_DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_DISCONNECTED:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    sget-object v1, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_CONNECTED:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;->ALLSHARE_SERVICE_DISCONNECTED:Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;->$VALUES:[Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;->$VALUES:[Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/IAllShareConnector$AllShareServiceState;

    return-object v0
.end method
