.class public Landroid/sec/enterprise/DeviceInventory;
.super Ljava/lang/Object;
.source "DeviceInventory.java"


# static fields
.field public static final DEVICE_INFO_DROPPED_CALL:Ljava/lang/String; = "dropped"

.field public static final DEVICE_INFO_MISSED_CALL:Ljava/lang/String; = "missed"

.field public static final DEVICE_INFO_SUCCESS_CALL:Ljava/lang/String; = "success"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "DeviceInfo"

    sput-object v0, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .locals 3
    .parameter "callType"

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->addCallsCount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addCallsCount returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCallingCaptureEnabled()Z
    .locals 3

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isCallingCaptureEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isCallingCaptureEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSMSCaptureEnabled()Z
    .locals 3

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isSMSCaptureEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 100
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isSMSCaptureEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "address"
    .parameter "timeStamp"
    .parameter "duration"
    .parameter "status"
    .parameter "isIncoming"

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 83
    :catch_0
    move-exception v6

    .line 84
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "PXY-storeCalling returning default value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "address"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isInbound"

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/sec/enterprise/IEDMProxy;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-storeSMS returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
