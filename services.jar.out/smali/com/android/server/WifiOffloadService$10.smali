.class Lcom/android/server/WifiOffloadService$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1378
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "onReceive -- WiFiDataReceiver"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1382
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1387
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1388
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v5, "bssid"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1389
    .local v2, bssid:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WiFi BSSID :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1390
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1392
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #setter for: Lcom/android/server/WifiOffloadService;->prevWiFiState:Z
    invoke-static {v5, v9}, Lcom/android/server/WifiOffloadService;->access$1202(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1393
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iput-boolean v9, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1394
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "onReceive -- NetworkInfo.State.CONNECTED"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1395
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v1

    .line 1397
    .local v1, baseStation:I
    if-lez v1, :cond_2

    .line 1398
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "Setting intel mode scan interval to FALSE"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1399
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-boolean v5, v5, Lcom/android/server/WifiOffloadService;->currentIntelScanMode:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5, v8}, Lcom/android/server/WifiOffloadService;->intelScanMode(Z)Z

    .line 1401
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 1403
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v5, v5, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v6, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v6, v6, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v6, v2, v1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->isWiFiDataStored(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1405
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->collectWiFiDetails()V

    .line 1406
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->storeWiFiDetails()V

    .line 1409
    :cond_3
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$1100(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1410
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "Timer is running, so reset it when connection is Succuss!!"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1411
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #setter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v5, v8}, Lcom/android/server/WifiOffloadService;->access$202(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1412
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$1100(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    :cond_4
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->stopDataActivityTimer()V

    goto/16 :goto_0

    .line 1416
    .end local v1           #baseStation:I
    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1417
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-boolean v5, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$200(Lcom/android/server/WifiOffloadService;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1418
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "WIFI DISCONNECTED : sendEmptyMessageDelayed after 5 min to check Wifi status"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1419
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->access$1100(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v5

    const-wide/32 v6, 0x493e0

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1421
    :cond_6
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iput-boolean v8, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1422
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "onReceive -- NetworkInfo.State.DISCONNECTED"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1423
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->startDataActivityTimer()V

    goto/16 :goto_0

    .line 1425
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_7
    const-string v5, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1426
    const-string v5, "connected"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1427
    .local v4, status:Z
    if-nez v4, :cond_0

    .line 1428
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iput-boolean v8, v5, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1429
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "onReceive -- SUPPLICANT_CONNECTION_CHANGE_ACTION"

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1430
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v5}, Lcom/android/server/WifiOffloadService;->startDataActivityTimer()V

    goto/16 :goto_0

    .line 1432
    .end local v4           #status:Z
    :cond_8
    const-string v5, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1433
    iget-object v6, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v5, "newState"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    #setter for: Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v6, v5}, Lcom/android/server/WifiOffloadService;->access$1302(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    .line 1434
    iget-object v5, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new supplicant state is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v7}, Lcom/android/server/WifiOffloadService;->access$1300(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/SupplicantState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
