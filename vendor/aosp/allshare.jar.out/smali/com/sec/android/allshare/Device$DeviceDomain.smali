.class public final enum Lcom/sec/android/allshare/Device$DeviceDomain;
.super Ljava/lang/Enum;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/allshare/Device$DeviceDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/allshare/Device$DeviceDomain;

.field public static final enum LOCAL_NETWORK:Lcom/sec/android/allshare/Device$DeviceDomain;

.field public static final enum MY_DEVICE:Lcom/sec/android/allshare/Device$DeviceDomain;

.field public static final enum REMOTE_NETWORK:Lcom/sec/android/allshare/Device$DeviceDomain;

.field public static final enum UNKNOWN:Lcom/sec/android/allshare/Device$DeviceDomain;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceDomain;

    const-string v1, "MY_DEVICE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/sec/android/allshare/Device$DeviceDomain;

    .line 46
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceDomain;

    const-string v1, "LOCAL_NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/sec/android/allshare/Device$DeviceDomain;

    .line 50
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceDomain;

    const-string v1, "REMOTE_NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->REMOTE_NETWORK:Lcom/sec/android/allshare/Device$DeviceDomain;

    .line 54
    new-instance v0, Lcom/sec/android/allshare/Device$DeviceDomain;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceDomain;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/allshare/Device$DeviceDomain;

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/sec/android/allshare/Device$DeviceDomain;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/sec/android/allshare/Device$DeviceDomain;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceDomain;->REMOTE_NETWORK:Lcom/sec/android/allshare/Device$DeviceDomain;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceDomain;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->$VALUES:[Lcom/sec/android/allshare/Device$DeviceDomain;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/sec/android/allshare/Device$DeviceDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/Device$DeviceDomain;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->$VALUES:[Lcom/sec/android/allshare/Device$DeviceDomain;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/allshare/Device$DeviceDomain;

    return-object v0
.end method
