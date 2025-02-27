.class public Lsiso/vt/VTManager;
.super Ljava/lang/Object;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsiso/vt/VTManager$EventHandler;,
        Lsiso/vt/VTManager$VTStackStateListener;,
        Lsiso/vt/VTManager$VTEventForUI;
    }
.end annotation


# static fields
.field public static final H324M_RECORD_RX_AUDIO_CHANNEL:I = 0x2

.field public static final H324M_RECORD_RX_VIDEO_CHANNEL:I = 0x8

.field public static final H324M_RECORD_TX_AUDIO_CHANNEL:I = 0x1

.field public static final H324M_RECORD_TX_VIDEO_CHANNEL:I = 0x4

.field public static final VT_ORIENTATION_LANDSCAPE_BOTTOM:I = 0x4

.field public static final VT_ORIENTATION_LANDSCAPE_TOP:I = 0x2

.field public static final VT_ORIENTATION_PORTAIT_BOTTOM:I = 0x3

.field public static final VT_ORIENTATION_PORTAIT_TOP:I = 0x1

.field private static vtInstance:Lsiso/vt/VTManager;


# instance fields
.field private mContext:I

.field public mEventHandler:Lsiso/vt/VTManager$EventHandler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mListenerContext:I

.field private mNearSurface:Landroid/view/Surface;

.field public mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

.field private mSurface:Landroid/view/Surface;

.field public mUserIndiData:Lsiso/vt/VideoTelephonyData;

.field private vtStackEventStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 186
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Inside Static Block"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    const-string v1, "vtmanager"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .local v0, ee:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 189
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 190
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/16 v1, 0x40

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "H324M_VT_CREATE_SESSION_CONFIRMED"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "H324M_VT_AUDIO_TX_OLC_ESTABLISHED"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "H324M_VT_AUDIO_RX_OLC_ESTABLISHED"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "H324M_VT_VIDEO_TX_OLC_ESTABLISHED"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "H324M_VT_VIDEO_RX_OLC_ESTABLISHED"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "H324M_VT_AUDIO_TX_OLC_CLOSED"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "H324M_VT_AUDIO_RX_OLC_CLOSED"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "H324M_VT_VIDEO_TX_OLC_CLOSED"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "H324M_VT_VIDEO_RX_OLC_CLOSED"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "H324M_VT_START_CALL_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "H324M_VT_START_CALL_FAILURE"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "H324M_VT_SESSION_STOP_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "H324M_VT_SESSION_STOP_FAILED"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "H324M_VT_END_CALL_REQUEST"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "H324M_VT_PROTOCOL_ERR_IND"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "H324M_RB_CALL_DISCONNECTED"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "H324M_VT_CALL_DEINITIALIZED"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "H324M_VT_SET_CAMERA_FRAME_RATE"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "H324M_VT_GENERATE_IFRAME"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "H324M_VT_VENDOR_ID_IND"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "H324M_VT_USER_INPUT_INDICATION"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "H324M_VT_FIRST_VIDEO_FRAME_DECODED"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "H324M_VT_UL_VIDEO_RESOURCE_INIT_DONE"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "H324M_IC_START_SUCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "H324M_IC_START_FAILURE"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "H324M_IC_STOP_SUCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "H324M_IC_STOP_FAILURE"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "H324M_FC_START_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "H324M_FC_START_FAILURE"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "H324M_FC_UNSUPPORTED_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "H324M_FC_UNSUPPORTED_VIDEO"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "H324M_FC_FILE_READ_ERR"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "H324M_FC_NO_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "H324M_FC_NO_VIDEO"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "H324M_FC_STOP_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "H324M_FC_STOP_FAILED"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "H324M_FC_PROTOCOL_ERROR"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "H234M_FC_VOL_READ_FAILED"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "H324M_REC_START_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "H324M_REC_START_FAILURE"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "H324M_REC_STOP_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "H324M_REC_STOP_FAILED"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "H324M_REC_CANCEL_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "H324M_REC_PROTOCOL_ERROR"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "H324M_REC_MAX_TIMEOUT"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "H324M_VT_CAMERA_CONNECT_FAILED"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "H324M_IC_VIDEO_DEACTIVATED"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "H324M_IC_VIDEO_ACTIVATED"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "H324M_VT_PREVIEW_VIDEO_DATA_IND"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "H324M_VT_REMOTE_VIDEO_DATA_IND"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "H324M_VT_ALL_OLC_ESTABLISHED"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "H324M_VT_MRBT_START"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "H324M_VT_MRBT_END"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "H324M_VT_NO_DATA_ERR_IND"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "H324M_VT_RECIEVED_DATA_IND"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "H324M_IND_TO_APP_MAX"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "VTMNGR_DECODE_JPEG_FAILURE"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "VTMNGR_SURFACE_INIT_FAILURE"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "VTMNGR_CAMERA_START_FAILURE"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "VTMNGR_CAMERA_START_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "VTMNGR_CAMERA_RETRY_START_SUCCESS"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "VTMNGR_USER_INDICATION"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "VTMNGR_VMS_MODE"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "VTMNGR_FIRST_FRAME_FROM_CAMERA"

    aput-object v3, v1, v2

    iput-object v1, p0, Lsiso/vt/VTManager;->vtStackEventStrings:[Ljava/lang/String;

    .line 197
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 198
    new-instance v1, Lsiso/vt/VTManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lsiso/vt/VTManager$EventHandler;-><init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    .line 204
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lsiso/vt/VTManager;->native_setup(Ljava/lang/Object;)V

    .line 205
    return-void

    .line 199
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    new-instance v1, Lsiso/vt/VTManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lsiso/vt/VTManager$EventHandler;-><init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    goto :goto_0

    .line 202
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lsiso/vt/VTManager;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lsiso/vt/VTManager;->vtStackEventStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lsiso/vt/VTManager;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lsiso/vt/VTManager;

    invoke-direct {v0}, Lsiso/vt/VTManager;-><init>()V

    sput-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    .line 215
    :cond_0
    sget-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    return-object v0
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 8
    .parameter "vt_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v6

    .line 444
    .local v6, c:Lsiso/vt/VTManager;
    if-nez v6, :cond_1

    .line 446
    const-string v0, "postEventFromNative"

    const-string v1, "VT Manager Instance Deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local p4
    :cond_0
    :goto_0
    return-void

    .line 449
    .restart local p4
    :cond_1
    iget-object v0, v6, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "postEventFromNative"

    const-string v2, "posting message"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v0, "postEventFromNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg1 :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v0, "postEventFromNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg2 :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz p4, :cond_2

    .line 457
    iget-object v0, v6, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    if-nez v0, :cond_3

    .line 459
    new-instance v0, Lsiso/vt/VideoTelephonyData;

    move-object v3, p4

    check-cast v3, Ljava/lang/String;

    move-object v2, v1

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lsiso/vt/VideoTelephonyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, v6, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    .line 468
    .end local p4
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 470
    iget-object v0, v6, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    invoke-virtual {v0, p1, p2, p3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 471
    .local v7, m:Landroid/os/Message;
    iget-object v0, v6, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 463
    .end local v7           #m:Landroid/os/Message;
    .restart local p4
    :cond_3
    iget-object v0, v6, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-virtual {v0, p4}, Lsiso/vt/VideoTelephonyData;->setUserData(Ljava/lang/String;)V

    .line 464
    iget-object v0, v6, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    invoke-virtual {v0, p3}, Lsiso/vt/VideoTelephonyData;->setDataLen(I)V

    .line 465
    iget-object v0, v6, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    invoke-virtual {v0, p2}, Lsiso/vt/VideoTelephonyData;->getObjectMode(I)V

    goto :goto_1
.end method


# virtual methods
.method public final native CancelRecording()V
.end method

.method public final native CaptureImage(Ljava/lang/String;Z)V
.end method

.method public final native FreezeVideo()V
.end method

.method public final native GetCameraParams(I)I
.end method

.method public final native MuteCamera()V
.end method

.method public final native ResetNearEndDisplay()V
.end method

.method public final native ResetPreviewDisplay()V
.end method

.method public final native SetCameraParams(II)I
.end method

.method public final native StartRecording(Ljava/lang/String;I)V
.end method

.method public final native StartVTCall(Z)V
.end method

.method public final native StartVTCall(ZI)V
.end method

.method public final native StopRecording(Z)V
.end method

.method public final native StopVTCall()V
.end method

.method public final native SwipeSurface()V
.end method

.method public final native UnmuteCamera()V
.end method

.method public final native cleanupCall()V
.end method

.method public deinitVTManager()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lsiso/vt/VTManager;->mSurface:Landroid/view/Surface;

    .line 224
    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    .line 225
    iput-object v0, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    .line 226
    sput-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    .line 227
    iput-object v0, p0, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    .line 228
    return-void
.end method

.method public final native releaseVTManager()V
.end method

.method public final native sendDTMF(Ljava/lang/String;I)V
.end method

.method public final native sendLiveVideo()V
.end method

.method public final native sendStillImage(Ljava/lang/String;)V
.end method

.method public final native sendVideo(Ljava/lang/String;)V
.end method

.method public final native setEmotionalAnimation(I)V
.end method

.method public final native setEmotionalEyeContact(I)V
.end method

.method public final native setOrientation(I)V
.end method

.method public final native setPresetImg(Ljava/lang/String;)V
.end method

.method public final native setPreviewDisplay(Landroid/view/Surface;II)V
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;II)V
    .locals 1
    .parameter "holder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 237
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    .line 238
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lsiso/vt/VTManager;->mSurface:Landroid/view/Surface;

    .line 239
    return-void
.end method

.method public final native setSKTInfo(II)V
.end method

.method public setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 423
    const-string v0, "setStackStateListener"

    const-string v1, "Setting mStackStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iput-object p1, p0, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 425
    return-void
.end method

.method public final native startCamera(Landroid/view/Surface;II)V
.end method

.method public final startCamera(Landroid/view/SurfaceHolder;II)V
    .locals 1
    .parameter "holder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 389
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    .line 390
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    .line 391
    return-void
.end method

.method public final native startCameraQCICS(Landroid/view/Surface;Landroid/view/Surface;II)V
.end method

.method public final startCameraQCICS(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;II)V
    .locals 2
    .parameter "holder"
    .parameter "dummyholder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 394
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3, p4}, Lsiso/vt/VTManager;->startCameraQCICS(Landroid/view/Surface;Landroid/view/Surface;II)V

    .line 395
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    .line 396
    return-void
.end method

.method public final native stopCamera()V
.end method
