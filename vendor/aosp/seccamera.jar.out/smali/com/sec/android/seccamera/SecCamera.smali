.class public Lcom/sec/android/seccamera/SecCamera;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/seccamera/SecCamera$1;,
        Lcom/sec/android/seccamera/SecCamera$Parameters;,
        Lcom/sec/android/seccamera/SecCamera$Area;,
        Lcom/sec/android/seccamera/SecCamera$Size;,
        Lcom/sec/android/seccamera/SecCamera$ErrorCallback;,
        Lcom/sec/android/seccamera/SecCamera$Face;,
        Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;,
        Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;,
        Lcom/sec/android/seccamera/SecCamera$PictureCallback;,
        Lcom/sec/android/seccamera/SecCamera$ShutterCallback;,
        Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;,
        Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;,
        Lcom/sec/android/seccamera/SecCamera$EventHandler;,
        Lcom/sec/android/seccamera/SecCamera$PreviewCallback;,
        Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;,
        Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;,
        Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;,
        Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;,
        Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;,
        Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;,
        Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field private static final ACTION_SHOT_CANCELSERIES:I = 0x46e

.field private static final ACTION_SHOT_CAPTURED:I = 0xf045

.field private static final ACTION_SHOT_CREATING_RESULT_COMPLETED:I = 0xf043

.field private static final ACTION_SHOT_CREATING_RESULT_PROGRESS:I = 0xf042

.field private static final ACTION_SHOT_CREATING_RESULT_STARTED:I = 0xf041

.field private static final ACTION_SHOT_FINALIZE:I = 0x470

.field private static final ACTION_SHOT_INITIALIZE:I = 0x46b

.field private static final ACTION_SHOT_PROGRESS_ACQUISITION:I = 0xf044

.field private static final ACTION_SHOT_RECT:I = 0xf046

.field private static final ACTION_SHOT_SETRESOLUTION:I = 0x46c

.field private static final ACTION_SHOT_STARTSERIES:I = 0x46d

.field private static final ACTION_SHOT_STOPSERIES:I = 0x46f

.field private static final ADDME_SHOT_CANCEL_CAPTURE:I = 0x479

.field private static final ADDME_SHOT_CAPUTRED_FIRSTPERSON:I = 0xf052

.field private static final ADDME_SHOT_ERR:I = 0xf051

.field private static final ADDME_SHOT_FINALIZE:I = 0x47a

.field private static final ADDME_SHOT_HANDLE_SNAPSHOT:I = 0x478

.field private static final ADDME_SHOT_INIT:I = 0x475

.field private static final ADDME_SHOT_PROGRESS_STITCHING:I = 0xf053

.field private static final ADDME_SHOT_START_CAPTURE:I = 0x476

.field private static final ADDME_SHOT_SWITCH_POSITION:I = 0x477

.field private static final BEAUTY_FACE_RETOUCH:I = 0x49d

.field private static final BEAUTY_SHOT_PROGRESS_RENDERING:I = 0xf151

.field private static final BURST_SHOT_CAPTURE:I = 0x48a

.field private static final BURST_SHOT_CAPTURING_PROGRESSED:I = 0xf091

.field private static final BURST_SHOT_CAPTURING_STOPPED:I = 0xf092

.field private static final BURST_SHOT_FILE_STRING:I = 0xf094

.field private static final BURST_SHOT_SAVING_COMPLETED:I = 0xf093

.field private static final BURST_SHOT_START_CAPTURE:I = 0x48b

.field private static final BURST_SHOT_STOP_AND_ENCODING:I = 0x48c

.field private static final BURST_SHOT_STORING:I = 0x489

.field private static final BURST_SHOT_TERMINATE:I = 0x48d

.field private static final CAMERA_CMD_GET_WB_CUSTOM_VALUE:I = 0x4cf

.field private static final CAMERA_CMD_SMART_AUTO_S1_PUSH:I = 0x4e3

.field private static final CAMERA_CMD_SMART_AUTO_S1_RELEASE:I = 0x4e4

.field public static final CAMERA_ERROR_PREVIEWFRAME_TIMEOUT:I = 0x3e9

.field public static final CAMERA_ERROR_PRIORITY_DIED:I = 0xc8

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SAMSUNG_SW:I = 0x4

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field private static final CAMERA_FACE_DETECTION_SW_ONE_EYE:I = 0x2

.field private static final CAMERA_FACE_DETECTION_SW_TWO_EYE:I = 0x3

.field private static final CAMERA_MSG_ALL_MSGS:I = 0xffff

.field private static final CAMERA_MSG_AUTO_PARAMETERS_NOTIFY:I = 0x2000

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHOT_END:I = 0x4000

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final CAMERA_MSG_ZOOM_STEP_NOTIFY:I = 0x1000

.field private static final CARTOON_SHOT_PROGRESS_RENDERING:I = 0xf071

.field private static final CARTOON_SHOT_SELECT_MODE:I = 0x47f

.field private static final CHECK_MARKER_OF_SAMSUNG_DEFINED_CALLBACK_MSGS:I = 0xf000

.field private static final CONTINUOUS_SHOT_CAPTURING_PROGRESSED:I = 0xf031

.field private static final CONTINUOUS_SHOT_CAPTURING_STOPPED:I = 0xf032

.field private static final CONTINUOUS_SHOT_SAVING_COMPLETED:I = 0xf033

.field private static final CONTINUOUS_SHOT_SOUND:I = 0x464

.field private static final CONTINUOUS_SHOT_START_CAPTURE:I = 0x461

.field private static final CONTINUOUS_SHOT_STOP_AND_ENCODING:I = 0x462

.field private static final CONTINUOUS_SHOT_TERMINATE:I = 0x463

.field public static final CPU_EFFECT_APP_SETTINGS_OFFSET:I = 0xa

.field public static final CPU_EFFECT_BASE_OFFSET:I = 0x13f

.field public static final CPU_EFFECT_MAX:I = 0x13

.field public static final CPU_EFFECT_NONE:I = 0x0

.field private static final DEVICE_ORIENTATION:I = 0x5f1

.field private static final DRAMA_SHOT_CAPTURING_PROGRESS:I = 0xf221

.field private static final DRAMA_SHOT_PROGRESS_POSTPROCESSING:I = 0xf222

.field private static final FACE_DETECTION_HINT:I = 0x4a7

.field public static final FUNCTION_CALL_CAMERA_CONTINOUS_AUTO_FOCUS_MSG:I = 0x64

.field private static final GOLF_SHOT_CAPTURED:I = 0xf195

.field private static final GOLF_SHOT_CREATING_RESULT_COMPLETED:I = 0xf193

.field private static final GOLF_SHOT_CREATING_RESULT_PROGRESS:I = 0xf192

.field private static final GOLF_SHOT_CREATING_RESULT_STARTED:I = 0xf191

.field private static final GOLF_SHOT_ERROR:I = 0xf196

.field private static final GOLF_SHOT_SAVE:I = 0x521

.field private static final GOLF_SHOT_SAVE_RESULT_PROGRESS:I = 0xf194

.field private static final GOLF_SHOT_START:I = 0x51f

.field private static final GOLF_SHOT_STOP:I = 0x520

.field private static final HAL_AE_AWB_LOCK_UNLOCK:I = 0x5dd

.field private static final HAL_AF_LAMP_CONTROL:I = 0x613

.field private static final HAL_CANCEL_AF_FOCUS_AREA:I = 0x611

.field private static final HAL_CAPTURE_END:I = 0x612

.field private static final HAL_DISABLE_POSTVIEW_TO_OVERLAY:I = 0x5e5

.field private static final HAL_DONE_CHK_DATALINE:I = 0xf002

.field private static final HAL_FACE_DETECT_LOCK_UNLOCK:I = 0x5de

.field private static final HAL_MSG_OBJ_TRACKING:I = 0xf001

.field private static final HAL_OBJECT_POSITION:I = 0x5df

.field private static final HAL_OBJECT_TRACKING_STARTSTOP:I = 0x5e0

.field private static final HAL_SEND_FACE_ORIENTATION:I = 0x5fa

.field private static final HAL_SET_DEFAULT_IMEI:I = 0x5e3

.field private static final HAL_SET_FLASH_CHARGING_STATUS:I = 0x614

.field private static final HAL_SET_FRONT_SENSOR_MIRROR:I = 0x5e6

.field private static final HAL_SET_SAMSUNG_CAMERA:I = 0x5e4

.field private static final HAL_SET_ZOOM_STEP:I = 0x615

.field private static final HAL_START_CONTINUOUS_AF:I = 0x60f

.field private static final HAL_START_FACEZOOM:I = 0x5fb

.field private static final HAL_STOP_CHK_DATALINE:I = 0x5e2

.field private static final HAL_STOP_CONTINUOUS_AF:I = 0x610

.field private static final HAL_STOP_FACEZOOM:I = 0x5fc

.field private static final HAL_TOUCH_AF_STARTSTOP:I = 0x5e1

.field private static final HDR_PICTURE_MODE_CHANGE:I = 0x50d

.field private static final HDR_SHOT_ALL_PROGRESS_COMPLETED:I = 0xf084

.field private static final HDR_SHOT_MODE_CHANGE:I = 0x4f7

.field private static final HDR_SHOT_RESULT_COMPLETED:I = 0xf083

.field private static final HDR_SHOT_RESULT_PROGRESS:I = 0xf082

.field private static final HDR_SHOT_RESULT_STARTED:I = 0xf081

.field private static final HDR_SHOT_YUV_MODE_CHANGE:I = 0x4f8

.field private static final HDR_SHOT_YUV_STRING:I = 0xf085

.field private static final LOW_LIGHT_SHOT_SET:I = 0x4f0

.field private static final MAGICFRAME_SHOT_PROGRESS_RENDERING:I = 0xf131

.field private static final MAGICFRAME_SHOT_SET_TEMPLATE:I = 0x4bb

.field private static final MULTIPLE_MAINJPEG_COUNT:I = 0x4d9

.field private static final MULTI_FRAME_SHOT_CAPTURE:I = 0x4ee

.field private static final MULTI_FRAME_SHOT_CAPTURING_PROGRESSED:I = 0xf121

.field private static final MULTI_FRAME_SHOT_CAPTURING_STOPPED:I = 0xf122

.field private static final MULTI_FRAME_SHOT_PROGRESS_POSTPROCESSING:I = 0xf123

.field private static final MULTI_FRAME_SHOT_START:I = 0x4ed

.field private static final MULTI_FRAME_SHOT_TERMINATE:I = 0x4ef

.field private static final Notify_FIRST_PREVIEW_FRAME_EVENT:I = 0xf171

.field private static final PANORAMA_3D_SHOT_CANCEL:I = 0x496

.field private static final PANORAMA_3D_SHOT_CAPTURED:I = 0xf115

.field private static final PANORAMA_3D_SHOT_CAPTURED_MAX_FRAMES:I = 0xf119

.field private static final PANORAMA_3D_SHOT_CAPTURED_NEW:I = 0xf113

.field private static final PANORAMA_3D_SHOT_DIR:I = 0xf116

.field private static final PANORAMA_3D_SHOT_ERR:I = 0xf111

.field private static final PANORAMA_3D_SHOT_FINALIZE:I = 0x495

.field private static final PANORAMA_3D_SHOT_LIVE_PREVIEW_DATA:I = 0xf118

.field private static final PANORAMA_3D_SHOT_LOW_RESOLUTION_DATA:I = 0xf117

.field private static final PANORAMA_3D_SHOT_MPO_DATA:I = 0xf120

.field private static final PANORAMA_3D_SHOT_PROGRESS_STITCHING:I = 0xf114

.field private static final PANORAMA_3D_SHOT_RECT_CENTER_POINT:I = 0xf112

.field private static final PANORAMA_3D_SHOT_SHUTTER_START:I = 0x497

.field private static final PANORAMA_3D_SHOT_SHUTTER_STOP:I = 0x498

.field private static final PANORAMA_3D_SHOT_START:I = 0x493

.field private static final PANORAMA_3D_SHOT_STOP:I = 0x494

.field public static final PANORAMA_DIRECTION_DOWN:I = 0x8

.field public static final PANORAMA_DIRECTION_DOWN_LEFT:I = 0xa

.field public static final PANORAMA_DIRECTION_DOWN_RIGHT:I = 0x9

.field public static final PANORAMA_DIRECTION_LEFT:I = 0x2

.field public static final PANORAMA_DIRECTION_RIGHT:I = 0x1

.field public static final PANORAMA_DIRECTION_UP:I = 0x4

.field public static final PANORAMA_DIRECTION_UP_LEFT:I = 0x6

.field public static final PANORAMA_DIRECTION_UP_RIGHT:I = 0x5

.field private static final PANORAMA_SHOT_CANCEL:I = 0x45a

.field private static final PANORAMA_SHOT_CAPTURED:I = 0xf025

.field private static final PANORAMA_SHOT_CAPTURED_MAX_FRAMES:I = 0xf029

.field private static final PANORAMA_SHOT_CAPTURED_NEW:I = 0xf023

.field private static final PANORAMA_SHOT_DIR:I = 0xf026

.field private static final PANORAMA_SHOT_ERR:I = 0xf021

.field private static final PANORAMA_SHOT_FINALIZE:I = 0x459

.field private static final PANORAMA_SHOT_LIVE_PREVIEW_DATA:I = 0xf028

.field private static final PANORAMA_SHOT_LOW_RESOLUTION_DATA:I = 0xf027

.field private static final PANORAMA_SHOT_PROGRESS_STITCHING:I = 0xf024

.field private static final PANORAMA_SHOT_RECT_CENTER_POINT:I = 0xf022

.field private static final PANORAMA_SHOT_SHUTTER_START:I = 0x45b

.field private static final PANORAMA_SHOT_SHUTTER_STOP:I = 0x45c

.field private static final PANORAMA_SHOT_START:I = 0x457

.field private static final PANORAMA_SHOT_STOP:I = 0x458

.field private static final PET_DET_RECT:I = 0xf182

.field private static final PET_DET_SUCCESS:I = 0xf181

.field private static final PHOTOGRAPHER_SHOT_DETECTION_CHANGED:I = 0xf211

.field private static final PHOTOGRAPHER_SHOT_DETECTION_RIGHT_BOTTOM:I = 0x52c

.field private static final PHOTOGRAPHER_SHOT_DETECTION_START:I = 0x529

.field private static final PHOTOGRAPHER_SHOT_DETECTION_STOP:I = 0x52a

.field private static final PHOTOGRAPHER_SHOT_SET_DETECTION_LEFT_TOP:I = 0x52b

.field private static final PIP_SHOT_INITIALIZE:I = 0x4c8

.field private static final PIP_SHOT_PROGRESS_RENDERING:I = 0xf141

.field private static final PIP_SHOT_SET_BACKGROUND:I = 0x4c5

.field private static final PIP_SHOT_SET_FRAME_POSITION:I = 0x4c6

.field private static final PIP_SHOT_SET_FRAME_SIZE:I = 0x4c7

.field private static final PIP_SHOT_SET_RESOLUTION:I = 0x4c9

.field private static final RECORDING_TAKE_PICTURE:I = 0x4b1

.field private static final SAMSUNG_SHOT_COMPRESSED_IMAGE:I = 0xf201

.field private static final SET_CPU_EFFECT:I = 0x50b

.field private static final SET_CPU_EFFECT_OPTION:I = 0x50c

.field private static final SET_DISPLAY_ORIENTATION_MIRROR:I = 0x5e7

.field private static final SET_ENABLE_SHUTTER_SOUND:I = 0x605

.field private static final SET_RECORDING_TAKE_PICTURE_CALLBACK:I = 0x4b2

.field private static final SET_SHUTTER_SOUND_VOLUME_LEVEL:I = 0x606

.field private static final SHOT_3D_PANORAMA:I = 0x3fc

.field private static final SHOT_3D_SINGLE:I = 0x3fb

.field private static final SHOT_ACTION:I = 0x3f2

.field private static final SHOT_ADDME:I = 0x3f1

.field private static final SHOT_AUTO:I = 0x406

.field private static final SHOT_BEAUTY:I = 0x3ef

.field private static final SHOT_BEST:I = 0x400

.field private static final SHOT_BESTGROUP:I = 0x401

.field private static final SHOT_BUDDY_PHOTOSHARING:I = 0x3fa

.field private static final SHOT_BURST:I = 0x3f9

.field private static final SHOT_CARTOON:I = 0x3f5

.field private static final SHOT_CONTINUOUS:I = 0x3e9

.field private static final SHOT_DRAMA:I = 0x407

.field private static final SHOT_FACESHOT:I = 0x3f8

.field private static final SHOT_FRAME:I = 0x3ed

.field private static final SHOT_GOLF:I = 0x404

.field private static final SHOT_HDR:I = 0x3f6

.field private static final SHOT_MAGICFRAME:I = 0x3fd

.field private static final SHOT_MOSAIC:I = 0x3ec

.field private static final SHOT_MULTI_FRAME:I = 0x3ff

.field private static final SHOT_PANORAMA:I = 0x3ea

.field private static final SHOT_PARTY:I = 0x3f4

.field private static final SHOT_PETDET:I = 0x403

.field private static final SHOT_PHOTOGRAPHER:I = 0x405

.field private static final SHOT_PIP:I = 0x3fe

.field private static final SHOT_SELF:I = 0x3ee

.field private static final SHOT_SHARESHOT:I = 0x3f7

.field private static final SHOT_SINGLE:I = 0x3e8

.field private static final SHOT_SMILE:I = 0x3eb

.field private static final SHOT_STOPMOTION:I = 0x3f3

.field private static final SHOT_THEME:I = 0x408

.field private static final SHOT_VINTAGE:I = 0x3f0

.field private static final SIM3DPHOTO_SHOT_MPO_DATA:I = 0xf102

.field private static final SIM3DPHOTO_SHOT_PROGRESS_RENDERING:I = 0xf101

.field private static final SINGLE_SHOT_LAST_PREVIEW_FRAME:I = 0xf161

.field private static final SMILE_SHOT_DETECTION_REINIT:I = 0x44f

.field private static final SMILE_SHOT_DETECTION_START:I = 0x44d

.field private static final SMILE_SHOT_DETECTION_STOP:I = 0x44e

.field private static final SMILE_SHOT_DETECTION_SUCCESS:I = 0xf061

.field private static final SMILE_SHOT_FACE_RECT:I = 0xf062

.field private static final SMILE_SHOT_SMILE_RECT:I = 0xf063

.field private static final START_COPY_LAST_PREVIEW_DATA:I = 0x501

.field private static final START_PETDET:I = 0x515

.field private static final STOP_COPY_LAST_PREVIEW_DATA:I = 0x502

.field private static final STOP_PETDET:I = 0x516

.field private static final TAG:Ljava/lang/String; = "SecCamera-JNI-Java"

.field private static final THEME_SHOT_CAPTURE:I = 0x533

.field private static final THEME_SHOT_MASK_SET:I = 0xf231


# instance fields
.field private mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

.field private mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

.field private mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

.field private mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

.field private mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

.field private mNativeContext:I

.field private mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

.field private mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

.field private mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

.field private mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

.field private mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

.field private mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

.field private mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

.field private mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

.field private mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

.field private mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

.field private mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

.field private mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

.field private mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

.field private mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

.field private mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

.field private mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

.field private mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

.field private mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

.field private mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

.field private mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

.field private mOneShot:Z

.field private mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

.field private mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

.field private mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

.field private mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

.field private mWithBuffer:Z

.field private mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2936
    const-string v0, "seccamera_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2937
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 570
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    .line 590
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    .line 603
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    .line 617
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    .line 630
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    .line 646
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    .line 657
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    .line 668
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    .line 679
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    .line 692
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    .line 707
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    .line 719
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    .line 730
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    .line 741
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    .line 752
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    .line 763
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    .line 775
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    .line 790
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    .line 801
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    .line 813
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    .line 934
    return-void
.end method

.method constructor <init>(IILandroid/os/Looper;Z)V
    .locals 5
    .parameter "cameraId"
    .parameter "priority"
    .parameter "_looper"
    .parameter "halsettting"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-boolean v4, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 185
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 570
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    .line 590
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    .line 603
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    .line 617
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    .line 630
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    .line 646
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    .line 657
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    .line 668
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    .line 679
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    .line 692
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    .line 707
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    .line 719
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    .line 730
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    .line 741
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    .line 752
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    .line 763
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    .line 775
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    .line 790
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    .line 801
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    .line 813
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    .line 905
    const-string v1, "SecCamera-JNI-Java"

    const-string v2, "SecCamera()"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 908
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 909
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 910
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 911
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 912
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    .line 915
    if-eqz p3, :cond_1

    .line 917
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-direct {v1, p0, p0, p3}, Lcom/sec/android/seccamera/SecCamera$EventHandler;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    .line 926
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_setup(Ljava/lang/Object;II)V

    .line 927
    if-eqz p4, :cond_0

    const/16 v1, 0x5e4

    invoke-virtual {p0, v1, v4, v4}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 928
    :cond_0
    return-void

    .line 918
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_2

    .line 919
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/seccamera/SecCamera$EventHandler;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    goto :goto_0

    .line 920
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 921
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/seccamera/SecCamera$EventHandler;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    goto :goto_0

    .line 923
    :cond_3
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    goto :goto_0
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/seccamera/SecCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_release()V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/seccamera/SecCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/seccamera/SecCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/seccamera/SecCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/seccamera/SecCamera;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/seccamera/SecCamera;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .parameter "callbackBuffer"
    .parameter "msgType"

    .prologue
    .line 1328
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 1330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1334
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->_addCallbackBuffer([BI)V

    .line 1335
    return-void
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static native getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V
.end method

.method public static getEmptyParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;
    .locals 3

    .prologue
    .line 2949
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera;-><init>()V

    .line 2950
    .local v0, camera:Lcom/sec/android/seccamera/SecCamera;
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$1;)V

    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;II)V
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Lcom/sec/android/seccamera/SecCamera;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 891
    invoke-static {}, Landroid/hardware/Camera;->checkCameraEnabled()Z

    .line 893
    invoke-static {}, Lcom/sec/android/seccamera/SecCamera;->getNumberOfCameras()I

    move-result v2

    .line 894
    .local v2, numberOfCameras:I
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 895
    .local v0, cameraInfo:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 896
    invoke-static {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 897
    iget v3, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 898
    new-instance v3, Lcom/sec/android/seccamera/SecCamera;

    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-direct {v3, v1, v5, v4, v6}, Lcom/sec/android/seccamera/SecCamera;-><init>(IILandroid/os/Looper;Z)V

    .line 901
    :goto_1
    return-object v3

    .line 895
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 901
    goto :goto_1
.end method

.method public static open(I)Lcom/sec/android/seccamera/SecCamera;
    .locals 4
    .parameter "cameraId"

    .prologue
    .line 852
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "SecCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-static {}, Landroid/hardware/Camera;->checkCameraEnabled()Z

    .line 856
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;-><init>(IILandroid/os/Looper;Z)V

    return-object v0
.end method

.method public static open(II)Lcom/sec/android/seccamera/SecCamera;
    .locals 3
    .parameter "cameraId"
    .parameter "priority"

    .prologue
    .line 860
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "SecCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-static {}, Landroid/hardware/Camera;->checkCameraEnabled()Z

    .line 864
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/sec/android/seccamera/SecCamera;-><init>(IILandroid/os/Looper;Z)V

    return-object v0
.end method

.method public static open(IILandroid/os/Looper;)Lcom/sec/android/seccamera/SecCamera;
    .locals 2
    .parameter "cameraId"
    .parameter "priority"
    .parameter "looper"

    .prologue
    .line 868
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "SecCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {}, Landroid/hardware/Camera;->checkCameraEnabled()Z

    .line 872
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sec/android/seccamera/SecCamera;-><init>(IILandroid/os/Looper;Z)V

    return-object v0
.end method

.method public static open(IILandroid/os/Looper;Z)Lcom/sec/android/seccamera/SecCamera;
    .locals 2
    .parameter "cameraId"
    .parameter "priority"
    .parameter "looper"
    .parameter "halsetting"

    .prologue
    .line 876
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "SecCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {}, Landroid/hardware/Camera;->checkCameraEnabled()Z

    .line 880
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/seccamera/SecCamera;-><init>(IILandroid/os/Looper;Z)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .parameter "camera_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1771
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera;

    .line 1772
    .local v0, c:Lcom/sec/android/seccamera/SecCamera;
    if-nez v0, :cond_1

    .line 1791
    :cond_0
    :goto_0
    return-void

    .line 1775
    :cond_1
    iget-object v3, v0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    if-eqz v3, :cond_3

    .line 1776
    iget-object v3, v0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1777
    .local v2, m:Landroid/os/Message;
    iget v3, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/os/Message;->arg2:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    .line 1778
    const/4 v1, 0x0

    .line 1779
    .local v1, cb:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    iget-object v4, v0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1780
    :try_start_0
    iget-object v1, v0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    .line 1781
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    if-eqz v1, :cond_0

    .line 1783
    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3, v0}, Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;->onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V

    goto :goto_0

    .line 1781
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1786
    .end local v1           #cb:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    :cond_2
    iget-object v3, v0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1789
    .end local v2           #m:Landroid/os/Message;
    :cond_3
    const-string v3, "SecCamera-JNI-Java"

    const-string v4, "mEventHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZZ)V
.end method

.method private final native setPreviewDisplay(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 1279
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->_addCallbackBuffer([BI)V

    .line 1280
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 1322
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->addCallbackBuffer([BI)V

    .line 1323
    return-void
.end method

.method public final autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1870
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1871
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    .line 1872
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1873
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_autoFocus()V

    .line 1874
    return-void

    .line 1872
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancel3DPanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2648
    const/16 v0, 0x496

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2649
    return-void
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1889
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_cancelAutoFocus()V

    .line 1905
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1906
    return-void
.end method

.method public cancelCaptureAddMeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2769
    const/16 v0, 0x479

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2770
    return-void
.end method

.method public cancelPanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2626
    const/16 v0, 0x45a

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2627
    return-void
.end method

.method public cancelSeriesActionShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2744
    const/16 v0, 0x46e

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2745
    return-void
.end method

.method public captureBurstShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2723
    const/16 v0, 0x48a

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2724
    return-void
.end method

.method public captureMultiFrameShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2785
    const/16 v0, 0x4ee

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2786
    return-void
.end method

.method public captureThemeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2928
    const/16 v0, 0x533

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2929
    return-void
.end method

.method public doSnapAddMeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2765
    const/16 v0, 0x478

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2766
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_release()V

    .line 938
    return-void
.end method

.method public finishActionShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2748
    const/16 v0, 0x470

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2749
    return-void
.end method

.method public finishAddMeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2773
    const/16 v0, 0x47a

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2774
    return-void
.end method

.method public getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;
    .locals 3

    .prologue
    .line 2448
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$1;)V

    .line 2449
    .local v0, p:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2450
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2451
    return-object v0
.end method

.method public informFaceOrientationToHAL(I)V
    .locals 3
    .parameter "faceorientation"

    .prologue
    .line 2866
    const/4 v0, 0x0

    .line 2867
    .local v0, IsLandscape:I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 2868
    :cond_0
    const/4 v0, 0x0

    .line 2875
    :goto_0
    const/16 v1, 0x5fa

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2876
    :goto_1
    return-void

    .line 2869
    :cond_1
    if-eqz p1, :cond_2

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_3

    .line 2870
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2872
    :cond_3
    const-string v1, "SecCamera-JNI-Java"

    const-string v2, "unknown face orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initializeActionShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2728
    const/16 v0, 0x46b

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2729
    return-void
.end method

.method public initializeAddMeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2753
    const/16 v0, 0x475

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2754
    return-void
.end method

.method public initializePIPShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2678
    const/16 v0, 0x4c8

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2679
    return-void
.end method

.method public final native lock()V
.end method

.method public lockFaceDetect()V
    .locals 3

    .prologue
    .line 2810
    const/16 v0, 0x5de

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2811
    return-void
.end method

.method public final native native_sendcommand(III)V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final recordingTakePicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2047
    const/16 v0, 0x4b1

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2048
    return-void
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_release()V

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 952
    return-void
.end method

.method public saveGolfShot(I)V
    .locals 2
    .parameter "Storage"

    .prologue
    .line 2920
    const/16 v0, 0x521

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2921
    return-void
.end method

.method public final sendFaceDetectionHint(I)V
    .locals 2
    .parameter "last"

    .prologue
    .line 2271
    const/16 v0, 0x4a7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2272
    return-void
.end method

.method public setAEAWBLockState(II)V
    .locals 1
    .parameter "ae_lockunlock"
    .parameter "awb_lockunlock"

    .prologue
    .line 2798
    const/16 v0, 0x5dd

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2799
    return-void
.end method

.method public final setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1942
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    .line 1943
    return-void
.end method

.method public setAutoFocusMoveCallback(Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

    .line 1935
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->enableFocusMoveCallback(I)V

    .line 1936
    return-void

    .line 1935
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBurstShotStoring()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2719
    const/16 v0, 0x489

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2720
    return-void
.end method

.method public setCPUEffect(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/16 v2, 0x50b

    const/4 v1, 0x0

    .line 2899
    if-nez p1, :cond_1

    .line 2900
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2904
    :cond_0
    :goto_0
    return-void

    .line 2901
    :cond_1
    const/16 v0, 0x13

    if-gt p1, v0, :cond_0

    .line 2902
    add-int/lit16 v0, p1, 0x13f

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setChkDataLineListener(Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    .line 683
    return-void
.end method

.method public setContinuousShotSound(I)V
    .locals 2
    .parameter "sound"

    .prologue
    const/16 v1, 0x464

    const/4 v0, 0x0

    .line 2695
    if-lez p1, :cond_0

    .line 2696
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2700
    :goto_0
    return-void

    .line 2698
    :cond_0
    invoke-virtual {p0, v1, v0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setDefaultIMEI(I)V
    .locals 2
    .parameter "bIsDefaultIMEI"

    .prologue
    .line 2838
    const/16 v0, 0x5e3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2839
    return-void
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 2423
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    .line 2424
    return-void
.end method

.method public final setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2199
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    .line 2200
    return-void
.end method

.method public setFaceRetouchLevel(I)V
    .locals 2
    .parameter "retouchLevel"

    .prologue
    .line 2794
    const/16 v0, 0x49d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2795
    return-void
.end method

.method public setFrontSensorMirror(ZI)V
    .locals 4
    .parameter "mirror"
    .parameter "orientation"

    .prologue
    const/16 v3, 0x5e7

    const/16 v2, 0x5e6

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2843
    if-eqz p1, :cond_0

    .line 2844
    invoke-virtual {p0, v2, v1, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2845
    invoke-virtual {p0, v3, p2, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2850
    :goto_0
    return-void

    .line 2847
    :cond_0
    invoke-virtual {p0, v2, v0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2848
    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setHDRModeLevel(I)V
    .locals 2
    .parameter "Level"

    .prologue
    .line 2802
    const/16 v0, 0x4f7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2803
    return-void
.end method

.method public setHDRYuvMode(Z)V
    .locals 3
    .parameter "isYUV"

    .prologue
    const/16 v2, 0x4f8

    const/4 v1, 0x0

    .line 2907
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2909
    :goto_0
    return-void

    .line 2908
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setLowLightShot(I)V
    .locals 2
    .parameter "set"

    .prologue
    .line 2777
    const/16 v0, 0x4f0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2778
    return-void
.end method

.method public setMagicFrameTemplate(I)V
    .locals 2
    .parameter "templateId"

    .prologue
    const/16 v1, 0x4bb

    const/4 v0, 0x0

    .line 2653
    if-ltz p1, :cond_0

    .line 2654
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2658
    :goto_0
    return-void

    .line 2656
    :cond_0
    invoke-virtual {p0, v1, v0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setObjectTrackingMsgListener(Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 671
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    .line 672
    return-void
.end method

.method public setObjectTrackingPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2818
    const/16 v0, 0x5df

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2819
    return-void
.end method

.method public setOn3DPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    .line 594
    return-void
.end method

.method public setOnActionShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 649
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    .line 650
    return-void
.end method

.method public setOnAddMeEventListener(Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 633
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    .line 634
    return-void
.end method

.method public setOnBurstShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 620
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    .line 621
    return-void
.end method

.method public setOnCartoonShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 660
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    .line 661
    return-void
.end method

.method public setOnContinuousShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    .line 607
    return-void
.end method

.method public setOnDramaShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnDramaShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;

    .line 805
    return-void
.end method

.method public setOnGolfShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    .line 794
    return-void
.end method

.method public setOnHDRShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 710
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    .line 711
    return-void
.end method

.method public setOnMagicFrameShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 733
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    .line 734
    return-void
.end method

.method public setOnMultiFrameShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 755
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    .line 756
    return-void
.end method

.method public setOnNotifyFirstPreviewFrameEventListener(Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    .line 767
    return-void
.end method

.method public setOnPIPShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    .line 745
    return-void
.end method

.method public setOnPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 573
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    .line 574
    return-void
.end method

.method public setOnPetDetectionListener(Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 778
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    .line 779
    return-void
.end method

.method public setOnPhotoGrapherDetectionListener(Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 816
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    .line 817
    return-void
.end method

.method public setOnSIM3DPhotoShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 722
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    .line 723
    return-void
.end method

.method public setOnSmileShotDetectionSuccessListener(Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    .line 696
    return-void
.end method

.method public final setOneShotPreviewCallback(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1195
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1196
    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 1197
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 1198
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V

    .line 1199
    return-void

    :cond_0
    move v0, v1

    .line 1198
    goto :goto_0
.end method

.method public setPIPBackground(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    const/16 v2, 0x4c5

    const/4 v1, 0x0

    .line 2662
    if-eqz p1, :cond_0

    .line 2663
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2667
    :goto_0
    return-void

    .line 2665
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setPIPFramePosition(II)V
    .locals 1
    .parameter "left"
    .parameter "top"

    .prologue
    .line 2670
    const/16 v0, 0x4c6

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2671
    return-void
.end method

.method public setPIPFrameSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2674
    const/16 v0, 0x4c7

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2675
    return-void
.end method

.method public setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 2437
    invoke-virtual {p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_setParameters(Ljava/lang/String;)V

    .line 2438
    return-void
.end method

.method public setPhotoGrapherDetectionArea(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2594
    const/16 v0, 0x52b

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2595
    const/16 v0, 0x52c

    invoke-virtual {p0, v0, p3, p4}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2596
    return-void
.end method

.method public setPictureMode(I)V
    .locals 2
    .parameter "picMode"

    .prologue
    .line 2806
    const/16 v0, 0x50d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2807
    return-void
.end method

.method public final setPreviewCallback(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 1172
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1173
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 1174
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 1177
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V

    .line 1178
    return-void

    :cond_0
    move v0, v1

    .line 1177
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1231
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1232
    iput-boolean v2, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 1233
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 1234
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V

    .line 1235
    return-void

    :cond_0
    move v0, v2

    .line 1234
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBufferNoDisable(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1238
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1239
    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 1240
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 1241
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V

    .line 1242
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1035
    if-eqz p1, :cond_0

    .line 1036
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1040
    :goto_0
    return-void

    .line 1038
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setRecordingTakePictureCallback(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .locals 2
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    const/4 v1, 0x0

    .line 2052
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 2053
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2054
    iput-object p3, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2055
    iput-object p4, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2056
    const/16 v0, 0x4b2

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2057
    return-void
.end method

.method public setResolutionActionShot(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2732
    const/16 v0, 0x46c

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2733
    return-void
.end method

.method public setShootingMode(I)V
    .locals 2
    .parameter "shootingMode"

    .prologue
    const/4 v1, 0x0

    .line 2455
    add-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2456
    return-void
.end method

.method public setShootingMode(III)V
    .locals 1
    .parameter "shootingMode"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2459
    add-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2460
    return-void
.end method

.method public setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 2568
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 2569
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2571
    iput-object p3, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2572
    return-void
.end method

.method public setShutterSoundEnable(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    const/16 v2, 0x605

    const/4 v1, 0x0

    .line 2463
    if-eqz p1, :cond_0

    .line 2464
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2467
    :goto_0
    return-void

    .line 2466
    :cond_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public setThemeMask(I)V
    .locals 2
    .parameter "mask"

    .prologue
    .line 2924
    const v0, 0xf231

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2925
    return-void
.end method

.method public setWBCustomValue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2888
    const/16 v0, 0x4cf

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2889
    return-void
.end method

.method public final setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    .line 2173
    return-void
.end method

.method public start3DPanorama(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2631
    if-eqz p1, :cond_0

    .line 2632
    const/16 v0, 0x493

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2636
    :goto_0
    return-void

    .line 2634
    :cond_0
    const/16 v0, 0x494

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public start3DShutterSound(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2640
    if-eqz p1, :cond_0

    .line 2641
    const/16 v0, 0x497

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2645
    :goto_0
    return-void

    .line 2643
    :cond_0
    const/16 v0, 0x498

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public startBurstShot(ZZI)V
    .locals 3
    .parameter "start"
    .parameter "bestpic"
    .parameter "storage"

    .prologue
    const/16 v2, 0x48b

    const/4 v1, 0x0

    .line 2704
    if-eqz p1, :cond_1

    .line 2705
    if-eqz p2, :cond_0

    .line 2706
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2712
    :goto_0
    return-void

    .line 2708
    :cond_0
    invoke-virtual {p0, v2, v1, p3}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0

    .line 2710
    :cond_1
    const/16 v0, 0x48c

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public startCaptureAddMeShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2757
    const/16 v0, 0x476

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2758
    return-void
.end method

.method public startContinuousAF()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2879
    const/16 v0, 0x60f

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2880
    return-void
.end method

.method public startContinuousShot(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2683
    if-eqz p1, :cond_0

    .line 2684
    const/16 v0, 0x461

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2688
    :goto_0
    return-void

    .line 2686
    :cond_0
    const/16 v0, 0x462

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 2235
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2236
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2238
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    .line 2239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2240
    return-void
.end method

.method public final startFaceDetectionSW()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2243
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2246
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    .line 2247
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2248
    return-void
.end method

.method public final startFaceDetectionSW_ForFaceService(Z)V
    .locals 2
    .parameter "needOneEye"

    .prologue
    .line 2259
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2260
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2262
    :cond_0
    if-eqz p1, :cond_1

    .line 2263
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    .line 2266
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2267
    return-void

    .line 2265
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    goto :goto_0
.end method

.method public startFaceZoom(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2854
    const/16 v0, 0x5fb

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2855
    return-void
.end method

.method public startGolfShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2912
    const/16 v0, 0x51f

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2913
    return-void
.end method

.method public startMultiFrameShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2781
    const/16 v0, 0x4ed

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2782
    return-void
.end method

.method public startObjectTracking()V
    .locals 3

    .prologue
    .line 2822
    const/16 v0, 0x5e0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2823
    return-void
.end method

.method public startPanorama(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2609
    if-eqz p1, :cond_0

    .line 2610
    const/16 v0, 0x457

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2614
    :goto_0
    return-void

    .line 2612
    :cond_0
    const/16 v0, 0x458

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public startPetDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2600
    const/16 v0, 0x515

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2601
    return-void
.end method

.method public startPhotoGrapherDetection(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2585
    if-eqz p1, :cond_0

    .line 2586
    const/16 v0, 0x529

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2590
    :goto_0
    return-void

    .line 2588
    :cond_0
    const/16 v0, 0x52a

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public final native startPreview()V
.end method

.method public final startSamsungFaceDetectionSW()V
    .locals 2

    .prologue
    .line 2251
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2252
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2254
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    .line 2255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2256
    return-void
.end method

.method public startSeriesActionShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2736
    const/16 v0, 0x46d

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2737
    return-void
.end method

.method public startShutterSound(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2618
    if-eqz p1, :cond_0

    .line 2619
    const/16 v0, 0x45b

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2623
    :goto_0
    return-void

    .line 2621
    :cond_0
    const/16 v0, 0x45c

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public startSmileDetection(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 2576
    if-eqz p1, :cond_0

    .line 2577
    const/16 v0, 0x44d

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2581
    :goto_0
    return-void

    .line 2579
    :cond_0
    const/16 v0, 0x44e

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_0
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public startTouchAutoFocus()V
    .locals 3

    .prologue
    .line 2830
    const/16 v0, 0x5e1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2831
    return-void
.end method

.method public stopContinuousAF()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2883
    const/16 v0, 0x610

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2884
    return-void
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 2279
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->_stopFaceDetection()V

    .line 2280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2281
    return-void
.end method

.method public stopFaceZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2859
    const/16 v0, 0x5fc

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2860
    return-void
.end method

.method public stopGolfShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2916
    const/16 v0, 0x520

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2917
    return-void
.end method

.method public stopObjectTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2826
    const/16 v0, 0x5e0

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2827
    return-void
.end method

.method public stopPetDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2604
    const/16 v0, 0x516

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2605
    return-void
.end method

.method public final stopPreview()V
    .locals 2

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->_stopPreview()V

    .line 1131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 1133
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    return-void
.end method

.method public stopSeriesActionShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2740
    const/16 v0, 0x46f

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2741
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public stopTouchAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2834
    const/16 v0, 0x5e1

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2835
    return-void
.end method

.method public switchPositionAddMeShot(I)V
    .locals 2
    .parameter "setLeft"

    .prologue
    .line 2761
    const/16 v0, 0x477

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2762
    return-void
.end method

.method public final takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 1986
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 1987
    return-void
.end method

.method public final takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .locals 2
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 2022
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2023
    iput-object p3, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2024
    iput-object p4, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 2027
    const/4 v0, 0x0

    .line 2028
    .local v0, msgType:I
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 2029
    or-int/lit8 v0, v0, 0x2

    .line 2031
    :cond_0
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    if-eqz v1, :cond_1

    .line 2032
    or-int/lit16 v0, v0, 0x80

    .line 2034
    :cond_1
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    if-eqz v1, :cond_2

    .line 2035
    or-int/lit8 v0, v0, 0x40

    .line 2037
    :cond_2
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    if-eqz v1, :cond_3

    .line 2038
    or-int/lit16 v0, v0, 0x100

    .line 2041
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_takePicture(I)V

    .line 2042
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 2043
    return-void
.end method

.method public terminateBurstShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2715
    const/16 v0, 0x48d

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2716
    return-void
.end method

.method public terminateContinuousShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2691
    const/16 v0, 0x463

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2692
    return-void
.end method

.method public terminateMultiFrameShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2789
    const/16 v0, 0x4ef

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2790
    return-void
.end method

.method public final native unlock()V
.end method

.method public unlockFaceDetect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2814
    const/16 v0, 0x5de

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2815
    return-void
.end method
