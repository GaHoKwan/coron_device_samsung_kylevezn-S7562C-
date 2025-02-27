.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1986
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1988
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1992
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1996
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 219
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    return-void
.end method

.method public run()V
    .locals 149

    .prologue
    .line 229
    const-string v3, "SystemServer"

    const-string v9, "!@SystemServer Thread begins..."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v3, "BUILD_DESC"

    const-string v9, "ro.build.description"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 236
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 239
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 244
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 246
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 253
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v120

    .line 257
    .local v120, shutdownAction:Ljava/lang/String;
    if-eqz v120, :cond_0

    invoke-virtual/range {v120 .. v120}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 259
    const/4 v3, 0x0

    move-object/from16 v0, v120

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_1

    const/16 v114, 0x1

    .line 264
    .local v114, reboot:Z
    :goto_0
    invoke-virtual/range {v120 .. v120}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_2

    .line 266
    const/4 v3, 0x1

    invoke-virtual/range {v120 .. v120}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v120

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v113

    .line 275
    .local v113, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v114

    move-object/from16 v1, v113

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 282
    .end local v113           #reason:Ljava/lang/String;
    .end local v114           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 284
    .local v84, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v84

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v83, 0x0

    .line 288
    .local v83, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 290
    .local v16, headless:Z
    const/16 v44, 0x0

    .line 291
    .local v44, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v65, 0x0

    .line 293
    .local v65, contentService:Landroid/content/ContentService;
    const/16 v91, 0x0

    .line 295
    .local v91, lights:Lcom/android/server/LightsService;
    const/16 v112, 0x0

    .line 297
    .local v112, power:Lcom/android/server/PowerManagerService;
    const/16 v53, 0x0

    .line 299
    .local v53, battery:Lcom/android/server/BatteryService;
    const/16 v136, 0x0

    .line 301
    .local v136, vibrator:Lcom/android/server/VibratorService;
    const/16 v46, 0x0

    .line 303
    .local v46, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 305
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 307
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v103, 0x0

    .line 309
    .local v103, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v62, 0x0

    .line 311
    .local v62, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v146, 0x0

    .line 313
    .local v146, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v143, 0x0

    .line 316
    .local v143, wifi:Lcom/android/server/WifiService;
    const/16 v145, 0x0

    .line 319
    .local v145, wifiOffloadService:Lcom/android/server/WifiOffloadService;
    const/16 v119, 0x0

    .line 321
    .local v119, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v141, 0x0

    .line 323
    .local v141, wfd:Lcom/samsung/wfd/WfdService;
    const/16 v111, 0x0

    .line 325
    .local v111, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 327
    .local v4, context:Landroid/content/Context;
    const/16 v148, 0x0

    .line 329
    .local v148, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v54, 0x0

    .line 331
    .local v54, bluetooth:Landroid/server/BluetoothService;
    const/16 v56, 0x0

    .line 332
    .local v56, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v50, 0x0

    .line 333
    .local v50, avrcp:Landroid/server/AvrcpStubService;
    const/16 v76, 0x0

    .line 334
    .local v76, dock:Lcom/android/server/DockObserver;
    const/16 v124, 0x0

    .line 335
    .local v124, thermistor:Lcom/android/server/ThermistorObserver;
    const/16 v134, 0x0

    .line 337
    .local v134, usb:Lcom/android/server/usb/UsbService;
    const/16 v117, 0x0

    .line 339
    .local v117, serial:Lcom/android/server/SerialService;
    const/16 v132, 0x0

    .line 341
    .local v132, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v115, 0x0

    .line 343
    .local v115, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v126, 0x0

    .line 345
    .local v126, throttle:Lcom/android/server/ThrottleService;
    const/16 v105, 0x0

    .line 347
    .local v105, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v73, 0x0

    .line 350
    .local v73, deviceManager:Lcom/android/server/DeviceManager3LMService;
    const/16 v59, 0x0

    .line 352
    .local v59, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v89, 0x0

    .line 353
    .local v89, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v69, 0x0

    .line 357
    .local v69, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    const/16 v71, 0x0

    .line 364
    .local v71, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 369
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5f

    .line 373
    .end local v112           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 384
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static/range {v83 .. v83}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 389
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 392
    const/16 v121, 0x0

    .local v121, simSlotNum:I
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    move/from16 v0, v121

    if-ge v0, v3, :cond_5

    .line 393
    const-string v3, "telephony.registry"

    move/from16 v0, v121

    invoke-static {v3, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v121

    invoke-direct {v9, v4, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 392
    add-int/lit8 v121, v121, 0x1

    goto :goto_3

    .line 259
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v65           #contentService:Landroid/content/ContentService;
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v73           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v76           #dock:Lcom/android/server/DockObserver;
    .end local v83           #factoryTest:I
    .end local v84           #factoryTestStr:Ljava/lang/String;
    .end local v89           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v103           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v105           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v111           #pm:Landroid/content/pm/IPackageManager;
    .end local v115           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v117           #serial:Lcom/android/server/SerialService;
    .end local v119           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v121           #simSlotNum:I
    .end local v124           #thermistor:Lcom/android/server/ThermistorObserver;
    .end local v126           #throttle:Lcom/android/server/ThrottleService;
    .end local v132           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v134           #usb:Lcom/android/server/usb/UsbService;
    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .end local v141           #wfd:Lcom/samsung/wfd/WfdService;
    .end local v143           #wifi:Lcom/android/server/WifiService;
    .end local v145           #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .end local v146           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v148           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_1
    const/16 v114, 0x0

    goto/16 :goto_0

    .line 270
    .restart local v114       #reboot:Z
    :cond_2
    const/16 v113, 0x0

    .restart local v113       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 284
    .end local v113           #reason:Ljava/lang/String;
    .end local v114           #reboot:Z
    .restart local v84       #factoryTestStr:Ljava/lang/String;
    :cond_3
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v83

    goto/16 :goto_2

    .line 397
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v65       #contentService:Landroid/content/ContentService;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v73       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v76       #dock:Lcom/android/server/DockObserver;
    .restart local v83       #factoryTest:I
    .restart local v89       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v103       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v105       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v111       #pm:Landroid/content/pm/IPackageManager;
    .restart local v115       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    .restart local v119       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v124       #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v126       #throttle:Lcom/android/server/ThrottleService;
    .restart local v132       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v134       #usb:Lcom/android/server/usb/UsbService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    .restart local v141       #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v143       #wifi:Lcom/android/server/WifiService;
    .restart local v145       #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .restart local v146       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v148       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_4
    :try_start_2
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 410
    :cond_5
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 417
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 420
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 426
    .local v68, cryptState:Ljava/lang/String;
    const/16 v109, 0x0

    .line 428
    .local v109, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 430
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/16 v109, 0x1

    .line 442
    :cond_6
    :goto_4
    const-string v3, "SystemServer"

    const-string v9, "!@beginofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    if-eqz v83, :cond_1f

    const/4 v3, 0x1

    :goto_5
    move/from16 v0, v109

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v111

    .line 448
    const-string v3, "SystemServer"

    const-string v9, "!@endofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 449
    const/16 v85, 0x0

    .line 453
    .local v85, firstBoot:Z
    :try_start_3
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v85

    .line 460
    :goto_6
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 463
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 470
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v45, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 472
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .local v45, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_6
    const-string v3, "account"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_60

    move-object/from16 v44, v45

    .line 479
    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_7
    :try_start_7
    const-string v3, "UNICOM"

    const-string v9, "KT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 489
    :cond_7
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v3, 0x1

    move/from16 v0, v83

    if-ne v0, v3, :cond_20

    const/4 v3, 0x1

    :goto_8
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v65

    .line 500
    new-instance v72, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 504
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .local v72, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_8
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_8

    .line 506
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_61

    :cond_8
    move-object/from16 v71, v72

    .line 520
    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    :goto_9
    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 525
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v92, Lcom/android/server/LightsService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 530
    .end local v91           #lights:Lcom/android/server/LightsService;
    .local v92, lights:Lcom/android/server/LightsService;
    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v92

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_62

    .line 534
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_b
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 537
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v137, Lcom/android/server/VibratorService;

    move-object/from16 v0, v137

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_63

    .line 541
    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .local v137, vibrator:Lcom/android/server/VibratorService;
    :try_start_c
    const-string v3, "vibrator"

    move-object/from16 v0, v137

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 548
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v92

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 551
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_64

    .line 555
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_d
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 558
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 564
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 565
    const-string v3, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v3, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/ContextAwareService;

    invoke-direct {v9, v4}, Landroid/hardware/contextaware/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 568
    const-string v3, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v3, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v4}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 572
    :cond_9
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v3, 0x1

    move/from16 v0, v83

    if-eq v0, v3, :cond_21

    const/4 v3, 0x1

    move v9, v3

    :goto_a
    if-nez v85, :cond_22

    const/4 v3, 0x1

    :goto_b
    move/from16 v0, v109

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v148

    .line 580
    const-string v3, "window"

    move-object/from16 v0, v148

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 582
    invoke-virtual/range {v148 .. v148}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v89

    .line 584
    const-string v3, "input"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 587
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v148

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 589
    invoke-static {v4}, Lcom/android/server/pm/FakeShutdown;->restoreAirplaneMode(Landroid/content/Context;)V

    .line 592
    new-instance v3, Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/am/MultiWindowManagerService;-><init>(Landroid/content/Context;)V

    .line 601
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 603
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    :goto_c
    move-object/from16 v136, v137

    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .line 656
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v85           #firstBoot:Z
    .end local v92           #lights:Lcom/android/server/LightsService;
    .end local v109           #onlyCore:Z
    .restart local v91       #lights:Lcom/android/server/LightsService;
    :goto_d
    const/16 v74, 0x0

    .line 658
    .local v74, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v81, 0x0

    .line 660
    .local v81, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v122, 0x0

    .line 662
    .local v122, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v87, 0x0

    .line 664
    .local v87, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v47, 0x0

    .line 666
    .local v47, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v107, 0x0

    .line 668
    .local v107, notification:Lcom/android/server/NotificationManagerService;
    const/16 v139, 0x0

    .line 670
    .local v139, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v93, 0x0

    .line 672
    .local v93, location:Lcom/android/server/LocationManagerService;
    const/16 v66, 0x0

    .line 674
    .local v66, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v128, 0x0

    .line 676
    .local v128, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v95, 0x0

    .line 678
    .local v95, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v78, 0x0

    .line 683
    .local v78, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v83

    if-eq v0, v3, :cond_a

    .line 687
    :try_start_e
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v88, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v88

    move-object/from16 v1, v148

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    .line 691
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .local v88, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_f
    const-string v3, "input_method"

    move-object/from16 v0, v88

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5e

    move-object/from16 v87, v88

    .line 702
    .end local v88           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_e
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    .line 718
    :cond_a
    :goto_f
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "CustomeFrequencyManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v70, Lcom/android/server/CustomFrequencyManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6

    .line 720
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .local v70, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_12
    const-string v3, "CustomFrequencyManagerService"

    move-object/from16 v0, v70

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5d

    move-object/from16 v69, v70

    .line 727
    .end local v70           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :goto_10
    :try_start_13
    invoke-virtual/range {v148 .. v148}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7

    .line 738
    :goto_11
    :try_start_14
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8

    .line 749
    :goto_12
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040560

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5c

    .line 762
    :goto_13
    const/4 v3, 0x1

    move/from16 v0, v83

    if-eq v0, v3, :cond_28

    .line 764
    const/16 v101, 0x0

    .line 766
    .local v101, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 778
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v102, Lcom/android/server/MountService;

    move-object/from16 v0, v102

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9

    .line 782
    .end local v101           #mountService:Lcom/android/server/MountService;
    .local v102, mountService:Lcom/android/server/MountService;
    :try_start_17
    const-string v3, "mount"

    move-object/from16 v0, v102

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_5b

    move-object/from16 v101, v102

    .line 796
    .end local v102           #mountService:Lcom/android/server/MountService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    :cond_b
    :goto_14
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    if-eqz v71, :cond_c

    .line 800
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_a

    .line 814
    :cond_c
    :goto_15
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    new-instance v96, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    .line 818
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v96, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_1a
    const-string v3, "lock_settings"

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_5a

    move-object/from16 v95, v96

    .line 829
    .end local v96           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_16
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v75, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    .line 833
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v75, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1c
    const-string v3, "device_policy"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_59

    move-object/from16 v74, v75

    .line 843
    .end local v75           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_17
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v82, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v111

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v82

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_d

    .line 845
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v82, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_1e
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v82

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 846
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_58

    move-object/from16 v81, v82

    .line 856
    .end local v82           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_18
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v123, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v123

    move-object/from16 v1, v148

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_e

    .line 860
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v123, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_20
    const-string v3, "statusbar"

    move-object/from16 v0, v123

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_57

    move-object/from16 v122, v123

    .line 871
    .end local v123           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_19
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_f

    .line 892
    :goto_1a
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_10

    .line 907
    :goto_1b
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 911
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_11

    .line 922
    :goto_1c
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v129, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v129

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    .line 926
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v129, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_25
    const-string v3, "textservices"

    move-object/from16 v0, v129

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_56

    move-object/from16 v128, v129

    .line 937
    .end local v129           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1d
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    new-instance v104, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_13

    .line 941
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v104, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_27
    const-string v3, "netstats"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_55

    move-object/from16 v12, v104

    .line 952
    .end local v104           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1e
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_14

    .line 960
    .end local v103           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_29
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_54

    .line 971
    :goto_1f
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v147, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v147

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 975
    .end local v146           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v147, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2b
    const-string v3, "wifip2p"

    move-object/from16 v0, v147

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_53

    move-object/from16 v146, v147

    .line 986
    .end local v147           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v146       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_20
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v144, Lcom/android/server/WifiService;

    move-object/from16 v0, v144

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_16

    .line 990
    .end local v143           #wifi:Lcom/android/server/WifiService;
    .local v144, wifi:Lcom/android/server/WifiService;
    :try_start_2d
    const-string v3, "wifi"

    move-object/from16 v0, v144

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_52

    move-object/from16 v143, v144

    .line 1021
    .end local v144           #wifi:Lcom/android/server/WifiService;
    .restart local v143       #wifi:Lcom/android/server/WifiService;
    :goto_21
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    new-instance v142, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v142

    invoke-direct {v0, v4}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_17

    .line 1025
    .end local v141           #wfd:Lcom/samsung/wfd/WfdService;
    .local v142, wfd:Lcom/samsung/wfd/WfdService;
    :try_start_2f
    const-string v3, "wfd"

    move-object/from16 v0, v142

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_51

    move-object/from16 v141, v142

    .line 1036
    .end local v142           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v141       #wfd:Lcom/samsung/wfd/WfdService;
    :goto_22
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v63, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_18

    .line 1042
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .local v63, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_31
    const-string v3, "connectivity"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1044
    move-object/from16 v0, v63

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1046
    move-object/from16 v0, v63

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1048
    invoke-virtual/range {v143 .. v143}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 1050
    invoke-virtual/range {v146 .. v146}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_50

    move-object/from16 v62, v63

    .line 1061
    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_23
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v119

    .line 1065
    const-string v3, "servicediscovery"

    move-object/from16 v0, v119

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 1078
    :goto_24
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance v127, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1a

    .line 1082
    .end local v126           #throttle:Lcom/android/server/ThrottleService;
    .local v127, throttle:Lcom/android/server/ThrottleService;
    :try_start_34
    const-string v3, "throttle"

    move-object/from16 v0, v127

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_4f

    move-object/from16 v126, v127

    .line 1095
    .end local v127           #throttle:Lcom/android/server/ThrottleService;
    .restart local v126       #throttle:Lcom/android/server/ThrottleService;
    :goto_25
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1b

    .line 1120
    :goto_26
    if-eqz v101, :cond_d

    .line 1122
    const-string v3, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1123
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1127
    :cond_d
    if-eqz v44, :cond_e

    .line 1128
    :try_start_36
    invoke-virtual/range {v44 .. v44}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1c

    .line 1133
    :cond_e
    :goto_27
    if-eqz v65, :cond_f

    .line 1134
    :try_start_37
    invoke-virtual/range {v65 .. v65}, Landroid/content/ContentService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1d

    .line 1140
    :cond_f
    :goto_28
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v108, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v108

    move-object/from16 v1, v122

    move-object/from16 v2, v91

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1e

    .line 1144
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .local v108, notification:Lcom/android/server/NotificationManagerService;
    :try_start_39
    const-string v3, "notification"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1146
    move-object/from16 v0, v108

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_4e

    move-object/from16 v107, v108

    .line 1157
    .end local v108           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    :goto_29
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1f

    .line 1172
    :goto_2a
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    new-instance v94, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_20

    .line 1176
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .local v94, location:Lcom/android/server/LocationManagerService;
    :try_start_3c
    const-string v3, "location"

    move-object/from16 v0, v94

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_4d

    move-object/from16 v93, v94

    .line 1186
    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    :goto_2b
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    new-instance v67, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v67

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_21

    .line 1190
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v67, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3e
    const-string v3, "country_detector"

    move-object/from16 v0, v67

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_4c

    move-object/from16 v66, v67

    .line 1201
    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_2c
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 1214
    :goto_2d
    :try_start_40
    const-string v3, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v111

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1215
    const-string v3, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const-string v3, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v4}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_23

    .line 1227
    :goto_2e
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_24

    .line 1240
    :goto_2f
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110026

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1246
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    if-nez v16, :cond_10

    .line 1250
    new-instance v140, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v140

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_25

    .line 1252
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v140, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_43
    const-string v3, "wallpaper"

    move-object/from16 v0, v140

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_4b

    move-object/from16 v139, v140

    .line 1265
    .end local v140           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_10
    :goto_30
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1269
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .line 1280
    :cond_11
    :goto_31
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    new-instance v77, Lcom/android/server/DockObserver;

    move-object/from16 v0, v77

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_27

    .end local v76           #dock:Lcom/android/server/DockObserver;
    .local v77, dock:Lcom/android/server/DockObserver;
    move-object/from16 v76, v77

    .line 1288
    .end local v77           #dock:Lcom/android/server/DockObserver;
    .restart local v76       #dock:Lcom/android/server/DockObserver;
    :goto_32
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_28

    .line 1296
    :goto_33
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "Thermistor Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    new-instance v125, Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, v125

    invoke-direct {v0, v4, v6}, Lcom/android/server/ThermistorObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_29

    .end local v124           #thermistor:Lcom/android/server/ThermistorObserver;
    .local v125, thermistor:Lcom/android/server/ThermistorObserver;
    move-object/from16 v124, v125

    .line 1304
    .end local v125           #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v124       #thermistor:Lcom/android/server/ThermistorObserver;
    :goto_34
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    new-instance v135, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v135

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2a

    .line 1307
    .end local v134           #usb:Lcom/android/server/usb/UsbService;
    .local v135, usb:Lcom/android/server/usb/UsbService;
    :try_start_49
    const-string v3, "usb"

    move-object/from16 v0, v135

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_4a

    move-object/from16 v134, v135

    .line 1312
    .end local v135           #usb:Lcom/android/server/usb/UsbService;
    .restart local v134       #usb:Lcom/android/server/usb/UsbService;
    :goto_35
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    new-instance v118, Lcom/android/server/SerialService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2b

    .line 1315
    .end local v117           #serial:Lcom/android/server/SerialService;
    .local v118, serial:Lcom/android/server/SerialService;
    :try_start_4b
    const-string v3, "serial"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_49

    move-object/from16 v117, v118

    .line 1321
    .end local v118           #serial:Lcom/android/server/SerialService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    :goto_36
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    new-instance v133, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v133

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .end local v132           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v133, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v132, v133

    .line 1332
    .end local v133           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v132       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_37
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v3, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1335
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string v3, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v4}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 1345
    :cond_12
    :goto_38
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2e

    .line 1360
    :goto_39
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    new-instance v48, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2f

    .line 1364
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .local v48, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_50
    const-string v3, "appwidget"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_48

    move-object/from16 v47, v48

    .line 1375
    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_3a
    :try_start_51
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    new-instance v116, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_30

    .end local v115           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v116, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v115, v116

    .line 1388
    .end local v116           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v115       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_3b
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .line 1398
    :goto_3c
    :try_start_53
    const-string v3, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-string v3, "bt_fm_radio"

    new-instance v9, Lcom/broadcom/bt/service/framework/PowerManagementService;

    invoke-direct {v9, v4}, Lcom/broadcom/bt/service/framework/PowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_32

    .line 1415
    :goto_3d
    :try_start_54
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_33

    .line 1430
    :goto_3e
    :try_start_55
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    new-instance v106, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .end local v105           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v106, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v105, v106

    .line 1458
    .end local v106           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v105       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3f
    const-string v3, "ro.tvout.enable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v130

    .line 1460
    .local v130, tvoutEnable:Ljava/lang/String;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tvout Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v130

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const-string v3, "false"

    move-object/from16 v0, v130

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1468
    :try_start_56
    const-string v3, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/16 v131, 0x0

    .line 1472
    .local v131, tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "com.android.server.TvoutService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v131

    .line 1474
    if-nez v131, :cond_26

    .line 1476
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    .line 1505
    .end local v131           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_13
    :goto_40
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v110

    .line 1507
    .local v110, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.irda_service"

    move-object/from16 v0, v110

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1509
    :try_start_57
    const-string v3, "SystemServer"

    const-string v9, "Enable the IRDA service!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    new-instance v90, Landroid/app/IrdaService;

    move-object/from16 v0, v90

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 1511
    .local v90, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v90

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_36

    .line 1517
    .end local v90           #irda:Landroid/app/IrdaService;
    :cond_14
    :goto_41
    const-string v3, "com.sec.feature.minimode"

    move-object/from16 v0, v110

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1521
    :try_start_58
    const-string v3, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const-string v98, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 1526
    .local v98, minimodeFrameworkDexPath:Ljava/lang/String;
    const-string v100, "/data/dalvik-cache/minimode.dex"

    .line 1529
    .local v100, minimodeGenDexPath:Ljava/lang/String;
    new-instance v86, Landroid/os/FileUtils$FileStatus;

    invoke-direct/range {v86 .. v86}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 1531
    .local v86, fs:Landroid/os/FileUtils$FileStatus;
    move-object/from16 v0, v98

    move-object/from16 v1, v86

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1533
    const-string v3, "SystemServer"

    const-string v9, "This escaping dexopt of minimode.jar is only for eng build"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v98

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v100

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1537
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v100

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v98

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    new-instance v99, Ljava/io/File;

    invoke-direct/range {v99 .. v100}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1541
    .local v99, minimodeGenDexFile:Ljava/io/File;
    move-object/from16 v0, v86

    iget-wide v9, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    move-object/from16 v0, v99

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1543
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v100

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v86

    iget-wide v10, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    .end local v99           #minimodeGenDexFile:Ljava/io/File;
    :cond_15
    new-instance v58, Ldalvik/system/DexClassLoader;

    const-string v3, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v58

    invoke-direct {v0, v3, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1557
    .local v58, cl:Ljava/lang/ClassLoader;
    const-string v3, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v42

    .line 1559
    .local v42, MiniModeAppManagerServiceClass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v3, v9

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v43

    .line 1563
    .local v43, MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_37

    .line 1576
    .end local v42           #MiniModeAppManagerServiceClass:Ljava/lang/Class;
    .end local v43           #MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    .end local v58           #cl:Ljava/lang/ClassLoader;
    .end local v86           #fs:Landroid/os/FileUtils$FileStatus;
    .end local v98           #minimodeFrameworkDexPath:Ljava/lang/String;
    .end local v100           #minimodeGenDexPath:Ljava/lang/String;
    :cond_16
    :goto_42
    const-string v3, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v110

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1578
    :try_start_59
    const-string v3, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    new-instance v52, Landroid/app/BarBeamService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1581
    .local v52, barbeam:Landroid/app/BarBeamService;
    const-string v3, "barbeam"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_38

    .line 1593
    .end local v52           #barbeam:Landroid/app/BarBeamService;
    :cond_17
    :goto_43
    :try_start_5a
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    new-instance v60, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_39

    .line 1597
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v60, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_5b
    const-string v3, "commontime_management"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_47

    move-object/from16 v59, v60

    .line 1610
    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_44
    :try_start_5c
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3a

    .line 1624
    :goto_45
    :try_start_5d
    const-string v3, "samsung.facedetection_service"

    new-instance v9, Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {v9, v4}, Lcom/sec/android/facedetection/FaceDetectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3b

    .line 1632
    :goto_46
    :try_start_5e
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3c

    .line 1669
    :goto_47
    :try_start_5f
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3d

    .line 1681
    :goto_48
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1687
    :try_start_60
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    new-instance v79, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3e

    .line 1693
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v79, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_61
    const-string v3, "dreams"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_46

    move-object/from16 v78, v79

    .line 1710
    .end local v79           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v101           #mountService:Lcom/android/server/MountService;
    .end local v110           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v130           #tvoutEnable:Ljava/lang/String;
    .restart local v78       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_18
    :goto_49
    invoke-virtual/range {v148 .. v148}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v29

    .line 1712
    .local v29, safeMode:Z
    if-eqz v29, :cond_27

    .line 1714
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1718
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1722
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1738
    :goto_4a
    :try_start_62
    invoke-virtual/range {v136 .. v136}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3f

    .line 1747
    :goto_4b
    :try_start_63
    invoke-virtual/range {v95 .. v95}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_40

    .line 1752
    :goto_4c
    if-eqz v74, :cond_19

    .line 1756
    :try_start_64
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_41

    .line 1768
    :cond_19
    :goto_4d
    if-eqz v81, :cond_1a

    .line 1769
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1770
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :cond_1a
    if-eqz v107, :cond_1b

    .line 1778
    :try_start_65
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_42

    .line 1789
    :cond_1b
    :goto_4e
    :try_start_66
    invoke-virtual/range {v148 .. v148}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_43

    .line 1794
    :goto_4f
    if-eqz v29, :cond_1c

    .line 1795
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1801
    :cond_1c
    invoke-virtual/range {v148 .. v148}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v61

    .line 1802
    .local v61, config:Landroid/content/res/Configuration;
    new-instance v97, Landroid/util/DisplayMetrics;

    invoke-direct/range {v97 .. v97}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1803
    .local v97, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/view/WindowManager;

    .line 1804
    .local v138, w:Landroid/view/WindowManager;
    invoke-interface/range {v138 .. v138}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v97

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1805
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v61

    move-object/from16 v1, v97

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1807
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 1809
    :try_start_67
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_44

    .line 1815
    :goto_50
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/LightsService;->systemReady()V

    .line 1818
    move-object/from16 v17, v4

    .line 1819
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 1820
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 1821
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 1822
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 1823
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v62

    .line 1824
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v76

    .line 1825
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v124

    .line 1826
    .local v24, thermistorF:Lcom/android/server/ThermistorObserver;
    move-object/from16 v25, v134

    .line 1827
    .local v25, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v35, v126

    .line 1828
    .local v35, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v26, v132

    .line 1829
    .local v26, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v28, v47

    .line 1830
    .local v28, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v30, v139

    .line 1831
    .local v30, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v31, v87

    .line 1832
    .local v31, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v27, v115

    .line 1833
    .local v27, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v33, v93

    .line 1834
    .local v33, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v34, v66

    .line 1835
    .local v34, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v36, v105

    .line 1836
    .local v36, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v37, v59

    .line 1837
    .local v37, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v38, v128

    .line 1838
    .local v38, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v32, v122

    .line 1839
    .local v32, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v39, v78

    .line 1840
    .local v39, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v40, v89

    .line 1841
    .local v40, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v54

    .line 1848
    .local v41, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v41}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/ThermistorObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1970
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1972
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_1d
    const-string v3, "SystemServer"

    const-string v9, "!@End of System ServerThread"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1979
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    return-void

    .line 434
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #thermistorF:Lcom/android/server/ThermistorObserver;
    .end local v25           #usbF:Lcom/android/server/usb/UsbService;
    .end local v26           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v27           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v28           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v29           #safeMode:Z
    .end local v30           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v31           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v32           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v33           #locationF:Lcom/android/server/LocationManagerService;
    .end local v34           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v35           #throttleF:Lcom/android/server/ThrottleService;
    .end local v36           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v37           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v38           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v39           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v40           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v41           #bluetoothF:Landroid/server/BluetoothService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v61           #config:Landroid/content/res/Configuration;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v97           #metrics:Landroid/util/DisplayMetrics;
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v138           #w:Landroid/view/WindowManager;
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v103       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v109       #onlyCore:Z
    :cond_1e
    :try_start_68
    const-string v3, "1"

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 436
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/16 v109, 0x1

    goto/16 :goto_4

    .line 443
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 473
    .restart local v85       #firstBoot:Z
    :catch_0
    move-exception v80

    .line 475
    .local v80, e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_1

    goto/16 :goto_7

    .line 647
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v80           #e:Ljava/lang/Throwable;
    .end local v85           #firstBoot:Z
    .end local v109           #onlyCore:Z
    :catch_1
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .line 649
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v80, e:Ljava/lang/RuntimeException;
    :goto_52
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 490
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #e:Ljava/lang/RuntimeException;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v85       #firstBoot:Z
    .restart local v109       #onlyCore:Z
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 510
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v72       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_2
    move-exception v80

    .line 512
    .local v80, e:Ljava/lang/Throwable;
    :try_start_69
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_69} :catch_61

    .line 514
    const/16 v71, 0x0

    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    goto/16 :goto_9

    .line 574
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v80           #e:Ljava/lang/Throwable;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    :cond_21
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_a

    :cond_22
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 605
    :cond_23
    const/4 v3, 0x1

    move/from16 v0, v83

    if-ne v0, v3, :cond_24

    .line 607
    :try_start_6a
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 647
    :catch_3
    move-exception v80

    move-object/from16 v136, v137

    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto :goto_52

    .line 611
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    :cond_24
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v55, Landroid/server/BluetoothService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6a} :catch_3

    .line 615
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .local v55, bluetooth:Landroid/server/BluetoothService;
    :try_start_6b
    const-string v3, "bluetooth"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 617
    invoke-virtual/range {v55 .. v55}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 620
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 622
    new-instance v57, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v57

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6b} :catch_65

    .line 624
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v57, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_6c
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 627
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v51, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_6c} :catch_66

    .line 629
    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .local v51, avrcp:Landroid/server/AvrcpStubService;
    :try_start_6d
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 630
    invoke-virtual/range {v55 .. v55}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_6d} :catch_67

    move-object/from16 v50, v51

    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_c

    .line 693
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v85           #firstBoot:Z
    .end local v92           #lights:Lcom/android/server/LightsService;
    .end local v109           #onlyCore:Z
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v80

    .line 695
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 708
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v80

    .line 710
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 721
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v80

    .line 722
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "SystemServer"

    const-string v9, "Failure starting CustomFrequencyManagerService Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 729
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v80

    .line 731
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 740
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v80

    .line 742
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 784
    .end local v80           #e:Ljava/lang/Throwable;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    :catch_9
    move-exception v80

    .line 786
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 805
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v80

    .line 807
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 820
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v80

    .line 822
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 835
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v80

    .line 837
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 847
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v80

    .line 848
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 862
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v80

    .line 864
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 877
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v80

    .line 879
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 898
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v80

    .line 900
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 913
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v80

    .line 915
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 928
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v80

    .line 930
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 943
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v80

    .line 945
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 962
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v80

    move-object/from16 v8, v103

    .line 964
    .end local v103           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 977
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v80

    .line 979
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 992
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v80

    .line 994
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1027
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v80

    .line 1029
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v3, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1052
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v80

    .line 1054
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1069
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v80

    .line 1071
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1086
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v80

    .line 1088
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1101
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v80

    .line 1103
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1129
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v80

    .line 1130
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1135
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v80

    .line 1136
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1148
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v80

    .line 1150
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1163
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v80

    .line 1165
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1178
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v80

    .line 1180
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1192
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v80

    .line 1194
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1207
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v80

    .line 1209
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1219
    .end local v80           #e:Ljava/lang/Throwable;
    :cond_25
    :try_start_6e
    const-string v3, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_23

    goto/16 :goto_2e

    .line 1221
    :catch_23
    move-exception v80

    .line 1222
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "starting Spell Service failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v80

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1233
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v80

    .line 1235
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1256
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v80

    .line 1258
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1273
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v80

    .line 1275
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1283
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v80

    .line 1284
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1291
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v80

    .line 1292
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1299
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v80

    .line 1300
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting ThermistorObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1308
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v80

    .line 1309
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_66
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1316
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v80

    .line 1317
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_67
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 1325
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v80

    .line 1327
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1337
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v80

    .line 1338
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1351
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v80

    .line 1353
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39

    .line 1366
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v80

    .line 1368
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_68
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1379
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v80

    .line 1381
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1392
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v80

    .line 1394
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1400
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v80

    .line 1401
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BT FM Power Management Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 1421
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v80

    .line 1423
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1434
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v80

    .line 1436
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1484
    .end local v80           #e:Ljava/lang/Throwable;
    .restart local v130       #tvoutEnable:Ljava/lang/String;
    .restart local v131       #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_26
    :try_start_6f
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v49, v0

    .line 1488
    .local v49, arg:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v49, v3

    .line 1490
    move-object/from16 v0, v131

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v64

    .line 1492
    .local v64, constructor:Ljava/lang/reflect/Constructor;
    const-string v9, "tvoutservice"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_35

    goto/16 :goto_40

    .line 1496
    .end local v49           #arg:[Ljava/lang/Class;
    .end local v64           #constructor:Ljava/lang/reflect/Constructor;
    .end local v131           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_35
    move-exception v80

    .line 1498
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_40

    .line 1512
    .end local v80           #e:Ljava/lang/Throwable;
    .restart local v110       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_36
    move-exception v80

    .line 1513
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 1569
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v80

    .line 1571
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 1582
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v80

    .line 1583
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_43

    .line 1599
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v80

    .line 1601
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_69
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1614
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v80

    .line 1616
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 1625
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v80

    .line 1626
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "Fail to start face detection service"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1636
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v80

    .line 1638
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v80

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    .line 1673
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v80

    .line 1675
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1695
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v80

    .line 1697
    .restart local v80       #e:Ljava/lang/Throwable;
    :goto_6a
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1728
    .end local v80           #e:Ljava/lang/Throwable;
    .end local v101           #mountService:Lcom/android/server/MountService;
    .end local v110           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v130           #tvoutEnable:Ljava/lang/String;
    .restart local v29       #safeMode:Z
    :cond_27
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_4a

    .line 1740
    :catch_3f
    move-exception v80

    .line 1742
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1748
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v80

    .line 1749
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1758
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v80

    .line 1760
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1780
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_42
    move-exception v80

    .line 1782
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1790
    .end local v80           #e:Ljava/lang/Throwable;
    :catch_43
    move-exception v80

    .line 1791
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1810
    .end local v80           #e:Ljava/lang/Throwable;
    .restart local v61       #config:Landroid/content/res/Configuration;
    .restart local v97       #metrics:Landroid/util/DisplayMetrics;
    .restart local v138       #w:Landroid/view/WindowManager;
    :catch_44
    move-exception v80

    .line 1811
    .restart local v80       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 455
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #safeMode:Z
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v61           #config:Landroid/content/res/Configuration;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v80           #e:Ljava/lang/Throwable;
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v97           #metrics:Landroid/util/DisplayMetrics;
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v138           #w:Landroid/view/WindowManager;
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v85       #firstBoot:Z
    .restart local v103       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v109       #onlyCore:Z
    :catch_45
    move-exception v3

    goto/16 :goto_6

    .line 1695
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v85           #firstBoot:Z
    .end local v103           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v109           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v79       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v130       #tvoutEnable:Ljava/lang/String;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_46
    move-exception v80

    move-object/from16 v78, v79

    .end local v79           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v78       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_6a

    .line 1599
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v60       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_47
    move-exception v80

    move-object/from16 v59, v60

    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_69

    .line 1366
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v110           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v130           #tvoutEnable:Ljava/lang/String;
    .restart local v48       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_48
    move-exception v80

    move-object/from16 v47, v48

    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_68

    .line 1316
    .end local v117           #serial:Lcom/android/server/SerialService;
    .restart local v118       #serial:Lcom/android/server/SerialService;
    :catch_49
    move-exception v80

    move-object/from16 v117, v118

    .end local v118           #serial:Lcom/android/server/SerialService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_67

    .line 1308
    .end local v134           #usb:Lcom/android/server/usb/UsbService;
    .restart local v135       #usb:Lcom/android/server/usb/UsbService;
    :catch_4a
    move-exception v80

    move-object/from16 v134, v135

    .end local v135           #usb:Lcom/android/server/usb/UsbService;
    .restart local v134       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_66

    .line 1256
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v140       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4b
    move-exception v80

    move-object/from16 v139, v140

    .end local v140           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_65

    .line 1192
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v67       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_4c
    move-exception v80

    move-object/from16 v66, v67

    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_64

    .line 1178
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #location:Lcom/android/server/LocationManagerService;
    :catch_4d
    move-exception v80

    move-object/from16 v93, v94

    .end local v94           #location:Lcom/android/server/LocationManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_63

    .line 1148
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v108       #notification:Lcom/android/server/NotificationManagerService;
    :catch_4e
    move-exception v80

    move-object/from16 v107, v108

    .end local v108           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_62

    .line 1086
    .end local v126           #throttle:Lcom/android/server/ThrottleService;
    .restart local v127       #throttle:Lcom/android/server/ThrottleService;
    :catch_4f
    move-exception v80

    move-object/from16 v126, v127

    .end local v127           #throttle:Lcom/android/server/ThrottleService;
    .restart local v126       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_61

    .line 1052
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v63       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_50
    move-exception v80

    move-object/from16 v62, v63

    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_60

    .line 1027
    .end local v141           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v142       #wfd:Lcom/samsung/wfd/WfdService;
    :catch_51
    move-exception v80

    move-object/from16 v141, v142

    .end local v142           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v141       #wfd:Lcom/samsung/wfd/WfdService;
    goto/16 :goto_5f

    .line 992
    .end local v143           #wifi:Lcom/android/server/WifiService;
    .restart local v144       #wifi:Lcom/android/server/WifiService;
    :catch_52
    move-exception v80

    move-object/from16 v143, v144

    .end local v144           #wifi:Lcom/android/server/WifiService;
    .restart local v143       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_5e

    .line 977
    .end local v146           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v147       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_53
    move-exception v80

    move-object/from16 v146, v147

    .end local v147           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v146       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_5d

    .line 962
    :catch_54
    move-exception v80

    goto/16 :goto_5c

    .line 943
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v103       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v104       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_55
    move-exception v80

    move-object/from16 v12, v104

    .end local v104           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_5b

    .line 928
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v129       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_56
    move-exception v80

    move-object/from16 v128, v129

    .end local v129           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_5a

    .line 862
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v123       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_57
    move-exception v80

    move-object/from16 v122, v123

    .end local v123           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_59

    .line 847
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v82       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_58
    move-exception v80

    move-object/from16 v81, v82

    .end local v82           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_58

    .line 835
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v75       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_59
    move-exception v80

    move-object/from16 v74, v75

    .end local v75           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_57

    .line 820
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v96       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_5a
    move-exception v80

    move-object/from16 v95, v96

    .end local v96           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_56

    .line 784
    .end local v101           #mountService:Lcom/android/server/MountService;
    .restart local v102       #mountService:Lcom/android/server/MountService;
    :catch_5b
    move-exception v80

    move-object/from16 v101, v102

    .end local v102           #mountService:Lcom/android/server/MountService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_55

    .line 757
    .end local v101           #mountService:Lcom/android/server/MountService;
    :catch_5c
    move-exception v3

    goto/16 :goto_13

    .line 721
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v70       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :catch_5d
    move-exception v80

    move-object/from16 v69, v70

    .end local v70           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    goto/16 :goto_54

    .line 693
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v88       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_5e
    move-exception v80

    move-object/from16 v87, v88

    .end local v88           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_53

    .line 647
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v112       #power:Lcom/android/server/PowerManagerService;
    :catch_5f
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v112

    .end local v112           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_52

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v85       #firstBoot:Z
    .restart local v109       #onlyCore:Z
    :catch_60
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v44, v45

    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_52

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v72       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_61
    move-exception v80

    move-object/from16 v71, v72

    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_52

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    :catch_62
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    :catch_63
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    :catch_64
    move-exception v80

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v136, v137

    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52

    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    :catch_65
    move-exception v80

    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v136, v137

    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52

    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    :catch_66
    move-exception v80

    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v136, v137

    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52

    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    :catch_67
    move-exception v80

    move-object/from16 v50, v51

    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v136, v137

    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v136       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v91, v92

    .end local v92           #lights:Lcom/android/server/LightsService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52

    .line 473
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    :catch_68
    move-exception v80

    move-object/from16 v44, v45

    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_51

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v85           #firstBoot:Z
    .end local v109           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_28
    move-object/from16 v8, v103

    .end local v103           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_49

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v136           #vibrator:Lcom/android/server/VibratorService;
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v85       #firstBoot:Z
    .restart local v92       #lights:Lcom/android/server/LightsService;
    .restart local v103       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v109       #onlyCore:Z
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    :cond_29
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_c
.end method
