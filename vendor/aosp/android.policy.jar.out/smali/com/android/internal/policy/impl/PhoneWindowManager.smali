.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_TOUCH_CAPTURE_BTN:Ljava/lang/String; = "android.intent.action.TOUCH_CAPTURE_BTN"

.field static final APPLICATION_LAYER:I = 0x2

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field static final BOOT_PROGRESS_LAYER:I = 0x18

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field private static final DOWN_LOWLV:I = 0x2

.field static final DRAG_LAYER:I = 0x16

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_MIRRORLINK_DOCK_HOME_CAPTURE:Z = true

.field static final HIDDEN_NAV_CONSUMER_LAYER:I = 0x1a

.field private static final HIDE_DELAY:J = 0xbb8L

.field static final INPUT_METHOD_DIALOG_LAYER:I = 0xa

.field static final INPUT_METHOD_LAYER:I = 0x9

.field static final KEYGUARD_DIALOG_LAYER:I = 0xc

.field static final KEYGUARD_LAYER:I = 0xb

.field static final LONG_PRESS_HOME_ASSIST_ACTION:I = 0x3

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_DIALOG:I = 0x1

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x2

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final MINI_APP_DIALOG_LAYER:I = 0x5

.field static final MINI_APP_LAYER:I = 0x3

.field static final MINI_APP_ON_KEYGUARD_DIALOG_LAYER:I = 0xd

.field static final MINI_APP_ON_KEYGUARD_LAYER:I = 0xc

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_ENABLE_SPEN_GESTURE:I = 0x5

.field static final MULTI_WINDOW_EXTRA_LAYER:I = 0x4

.field static final MULTI_WINDOW_TRAY_LAYER:I = 0x5

.field static final NAVIGATION_BAR_LAYER:I = 0x13

.field static final NAVIGATION_BAR_PANEL_LAYER:I = 0x14

.field private static final NOTHING:I = 0x0

.field static final PHONE_LAYER:I = 0x3

.field static final POINTER_LAYER:I = 0x19

.field static final PRINT_ANIM:Z = false

.field static final PRIORITY_PHONE_LAYER:I = 0x7

.field static final RECENT_APPS_BEHAVIOR_DISMISS:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x3

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final SAFE_DEBUG:Z = false

.field private static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field private static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field private static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field static final SCREENSAVER_LAYER:I = 0xd

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SCREEN_ON_BY_CAMERAKEY:I = 0x3ea

.field static final SCREEN_ON_BY_FAKE_BOOT_UP:I = 0x3eb

.field static final SCREEN_ON_BY_OTHERS:I = 0x3ec

.field static final SCREEN_ON_BY_PWRKEY:I = 0x3e9

.field static final SCREEN_ON_BY_UNKNOWN:I = -0x1

.field static final SEARCH_BAR_LAYER:I = 0x4

.field static final SECURE_SYSTEM_OVERLAY_LAYER:I = 0x17

.field static final SEPARATE_TIMEOUT_FOR_SCREEN_SAVER:Z = false

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field static final STATUS_BAR_LAYER:I = 0xf

.field static final STATUS_BAR_OVERLAY_LAYER:I = 0x15

.field static final STATUS_BAR_PANEL_LAYER:I = 0x10

.field static final STATUS_BAR_SUB_PANEL_LAYER:I = 0xe

.field static final SYSTEM_ALERT_LAYER:I = 0x8

.field static final SYSTEM_DIALOG_LAYER:I = 0x5

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_FLASH_BOARD:Ljava/lang/String; = "flashboard"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_ERROR_LAYER:I = 0x15

.field static final SYSTEM_OVERLAY_LAYER:I = 0x12

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = 0xe

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TOAST_LAYER:I = 0x15

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/devices/virtual/torch/torch/torch_ctl"

.field private static final UP_START:I = 0x3

.field static final VOLUME_OVERLAY_LAYER:I = 0x11

.field static final WALLPAPER_LAYER:I = 0x2

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static wasTopFullscreen:Z


# instance fields
.field final MAX_SCREENSHOT_CONNECTION:I

.field final POST_DELAY_TIME:I

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field mAccelerometerDefault:Z

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field final mAllowSystemUiDelay:Ljava/lang/Runnable;

.field mAssistKeyLongPressed:Z

.field mBlockCollapseStatusBar:Z

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCameraLongPress:Ljava/lang/Runnable;

.field mCameraSpecialized:Z

.field mCanHideNavigationBar:Z

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mConsumeBackKeyUp:Z

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCoverCloseRotation:I

.field mCoverOpenedIntent:Landroid/content/Intent;

.field mCoverState:I

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field mDefaultRippleEffect:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:Z

.field mDisplay:Landroid/view/Display;

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field private mDuringShooting:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEnableMultiWindowUISetting:I

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field mExternalDisplayHeight:I

.field mExternalDisplayWidth:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashBoardHeight:I

.field private mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field mForceStatusBar:Z

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHDMIRotationEnable:Z

.field mHandler:Landroid/os/Handler;

.field mHasNavigationBar:Z

.field private mHasSPenUspFeature:Z

.field mHasSoftInput:Z

.field mHasSystemNavBar:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHdmiRotation:I

.field mHeadless:Z

.field mHideLockScreen:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field private mHideWindow:Z

.field private mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

.field private mHomeDomeButton:Z

.field private mHomeDoubleClickBehavior:Z

.field mHomeIntent:Landroid/content/Intent;

.field private mHomeKeyConsumedByScreenRecordChord:Z

.field private mHomeKeyConsumedByScreenshotChord:Z

.field private mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field mHomeLongPressed:Z

.field mHomePressed:Z

.field mIncallPowerBehavior:I

.field private mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mIsHoveringUIEnabled:Z

.field mIsKidsModeEnabled:Z

.field private mIsMultiWindowEnabled:Z

.field private mIsNotifySip:Z

.field private mIsReadingMode:Z

.field private mIsSensorhubEnabled:Z

.field mIsSleepWithCameraOnTop:Z

.field private mIsTablet:Z

.field private mIsVisibleSPenGestureView:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastStatusBarTransparent:Z

.field mLastSystemUiFlags:I

.field mLastTopIsRemoveNavigation:Z

.field mLastTopIsTransparentStatusBar:Z

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnHomeBehavior:I

.field private mLongPressOnHomeEnabled:Z

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMenuLongPress:Ljava/lang/Runnable;

.field mMirrorLinkDockEnablesAccelerometer:Z

.field mMirrorLinkDockIntent:Landroid/content/Intent;

.field mMirrorlinkDockRotation:I

.field mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

.field mMouseConnectedDock:I

.field mMouseDockedFlag:Z

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field private mNeedMove:Z

.field private mOneTouchReportChordEnabled:Z

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;

.field mOrientationSensorEnabled:Z

.field mPenDetachmentAlert:Lcom/android/internal/policy/impl/PenDetachmentAlert;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenState:I

.field mPendingPowerKeyUpCanceled:Z

.field private mPendingThresholdTime:I

.field mPluggedIn:Z

.field mPointerInterceptChannel:Landroid/view/InputChannel;

.field mPointerInterceptInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;

.field mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field private mPowerKeyConsumedByScreenRecordChord:Z

.field private mPowerKeyConsumedByScreenshotChord:Z

.field volatile mPowerKeyHandled:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field private final mPowerLongPressWhenFake:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/LocalPowerManager;

.field mPowerReceiver:Landroid/content/BroadcastReceiver;

.field private mPreMultiWindowArrangemode:I

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mReadingModeAppList:[Ljava/lang/String;

.field private mReadingModeApps:Ljava/lang/String;

.field private mReadingStatus:Z

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mReportWakeLock:Landroid/os/PowerManager$WakeLock;

.field mResettingSystemUiFlags:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mRingtone:Landroid/media/Ringtone;

.field mRippleEffectEnabled:Z

.field private mRotation:I

.field mSPenGestureInputChannel:Landroid/view/InputChannel;

.field mSPenGestureInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;

.field mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

.field mSVoiceComponent:Landroid/content/ComponentName;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mSamsungCustomIntent:Landroid/content/Intent;

.field mSamsungCustomReceiver:Landroid/content/BroadcastReceiver;

.field private mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

.field private mSavedGravityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mScreenCaptureOn:Z

.field mScreenLockTimeout:Ljava/lang/Runnable;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenOnReason:I

.field private mScreenRecordChordEnabled:Z

.field mScreenRecorderReceiver:Landroid/content/BroadcastReceiver;

.field mScreenSaverEnabledByUser:Z

.field mScreenSaverFeatureAvailable:Z

.field mScreenSaverMayRun:Z

.field mScreenSaverTimeout:I

.field private final mScreenrecordChordLongPress:Ljava/lang/Runnable;

.field private mScreenshotChordEnabled:Z

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field final mScreenshotLock:Ljava/lang/Object;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSetIgnoreKeys:Z

.field mSetIgnoreKeysTimeout:J

.field mSetIgnorePowerKey:Z

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mShowLockScreen:Z

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStateGlance:Z

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarOpen:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSweepDirection:I

.field mSystemBooted:Z

.field mSystemBottom:I

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTmpWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopApplicationWindowMode:I

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTorchlightOn:Z

.field mTransparentStatusBar:Z

.field mUiMode:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mUsmEnabled:Z

.field mUsmHomeIntent:Landroid/content/Intent;

.field mVibrator:Landroid/os/SystemVibrator;

.field mVirtualKeyVibePattern:[J

.field mVoiceTalkComponent:Landroid/content/ComponentName;

.field mVoiceTalkDefaultLaunch:Z

.field mVoiceTalkIntent:Landroid/content/Intent;

.field private mVolumeDownKeyConsumedByOneTouchReportChord:Z

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private final mVolumeKeyLongPressforOneTouchReport:Ljava/lang/Runnable;

.field private mVolumeUpKeyConsumedByOneTouchReportChord:Z

.field private mVolumeUpKeyConsumedByScreenRecordChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field mVolumeUpLongPress:Ljava/lang/Runnable;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    .line 384
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 385
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x40

    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 387
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x41

    const-string v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 389
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xcf

    const-string v3, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 391
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd0

    const-string v3, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 393
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd1

    const-string v3, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 395
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd2

    const-string v3, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 805
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 806
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 808
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 809
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 3417
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 5900
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    return-void

    .line 3417
    :array_0
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 411
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 435
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 439
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 442
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 443
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 444
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 445
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 446
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 447
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 448
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 451
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingModeApps:Ljava/lang/String;

    .line 452
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingStatus:Z

    .line 453
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingModeAppList:[Ljava/lang/String;

    .line 454
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsReadingMode:Z

    .line 457
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardHeight:I

    .line 458
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    .line 470
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 471
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 472
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 473
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsTablet:Z

    .line 475
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 476
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    .line 482
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsNotifySip:Z

    .line 483
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideWindow:Z

    .line 484
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNeedMove:Z

    .line 485
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 486
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRotation:I

    .line 487
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreMultiWindowArrangemode:I

    .line 491
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingThresholdTime:I

    .line 494
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDuringShooting:Z

    .line 497
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 503
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 504
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 515
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 516
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenState:I

    .line 517
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:I

    .line 526
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 527
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    .line 528
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 535
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIRotationEnable:Z

    .line 536
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 537
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 540
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 547
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 548
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 549
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 550
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 551
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 552
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 554
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTorchlightOn:Z

    .line 556
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 559
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 571
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 665
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptView:Lcom/android/internal/policy/impl/PointerInterceptView;

    .line 667
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    .line 668
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockCollapseStatusBar:Z

    .line 672
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 680
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z

    .line 756
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSPenUspFeature:Z

    .line 796
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 798
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 801
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 803
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 818
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    .line 819
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsTransparentStatusBar:Z

    .line 846
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkDefaultLaunch:Z

    .line 847
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    .line 848
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDefaultRippleEffect:Z

    .line 849
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRippleEffectEnabled:Z

    .line 850
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStateGlance:Z

    .line 852
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    .line 853
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnReason:I

    .line 867
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSweepDirection:I

    .line 870
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnoreKeys:Z

    .line 871
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnorePowerKey:Z

    .line 872
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowLockScreen:Z

    .line 874
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->POST_DELAY_TIME:I

    .line 884
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    .line 885
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverEnabledByUser:Z

    .line 886
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    .line 898
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 899
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 900
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 901
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 904
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 905
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeEnabled:Z

    .line 908
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClickBehavior:Z

    .line 909
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    .line 944
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureOn:Z

    .line 953
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 986
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    .line 990
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    .line 997
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 1099
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    .line 1337
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressforOneTouchReport:Ljava/lang/Runnable;

    .line 1474
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    .line 1514
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPressWhenFake:Ljava/lang/Runnable;

    .line 1536
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 1629
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 1756
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    .line 1765
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLongPress:Ljava/lang/Runnable;

    .line 1940
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    .line 4439
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowSystemUiDelay:Ljava/lang/Runnable;

    .line 4512
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 6187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 6188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    .line 6189
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    .line 7253
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 7273
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 7284
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 7310
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 7320
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 7370
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenRecorderReceiver:Landroid/content/BroadcastReceiver;

    .line 7385
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$29;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 7930
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 8069
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$38;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$38;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    .line 9027
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVisibleSPenGestureView:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreMultiWindowArrangemode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreMultiWindowArrangemode:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->statusBarBehavior(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsReadingMode:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PhoneWindowManager;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingModeAppList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingStatus:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingStatus:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableSPenGesture()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDuringShooting:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/app/enterprise/EnterpriseDeviceManager;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object p1
.end method

.method private applyLidSwitchState()V
    .locals 3

    .prologue
    .line 8113
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isBuiltInKeyboardVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 8115
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 8116
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/os/LocalPowerManager;->goToSleep(J)V

    .line 8118
    :cond_0
    return-void
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .parameter "sysui"
    .parameter "fl"
    .parameter "r"

    .prologue
    .line 4954
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    .line 4957
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    .line 4958
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4959
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4960
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4961
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 4969
    :cond_3
    :goto_0
    return-void

    .line 4963
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4964
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4965
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4966
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private cancelPendingOneTouchReportChordAction()V
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressforOneTouchReport:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1334
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReportWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReportWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1335
    :cond_0
    return-void
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 1269
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1272
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 1273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 1275
    :cond_1
    return-void
.end method

.method private cancelPendingScreenrecordChordAction()V
    .locals 2

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1463
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1508
    return-void
.end method

.method private changeMPDecision(Z)V
    .locals 0
    .parameter "isTopFullscreen"

    .prologue
    .line 5903
    return-void
.end method

.method private disablePointerLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2662
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    if-eqz v1, :cond_0

    .line 2663
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->dispose()V

    .line 2664
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 2667
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    .line 2668
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 2669
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 2672
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_2

    .line 2673
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2675
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2676
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2678
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_2
    return-void
.end method

.method private enablePointerLocation()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 2634
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_0

    .line 2635
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2636
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 2638
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 2641
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2642
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2646
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2647
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2648
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2650
    .local v1, wm:Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2651
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2653
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "PointerLocationView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 2655
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 2659
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private enableSPenGesture()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 2682
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    if-nez v2, :cond_0

    .line 2683
    new-instance v2, Lcom/android/internal/widget/SPenGestureView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/SPenGestureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    .line 2684
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SPenGestureView;->setVisibility(I)V

    .line 2687
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 2690
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x833

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2691
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2695
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2696
    const-string v2, "SPenGesture"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2697
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2699
    .local v1, wm:Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2700
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2702
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "SPenGestureView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 2704
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/SPenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$SPenGestureInputEventReceiver;

    .line 2708
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 3405
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 3407
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 3408
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    :cond_0
    return-object v0
.end method

.method private getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 3

    .prologue
    .line 8016
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverFeatureAvailable:Z

    if-nez v1, :cond_1

    .line 8017
    const/4 v0, 0x0

    .line 8025
    :cond_0
    :goto_0
    return-object v0

    .line 8020
    :cond_1
    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 8022
    .local v0, sandman:Landroid/service/dreams/IDreamManager;
    if-nez v0, :cond_0

    .line 8023
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IDreamManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 7893
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 7894
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 7895
    const/4 v2, 0x0

    .line 7901
    :cond_0
    return-object v2

    .line 7897
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 7898
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 7899
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 7898
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 4388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 4389
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 4391
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method static getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;
    .locals 3

    .prologue
    .line 3385
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    .line 3387
    .local v0, telephonyExtService:Lcom/android/internal/telephony/ITelephonyExt;
    if-nez v0, :cond_0

    .line 3388
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    :cond_0
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 3371
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getTelephonyService2()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 3376
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3378
    .local v0, telephonyService2:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 3379
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :cond_0
    return-object v0
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 6300
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 6301
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 6302
    .local v0, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 6304
    .local v2, topActivity:Landroid/content/ComponentName;
    return-object v2
.end method

.method static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .locals 3

    .prologue
    .line 3395
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3397
    .local v0, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-nez v0, :cond_0

    .line 3398
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    :cond_0
    return-object v0
.end method

.method private handleLongPressOnHome()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1801
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-gez v6, :cond_1

    .line 1802
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1804
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v6, v11, :cond_1

    .line 1810
    :cond_0
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1817
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1818
    .local v3, phoneServ:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 1819
    .local v2, incomingRinging:Z
    if-eqz v3, :cond_2

    .line 1820
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1827
    :cond_2
    if-eqz v2, :cond_4

    .line 1878
    .end local v2           #incomingRinging:Z
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :goto_0
    return-void

    .line 1830
    :catch_0
    move-exception v1

    .line 1831
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "RemoteException from getTelephonyService()"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1835
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v5

    .line 1836
    .local v5, voipInterfaceService:Landroid/os/IVoIPInterface;
    const-string v6, "WindowManager"

    const-string v7, "interceptKeyBeforeDispatching with IVoIPInterface "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    if-eqz v5, :cond_5

    .line 1838
    invoke-interface {v5}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    if-nez v6, :cond_3

    .line 1847
    .end local v5           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_5
    :goto_1
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v6, :cond_6

    .line 1848
    invoke-virtual {p0, v12, v9, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1849
    const-string v6, "recentapps"

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1853
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 1856
    :cond_6
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Behavior : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v6, v10, :cond_7

    .line 1859
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    goto :goto_0

    .line 1860
    :cond_7
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 1862
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockCollapseStatusBar:Z

    .line 1863
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    .line 1864
    .local v4, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v4, :cond_3

    .line 1865
    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1867
    .end local v4           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_1
    move-exception v0

    .line 1868
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "RemoteException when showing recent apps"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1870
    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .line 1874
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_8
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v6, v11, :cond_3

    .line 1875
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_0

    .line 1842
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 6
    .parameter "win"
    .parameter "fallbackEvent"
    .parameter "policyFlags"

    .prologue
    const/4 v3, 0x1

    .line 4341
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    .line 4342
    .local v0, actions:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 4343
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 4345
    .local v1, delayMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 4349
    .end local v1           #delayMillis:J
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private interceptOneTouchReportChord()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 1312
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOneTouchReportChordEnabled:Z

    if-nez v2, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_0

    .line 1316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1317
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1321
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByOneTouchReportChord:Z

    .line 1322
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByOneTouchReportChord:Z

    .line 1323
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1324
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1325
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1326
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReportWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1327
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressforOneTouchReport:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 4
    .parameter "handled"

    .prologue
    .line 1254
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1255
    if-nez p1, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1258
    :cond_0
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 3
    .parameter "canceled"

    .prologue
    const/4 v0, 0x0

    .line 1261
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_0

    .line 1262
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1263
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1265
    :cond_0
    return v0
.end method

.method private interceptScreenRecordChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v3, 0x1

    .line 1423
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenRecordChordEnabled:Z

    if-nez v4, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v4, :cond_2

    move v0, v3

    .line 1425
    .local v0, isPhoneAndHasHardKey:Z
    :goto_1
    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v4, :cond_4

    .line 1426
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1427
    .local v1, now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v4, v6

    cmp-long v4, v1, v4

    if-gtz v4, :cond_3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v4, v6

    cmp-long v4, v1, v4

    if-gtz v4, :cond_3

    .line 1429
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptScreenRecordChord - success and waiting long press : now["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mVolumeUpKeyTime["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mHomeKeyTime["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 1431
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 1432
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1433
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingOneTouchReportChordAction()V

    .line 1434
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1424
    .end local v0           #isPhoneAndHasHardKey:Z
    .end local v1           #now:J
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1438
    .restart local v0       #isPhoneAndHasHardKey:Z
    .restart local v1       #now:J
    :cond_3
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptScreenRecordChord - fail : now["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] mVolumeUpKeyTime["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] mHomeKeyTime{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1441
    .end local v1           #now:J
    :cond_4
    if-nez v0, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v4, :cond_0

    .line 1443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1444
    .restart local v1       #now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v4, v6

    cmp-long v4, v1, v4

    if-gtz v4, :cond_5

    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v4, v6

    cmp-long v4, v1, v4

    if-gtz v4, :cond_5

    .line 1446
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptScreenRecordChord - success and waiting long press : now["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mVolumeUpKeyTime["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mPowerKeyTime["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 1448
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    .line 1449
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1450
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1451
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingOneTouchReportChordAction()V

    .line 1452
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1456
    :cond_5
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptScreenRecordChord - fail : now["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] mVolumeUpKeyTime["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] mPowerKeyTime{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private interceptScreenshotChord()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const-wide/16 v7, 0x96

    const/4 v3, 0x1

    .line 1278
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-nez v5, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v5, :cond_2

    move v0, v3

    .line 1280
    .local v0, isPhoneAndHasHardKey:Z
    :goto_1
    if-nez v0, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v5, :cond_3

    .line 1281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1282
    .local v1, now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v4, v7

    cmp-long v4, v1, v4

    if-gtz v4, :cond_0

    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v4, v7

    cmp-long v4, v1, v4

    if-gtz v4, :cond_0

    .line 1284
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1285
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1286
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1287
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1288
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingOneTouchReportChordAction()V

    .line 1289
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v0           #isPhoneAndHasHardKey:Z
    .end local v1           #now:J
    :cond_2
    move v0, v4

    .line 1279
    goto :goto_1

    .line 1294
    .restart local v0       #isPhoneAndHasHardKey:Z
    :cond_3
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v5, :cond_0

    .line 1295
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1296
    .restart local v1       #now:J
    iget-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v5, v7

    cmp-long v5, v1, v5

    if-gtz v5, :cond_0

    iget-wide v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v5, v7

    cmp-long v5, v1, v5

    if-gtz v5, :cond_0

    .line 1298
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 1299
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1300
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1302
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1303
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 7860
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isArranged(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4572
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_CENTER_UPPER_SIP:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_FULL_UPPER_SIP:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_BOTTOM_UPPER_SIP:I

    if-ne v0, v1, :cond_1

    .line 4575
    :cond_0
    const/4 v0, 0x1

    .line 4577
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBuiltInKeyboardVisible()Z
    .locals 1

    .prologue
    .line 2864
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraOnTop()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 9374
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 9375
    .local v0, componentName:Landroid/content/ComponentName;
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 9376
    if-eqz v0, :cond_4

    .line 9377
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCameraOnTop() : name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9383
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 9384
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera.Camcorder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9386
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    const-string v2, "Camera is running"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9387
    :cond_2
    const/4 v1, 0x1

    .line 9392
    :cond_3
    return v1

    .line 9379
    :cond_4
    const-string v2, "WindowManager"

    const-string v3, "isCameraOnTop() : topActivity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 2619
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2621
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2623
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2628
    :goto_0
    return-object v2

    .line 2625
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2627
    :catch_0
    move-exception v0

    .line 2628
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method private isFactoryMode()Z
    .locals 2

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v0

    return v0
.end method

.method private isHidden(I)Z
    .locals 3
    .parameter "accessibilityMode"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2815
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 2821
    :cond_0
    :goto_0
    return v0

    .line 2817
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2819
    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2815
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 7856
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMtpRunning()Z
    .locals 1

    .prologue
    .line 7194
    const/4 v0, 0x0

    return v0
.end method

.method private isOneTouchReportEnabled()Z
    .locals 17

    .prologue
    .line 1362
    const-string v15, "go.police.report"

    .line 1363
    .local v15, oneTouchReportPackageName:Ljava/lang/String;
    const-string v14, "com.android.vending"

    .line 1365
    .local v14, oneTouchReportInstaller:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1366
    .local v13, installerPackage:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1368
    .local v12, enabled:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1369
    const/4 v2, 0x0

    .line 1417
    :goto_0
    return v2

    .line 1374
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 1376
    .local v16, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1378
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 1381
    const/4 v2, 0x0

    goto :goto_0

    .line 1383
    :catch_0
    move-exception v11

    .line 1386
    .local v11, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 1391
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1
    const-string v9, "content://go.police.provider.report"

    .line 1392
    .local v9, customerAgreementPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1394
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz v1, :cond_3

    .line 1395
    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1397
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1398
    const-string v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1400
    .local v8, customerAgreementColumn:I
    const/4 v2, -0x1

    if-eq v2, v8, :cond_2

    .line 1401
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 1402
    .local v10, customerAgreementValue:I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_4

    const/4 v12, 0x1

    .line 1411
    .end local v8           #customerAgreementColumn:I
    .end local v10           #customerAgreementValue:I
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 1412
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    :goto_2
    move v2, v12

    .line 1417
    goto :goto_0

    .line 1402
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #customerAgreementColumn:I
    .restart local v10       #customerAgreementValue:I
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 1408
    .end local v8           #customerAgreementColumn:I
    .end local v10           #customerAgreementValue:I
    :catch_1
    move-exception v11

    .line 1409
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1411
    if-eqz v7, :cond_3

    .line 1412
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1411
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 1412
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .locals 4
    .parameter "componentName"

    .prologue
    .line 6294
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 6295
    .local v0, topComponentName:Landroid/content/ComponentName;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6296
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 7585
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7586
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    goto :goto_0
.end method

.method private launchAssistAction()V
    .locals 4

    .prologue
    .line 4373
    const-string v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4374
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 4375
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 4376
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4380
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4385
    :cond_0
    :goto_0
    return-void

    .line 4381
    :catch_0
    move-exception v0

    .line 4382
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist action."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4353
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4354
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4357
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4358
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4362
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 4363
    .local v2, searchManager:Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 4364
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 4366
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4370
    .end local v2           #searchManager:Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 4367
    :catch_0
    move-exception v0

    .line 4368
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifySystemUiVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 9315
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_0

    .line 9316
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$42;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$42;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9323
    :cond_0
    return-void
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 5521
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 5522
    .local v0, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5523
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    .line 5524
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 5526
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 5527
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5528
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_1

    .line 5529
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 5534
    :cond_1
    return-void
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 9
    .parameter "path"

    .prologue
    const/4 v8, 0x1

    .line 8623
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 8624
    .local v4, soundUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8627
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v5}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8629
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v5}, Landroid/media/Ringtone;->stop()V

    .line 8630
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8636
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 8637
    if-eqz v0, :cond_2

    .line 8638
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 8639
    .local v2, masterStreamVolume:I
    int-to-float v5, v2

    const/high16 v6, 0x40e0

    div-float/2addr v5, v6

    const v6, 0x3e99999a

    mul-float v3, v5, v6

    .line 8640
    .local v3, penSoundVolume:F
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v5, :cond_1

    .line 8641
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v5, v8}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 8642
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    .line 8651
    .end local v2           #masterStreamVolume:I
    .end local v3           #penSoundVolume:F
    :goto_1
    return-void

    .line 8631
    :catch_0
    move-exception v1

    .line 8632
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to stop Ringtone - already done : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8645
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #masterStreamVolume:I
    .restart local v3       #penSoundVolume:F
    :cond_1
    const-string v5, "WindowManager"

    const-string v6, "There are no ringtones"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8649
    .end local v2           #masterStreamVolume:I
    .end local v3           #penSoundVolume:F
    :cond_2
    const-string v5, "WindowManager"

    const-string v6, "AudioManager loading fail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private playSoundEffect(Z)V
    .locals 4
    .parameter "isScreenOn"

    .prologue
    .line 8607
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8609
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 8610
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 8611
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 8619
    :goto_0
    return-void

    .line 8614
    :cond_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguard - disable key sound : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8617
    :cond_1
    const-string v1, "WindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readRotation(I)I
    .locals 2
    .parameter "resID"

    .prologue
    .line 2712
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2713
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_0

    .line 2726
    .end local v0           #rotation:I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 2715
    .restart local v0       #rotation:I
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2717
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 2719
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    .line 2721
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 2723
    .end local v0           #rotation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2713
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 7628
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7630
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7634
    :cond_0
    :goto_0
    return-void

    .line 7631
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setReadingMode(Z)Z
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 9525
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 9548
    .local v0, value:I
    :goto_0
    return v1

    .end local v0           #value:I
    :cond_0
    move v0, v1

    .line 9525
    goto :goto_0
.end method

.method private statusBarBehavior(Z)V
    .locals 2
    .parameter "isOpen"

    .prologue
    .line 1466
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    .line 1467
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1472
    return-void
.end method

.method private takeScreenshot(I)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 6217
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6218
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_0

    .line 6219
    monitor-exit v5

    .line 6290
    :goto_0
    return-void

    .line 6221
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6223
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6224
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6225
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    .line 6266
    .local v1, conn:Landroid/content/ServiceConnection;
    if-eq p1, v7, :cond_1

    .line 6282
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6284
    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/ServiceConnection;)V

    .line 6285
    .local v3, runnable:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenshotRunnable;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6286
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6289
    .end local v3           #runnable:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenshotRunnable;
    :cond_2
    monitor-exit v5

    goto :goto_0

    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #conn:Landroid/content/ServiceConnection;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 8088
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v2

    .line 8089
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 8091
    .local v0, enable:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    .line 8092
    if-eqz v0, :cond_2

    .line 8094
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8099
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 8101
    :cond_0
    monitor-exit v2

    .line 8102
    return-void

    .line 8089
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 8097
    .restart local v0       #enable:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 8101
    .end local v0           #enable:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 8412
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_1

    .line 8471
    :cond_0
    :goto_0
    return v5

    .line 8415
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int v4, v6, v7

    .line 8418
    .local v4, visibility:I
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v4, v6

    .line 8421
    .local v0, diff:I
    const/4 v3, 0x0

    .line 8422
    .local v3, topIsRemoveNav:Z
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_4

    .line 8423
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 8424
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_2

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_7

    :cond_2
    const/4 v3, 0x1

    .line 8426
    :goto_1
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_8

    .line 8427
    const/4 v3, 0x0

    .line 8433
    :cond_3
    :goto_2
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eq v3, v6, :cond_4

    .line 8434
    or-int/lit8 v0, v0, 0x8

    .line 8444
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    .line 8445
    .local v2, needsMenu:Z
    if-nez v0, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v6, v2, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eq v6, v7, :cond_0

    .line 8451
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    if-eqz v5, :cond_6

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    .line 8454
    :cond_6
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 8455
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 8456
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 8457
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$39;

    invoke-direct {v6, p0, v4, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$39;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v5, v0

    .line 8471
    goto :goto_0

    .end local v2           #needsMenu:Z
    .restart local v1       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_7
    move v3, v5

    .line 8424
    goto :goto_1

    .line 8428
    :cond_8
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d4

    if-ne v6, v7, :cond_3

    .line 8429
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v6, :cond_3

    .line 8430
    :cond_9
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private wakeUpOnHomeIfNeeded()V
    .locals 2

    .prologue
    .line 9358
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    if-eqz v0, :cond_3

    .line 9359
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "wakeUpOnHomeIfNeeded() =>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9360
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isCameraOnTop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    .line 9361
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnReason:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnReason:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnReason:I

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_2

    .line 9365
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, "wakeUpOnHomeIfNeeded() : launchHome!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9366
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHome()V

    .line 9368
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    .line 9369
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnReason:I

    .line 9371
    :cond_3
    return-void
.end method


# virtual methods
.method public TorchModeFlashSet(I)V
    .locals 8
    .parameter "torchTime"

    .prologue
    .line 1978
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Torch Time Out ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1981
    .local v1, inputTime:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1982
    const/4 v2, 0x0

    .line 1983
    .local v2, out:Ljava/io/FileWriter;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1985
    .local v4, res:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v5, "/sys/devices/virtual/torch/torch/torch_ctl"

    invoke-direct {v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1986
    .end local v2           #out:Ljava/io/FileWriter;
    .local v3, out:Ljava/io/FileWriter;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v1, v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V

    .line 1987
    if-nez p1, :cond_2

    .line 1988
    const-string v5, "torch_light"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1999
    :goto_0
    if-eqz v3, :cond_0

    .line 2001
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v2, v3

    .line 2007
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_1
    :goto_2
    return-void

    .line 1990
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :cond_2
    :try_start_3
    const-string v5, "torch_light"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1993
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1994
    .end local v3           #out:Ljava/io/FileWriter;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #out:Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    const-string v5, "WindowManager"

    const-string v6, "exception occurred. /sys/devices/virtual/torch/torch/torch_ctl"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1999
    if-eqz v2, :cond_1

    .line 2001
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2002
    :catch_1
    move-exception v5

    goto :goto_2

    .line 1999
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_3

    .line 2001
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2004
    :cond_3
    :goto_5
    throw v5

    .line 2002
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_2
    move-exception v5

    goto :goto_1

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_3
    move-exception v6

    goto :goto_5

    .line 1999
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_4

    .line 1993
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    .locals 13
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"

    .prologue
    .line 3067
    if-nez p2, :cond_1

    .line 3068
    const/4 v7, 0x0

    .line 3183
    :cond_0
    :goto_0
    return-object v7

    .line 3072
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3076
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    if-eqz p6, :cond_3

    .line 3078
    :cond_2
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v2, p2, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 3079
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3085
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .line 3086
    .local v8, win:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3087
    .local v6, ta:Landroid/content/res/TypedArray;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_4

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3091
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 3094
    :cond_5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3095
    .local v5, r:Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 3097
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    .line 3103
    or-int/lit8 v10, p8, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x2

    or-int/2addr v10, v11

    or-int/lit8 v11, p8, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x2

    or-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 3113
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v10

    if-nez v10, :cond_6

    .line 3114
    const/high16 v10, 0x2000

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 3117
    :cond_6
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 3120
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 3121
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3122
    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3123
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3125
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3127
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3146
    const-string v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 3147
    .local v9, wm:Landroid/view/WindowManager;
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 3149
    .local v7, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3156
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3164
    :cond_7
    invoke-interface {v9, v7, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3168
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3169
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #ta:Landroid/content/res/TypedArray;
    .end local v7           #view:Landroid/view/View;
    .end local v8           #win:Landroid/view/Window;
    .end local v9           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 3171
    .local v3, e:Landroid/view/WindowManager$BadTokenException;
    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_8

    .line 3172
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already running, starting window not displayed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    .end local v3           #e:Landroid/view/WindowManager$BadTokenException;
    :cond_8
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3174
    :catch_1
    move-exception v3

    .line 3178
    .local v3, e:Ljava/lang/RuntimeException;
    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_8

    .line 3179
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed creating starting window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3080
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v2       #context:Landroid/content/Context;
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3
    .parameter "config"
    .parameter "keyboardPresence"
    .parameter "navigationPresence"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2870
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 2872
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 2873
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 2875
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_0

    if-ne p2, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2878
    :cond_0
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2879
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_1

    .line 2880
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2884
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_2

    if-ne p3, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2887
    :cond_2
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2889
    :cond_3
    return-void

    .line 2870
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .parameter "visibility"

    .prologue
    .line 4525
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 4528
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2793
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 2808
    :goto_0
    return-void

    .line 2798
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2800
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 2804
    :sswitch_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 2793
    :sswitch_data_0
    .sparse-switch
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    .line 5930
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5933
    const/4 v0, 0x0

    .line 5935
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowKeyRepeat()Z
    .locals 1

    .prologue
    .line 8406
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 5569
    sget v0, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V

    .line 5570
    return-void
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 5
    .parameter "win"
    .parameter "attrs"
    .parameter "windowMode"

    .prologue
    const/16 v4, 0x63

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 5577
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_2

    .line 5578
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-gt v0, v4, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v3, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v0, v3, :cond_1

    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-eq v0, v1, :cond_1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_2

    .line 5586
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5596
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_8

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5598
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_5

    .line 5600
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_4

    .line 5602
    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentStatusBar:Z

    .line 5605
    :cond_4
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 5607
    :cond_5
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-gt v0, v4, :cond_8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v3, :cond_8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_8

    .line 5613
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5614
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 5616
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 5618
    :cond_6
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 5620
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 5622
    :cond_7
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 5623
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 5629
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_9

    .line 5630
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_9

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-gt v0, v4, :cond_9

    invoke-static {p3}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v0

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    .line 5633
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5634
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:I

    .line 5638
    :cond_9
    return-void
.end method

.method public beginAnimationLw(II)V
    .locals 2
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5548
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5551
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentStatusBar:Z

    .line 5554
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5555
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 5557
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 5558
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 5559
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 5561
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5563
    return-void
.end method

.method public beginLayoutLw(III)V
    .locals 17
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "displayRotation"

    .prologue
    .line 4584
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4585
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4586
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4587
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4588
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4589
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4590
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 4592
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4594
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 4596
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 4598
    const/high16 v2, 0x1000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 4599
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 4602
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsNotifySip:Z

    .line 4603
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideWindow:Z

    .line 4607
    sget-object v14, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 4608
    .local v14, pf:Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 4609
    .local v11, df:Landroid/graphics/Rect;
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 4610
    .local v16, vf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v14, Landroid/graphics/Rect;->left:I

    .line 4611
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    .line 4612
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 4613
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 4618
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_9

    const/4 v13, 0x1

    .line 4626
    .local v13, navVisible:Z
    :goto_0
    if-eqz v13, :cond_a

    .line 4627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_0

    .line 4628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 4629
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 4646
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    if-eqz v2, :cond_1

    .line 4651
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eqz v2, :cond_c

    .line 4652
    const/4 v13, 0x0

    .line 4663
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_3
    or-int/2addr v13, v2

    .line 4665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    .line 4670
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_2

    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_e

    :cond_2
    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 4671
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_10

    .line 4673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v2, v2, p3

    sub-int v15, p2, v2

    .line 4687
    .local v15, top:I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v3, v15, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4688
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    .line 4689
    if-eqz v13, :cond_f

    .line 4690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 4691
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 4692
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4702
    :cond_3
    :goto_5
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4706
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 4743
    .end local v15           #top:I
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4744
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4745
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 4746
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 4747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 4749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4757
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    .line 4759
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v14, Landroid/graphics/Rect;->left:I

    .line 4760
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    .line 4761
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 4762
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 4763
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4764
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4765
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 4766
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 4771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-interface {v2, v14, v11, v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4774
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 4781
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-nez v2, :cond_6

    .line 4786
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4788
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4789
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4790
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 4791
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 4802
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_7

    .line 4803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4804
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v14, Landroid/graphics/Rect;->left:I

    .line 4805
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    .line 4810
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 4811
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 4813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-interface {v2, v14, v11, v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4816
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 4817
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4818
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4822
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_8

    .line 4826
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 4829
    :cond_8
    return-void

    .line 4618
    .end local v13           #navVisible:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 4632
    .restart local v13       #navVisible:Z
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    .line 4633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_0

    .line 4634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 4635
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_1

    .line 4638
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v2, :cond_0

    .line 4639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    const-string v5, "hidden nav"

    const/16 v6, 0x7e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_1

    .line 4653
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_1

    .line 4655
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 4663
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 4670
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 4695
    .restart local v15       #top:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 4697
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eqz v2, :cond_3

    .line 4698
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    goto/16 :goto_5

    .line 4710
    .end local v15           #top:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v2, v2, p3

    sub-int v12, p1, v2

    .line 4719
    .local v12, left:I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v12, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4720
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    .line 4721
    if-eqz v13, :cond_12

    .line 4722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 4723
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 4724
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4734
    :cond_11
    :goto_8
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4738
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_6

    .line 4727
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 4729
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eqz v2, :cond_11

    .line 4730
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    goto :goto_8

    .line 4807
    .end local v12           #left:I
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v14, Landroid/graphics/Rect;->left:I

    .line 4808
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    goto/16 :goto_7
.end method

.method broadcastPenState(Landroid/content/Intent;)V
    .locals 4
    .parameter "penIntent"

    .prologue
    .line 2836
    const/4 v0, 0x1

    .line 2838
    .local v0, shouldBroadcast:Z
    const-string v1, "LGT"

    const-string v2, "UNICOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "lock"

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2840
    const-string v1, "WindowManager"

    const-string v2, " SKIP broadcastPenState"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    const/4 v0, 0x0

    .line 2844
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2845
    const-string v1, "isFactoryMode"

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isFactoryMode()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2846
    const-string v1, "isScreenOn"

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2847
    const-string v1, "isKeyguardLocked"

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2848
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , broadcasted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2851
    :cond_1
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 3050
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_CONTROL_BAR:I

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TRAY_BAR:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 2731
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2733
    .local v1, type:I
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    .line 2789
    :cond_0
    :goto_0
    return v2

    .line 2738
    :cond_1
    const/16 v3, 0xbb6

    if-eq v1, v3, :cond_0

    .line 2743
    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_CONTROL_BAR:I

    if-eq v1, v3, :cond_0

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TRAY_BAR:I

    if-eq v1, v3, :cond_0

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_EDIT_MODE:I

    if-eq v1, v3, :cond_0

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_GUIDE_MODE:I

    if-eq v1, v3, :cond_0

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TOOLKIT_BAR:I

    if-eq v1, v3, :cond_0

    .line 2753
    const/4 v0, 0x0

    .line 2754
    .local v0, permission:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 2781
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 2783
    :goto_1
    :sswitch_0
    if-eqz v0, :cond_0

    .line 2784
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2786
    const/4 v2, -0x8

    goto :goto_0

    .line 2778
    :sswitch_1
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2779
    goto :goto_1

    .line 2754
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_1
        0x7d7 -> :sswitch_1
        0x7da -> :sswitch_1
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x833 -> :sswitch_0
        0x834 -> :sswitch_0
        0x835 -> :sswitch_0
    .end sparse-switch
.end method

.method public checkHideTrayBar()Z
    .locals 3

    .prologue
    .line 9330
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    .line 9331
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 9332
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x400

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 9334
    :cond_1
    const/4 v1, 0x1

    .line 9337
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public closeMultiWindowTrayBar()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 9282
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_1

    .line 9301
    :cond_0
    :goto_0
    return v3

    .line 9286
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 9287
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 9288
    .local v2, point:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 9289
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Landroid/util/MathUtils;->min(II)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 9291
    .local v1, min:F
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    float-to-int v5, v1

    if-ge v4, v5, :cond_2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    float-to-int v5, v1

    if-lt v4, v5, :cond_0

    .line 9292
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$40;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$40;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9299
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .parameter "onWallpaper"

    .prologue
    .line 3365
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x10a002e

    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x10a002b

    goto :goto_0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 8152
    const/4 v1, 0x0

    .line 8157
    .local v1, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 8159
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 8168
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    .line 8170
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockIntent:Landroid/content/Intent;

    move-object v2, v1

    .line 8175
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_1
    if-nez v2, :cond_2

    move-object v1, v2

    .line 8191
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_2
    return-object v3

    .line 8161
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 8162
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "desk_home_screen_display"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 8164
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_0

    .line 8179
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 8181
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_3

    move-object v1, v2

    .line 8182
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 8185
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_3
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8186
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 8187
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v1

    .line 8188
    goto :goto_2

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_4
    move-object v1, v2

    .line 8191
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_2

    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_5
    move-object v2, v1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 7608
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_1

    .line 7609
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7610
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$33;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$33;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7617
    :cond_1
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 7228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 7236
    .local v0, repeatEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 7237
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7238
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 7202
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_0

    .line 7207
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7208
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7209
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7212
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 7214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 7216
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7218
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7220
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7221
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7225
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 7223
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 7241
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7242
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7243
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 7245
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7251
    .end local v0           #audioService:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 7246
    .restart local v0       #audioService:Landroid/media/IAudioService;
    :catch_0
    move-exception v1

    .line 7247
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 4286
    const/16 v18, 0x0

    .line 4287
    .local v18, fallbackEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    .line 4288
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 4289
    .local v20, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 4290
    .local v21, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 4291
    .local v22, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v19, 0x1

    .line 4296
    .local v19, initialDown:Z
    :goto_0
    if-eqz v19, :cond_3

    .line 4297
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 4302
    .local v17, fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    .line 4308
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 4309
    .local v14, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 4316
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4317
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 4318
    const/16 v18, 0x0

    .line 4321
    :cond_0
    if-eqz v19, :cond_4

    .line 4322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4337
    .end local v14           #flags:I
    .end local v17           #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19           #initialDown:Z
    .end local v20           #kcm:Landroid/view/KeyCharacterMap;
    .end local v21           #keyCode:I
    .end local v22           #metaState:I
    :cond_1
    :goto_2
    return-object v18

    .line 4291
    .restart local v20       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v21       #keyCode:I
    .restart local v22       #metaState:I
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 4299
    .restart local v19       #initialDown:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17       #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1

    .line 4323
    .restart local v14       #flags:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 4325
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 3046
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 8505
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8506
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8507
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8508
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8509
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8510
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8511
    const-string v0, " mCoverCloseRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8512
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8513
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    .line 8515
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8516
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8517
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8518
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8519
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8520
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8522
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    .line 8523
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8524
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8526
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8527
    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8528
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8529
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8530
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8531
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8532
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8533
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8534
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8535
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8536
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8537
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8538
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8539
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8540
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8541
    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8542
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8543
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8544
    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8545
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8546
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8547
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8548
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8549
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8550
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8551
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8552
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8553
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8554
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8555
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8556
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8557
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8558
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8559
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8560
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8561
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8562
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8563
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8564
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8565
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8566
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8567
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8568
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8569
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8570
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8571
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8572
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8573
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8574
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8575
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8576
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8577
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8578
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8579
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8580
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8581
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8583
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopMaintainSystemUIAppWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8584
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8586
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8587
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8588
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8589
    const-string v0, " mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8590
    const-string v0, " mTransparentStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8591
    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8592
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8593
    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8594
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8595
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8596
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8597
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8598
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8599
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8600
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8601
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8602
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8603
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8604
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 7572
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 7573
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 7575
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 8106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 8107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 8108
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readCoverState()V

    .line 8109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 8110
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 7579
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 7580
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 7582
    :cond_0
    return-void
.end method

.method public finishAnimationLw()I
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 5642
    const/4 v1, 0x0

    .line 5643
    .local v1, changes:I
    const/4 v8, 0x0

    .line 5645
    .local v8, topIsFullscreen:Z
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v13, :cond_b

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 5649
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v13, :cond_3

    .line 5655
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v13, :cond_c

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v13, :cond_c

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v13, :cond_c

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:I

    invoke-static {v13}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v13

    sget v14, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v13, v14, :cond_c

    move v6, v11

    .line 5660
    .local v6, needsStatusBarShown:Z
    :goto_1
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v13, :cond_0

    if-eqz v6, :cond_e

    .line 5661
    :cond_0
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    .line 5664
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentStatusBar:Z

    invoke-virtual {p0, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setTransparentStatusBar(Z)V

    .line 5665
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentStatusBar:Z

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v13, v14, :cond_2

    if-eqz v5, :cond_2

    .line 5666
    iget v13, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v13, v13, 0x400

    if-nez v13, :cond_1

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_d

    :cond_1
    move v8, v11

    .line 5670
    :cond_2
    :goto_2
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v13, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 5671
    or-int/lit8 v1, v1, 0x1

    .line 5673
    invoke-direct {p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 5756
    .end local v6           #needsStatusBarShown:Z
    :cond_3
    :goto_3
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 5760
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v13, :cond_6

    .line 5762
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v13, :cond_18

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v13

    if-eqz v13, :cond_4

    sget-boolean v13, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v13, :cond_18

    .line 5763
    :cond_4
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 5764
    or-int/lit8 v1, v1, 0x7

    .line 5768
    :cond_5
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 5769
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v13, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5825
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v12

    and-int/lit8 v12, v12, 0xe

    if-eqz v12, :cond_7

    .line 5828
    or-int/lit8 v1, v1, 0x1

    .line 5832
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->checkHideTrayBar()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 5833
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 5834
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 5844
    :cond_8
    :goto_5
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-direct {p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->changeMPDecision(Z)V

    .line 5847
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5851
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_a

    .line 5852
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:I

    sget v13, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    and-int v10, v12, v13

    .line 5853
    .local v10, zone:I
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/policy/impl/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v0

    .line 5854
    .local v0, arrange:I
    sget v12, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I

    xor-int/lit8 v12, v12, -0x1

    and-int v2, v0, v12

    .line 5856
    .local v2, currentLaunchMode:I
    sget v12, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    if-eq v10, v12, :cond_9

    sget v12, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    if-ne v10, v12, :cond_22

    :cond_9
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:I

    sget v13, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_RESIZE:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_22

    .line 5860
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-nez v12, :cond_21

    .line 5861
    sget v12, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    if-ne v10, v12, :cond_1e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_1e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-eqz v12, :cond_1e

    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRotation:I

    invoke-direct {p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_1e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v13

    if-ge v12, v13, :cond_1e

    .line 5868
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 5869
    or-int/lit8 v1, v1, 0x1

    .line 5896
    .end local v0           #arrange:I
    .end local v2           #currentLaunchMode:I
    .end local v10           #zone:I
    :cond_a
    :goto_6
    return v1

    .line 5645
    .end local v5           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .restart local v5       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_c
    move v6, v12

    .line 5655
    goto/16 :goto_1

    .restart local v6       #needsStatusBarShown:Z
    :cond_d
    move v8, v12

    .line 5666
    goto/16 :goto_2

    .line 5676
    :cond_e
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v13, :cond_3

    .line 5684
    iget v13, v5, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v13, v13, 0x1000

    if-nez v13, :cond_f

    iget v13, v5, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    and-int/lit16 v13, v13, 0x1000

    if-eqz v13, :cond_12

    :cond_f
    move v9, v11

    .line 5687
    .local v9, topIsTransparentStatusbar:Z
    :goto_7
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setTransparentStatusBar(Z)V

    .line 5689
    iget v13, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v13, v13, 0x400

    if-nez v13, :cond_10

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_13

    :cond_10
    move v8, v11

    .line 5692
    :goto_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 5693
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_14

    move v13, v11

    :goto_9
    or-int/2addr v8, v13

    .line 5699
    :cond_11
    if-eqz v8, :cond_17

    .line 5702
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    if-eqz v13, :cond_15

    .line 5703
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v13, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 5704
    or-int/lit8 v1, v1, 0x1

    .line 5706
    invoke-direct {p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    goto/16 :goto_3

    .end local v9           #topIsTransparentStatusbar:Z
    :cond_12
    move v9, v12

    .line 5684
    goto :goto_7

    .restart local v9       #topIsTransparentStatusbar:Z
    :cond_13
    move v8, v12

    .line 5689
    goto :goto_8

    :cond_14
    move v13, v12

    .line 5693
    goto :goto_9

    .line 5712
    :cond_15
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v13, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 5713
    or-int/lit8 v1, v1, 0x1

    .line 5715
    const/4 v13, 0x4

    invoke-direct {p0, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 5719
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockCollapseStatusBar:Z

    if-eqz v13, :cond_16

    .line 5720
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockCollapseStatusBar:Z

    goto/16 :goto_3

    .line 5725
    :cond_16
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v14, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 5744
    :cond_17
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    .line 5746
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v13, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 5747
    or-int/lit8 v1, v1, 0x1

    .line 5749
    invoke-direct {p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    goto/16 :goto_3

    .line 5775
    .end local v6           #needsStatusBarShown:Z
    .end local v9           #topIsTransparentStatusbar:Z
    :cond_18
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v13, :cond_1b

    .line 5777
    const/4 v3, 0x1

    .line 5778
    .local v3, hideAnimation:Z
    const/4 v4, 0x1

    .line 5780
    .local v4, hideAnimation2:Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 5781
    .local v7, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_19

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_19

    .line 5782
    const/4 v3, 0x0

    .line 5801
    .end local v7           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_19
    :goto_a
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 5802
    or-int/lit8 v1, v1, 0x7

    .line 5814
    :cond_1a
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v12, v11}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_4

    .line 5816
    .end local v3           #hideAnimation:Z
    .end local v4           #hideAnimation2:Z
    :cond_1b
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v13, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 5817
    or-int/lit8 v1, v1, 0x7

    .line 5821
    :cond_1c
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v13, v12}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_4

    .line 5837
    :cond_1d
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v12

    if-nez v12, :cond_8

    .line 5838
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_5

    .line 5871
    .restart local v0       #arrange:I
    .restart local v2       #currentLaunchMode:I
    .restart local v10       #zone:I
    :cond_1e
    sget v12, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    if-eq v2, v12, :cond_1f

    .line 5872
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 5873
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 5875
    :cond_1f
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v12, :cond_20

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_20

    .line 5876
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 5877
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 5880
    :cond_20
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 5881
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 5885
    :cond_21
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 5886
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 5890
    :cond_22
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 5891
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 5798
    .end local v0           #arrange:I
    .end local v2           #currentLaunchMode:I
    .end local v10           #zone:I
    .restart local v3       #hideAnimation:Z
    .restart local v4       #hideAnimation2:Z
    :catch_0
    move-exception v12

    goto/16 :goto_a
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 5539
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 2
    .parameter "lastFocus"
    .parameter "newFocus"

    .prologue
    .line 5939
    const-string v0, "WindowManager"

    const-string v1, "PhoneWindowManager: focusChangedLw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5940
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5942
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateReadingMode(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5944
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v0, :cond_0

    .line 5945
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    if-eqz v0, :cond_0

    .line 5946
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 5947
    const-string v0, "WindowManager"

    const-string v1, "PhoneWindowManager: focusChangedLw: Call setFocusedWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5948
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPenGestureView:Lcom/android/internal/widget/SPenGestureView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5953
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_1

    .line 5956
    const/4 v0, 0x1

    .line 5958
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 3039
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v0, :cond_0

    .line 3040
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    .line 3042
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    goto :goto_0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 3030
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    const v6, 0x10100

    .line 4533
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4534
    .local v2, fl:I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .line 4536
    .local v3, systemUiVisibility:I
    and-int v4, v2, v6

    if-ne v4, v6, :cond_5

    .line 4539
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v4, :cond_0

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_0

    .line 4541
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 4542
    .local v1, availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    .line 4547
    .local v0, availBottom:I
    :goto_0
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_2

    .line 4548
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_1

    .line 4549
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4569
    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :goto_1
    return-void

    .line 4544
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 4545
    .restart local v1       #availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    .restart local v0       #availBottom:I
    goto :goto_0

    .line 4553
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 4556
    :cond_2
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_3

    .line 4557
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 4558
    :cond_3
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_4

    .line 4560
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 4563
    :cond_4
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 4568
    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 2

    .prologue
    .line 9410
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9411
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 9412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 2996
    const/16 v0, 0xf

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 3015
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v0, :cond_1

    .line 3017
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .line 3026
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 3019
    .restart local p2
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 3022
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_2

    if-ge p1, p2, :cond_0

    .line 3023
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    goto :goto_0
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 3004
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 3007
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .line 3011
    .end local p1
    :cond_0
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 1143
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 1147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemDecorRectLw(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "systemRect"

    .prologue
    .line 4833
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4834
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 4835
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4836
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4837
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 4839
    :goto_0
    return v0

    .line 4838
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_0

    .line 4839
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method goHome()Z
    .locals 15

    .prologue
    .line 8229
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8231
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8248
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v14

    .line 8254
    .local v14, result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_2

    .line 8255
    const/4 v0, 0x0

    .line 8261
    .end local v14           #result:I
    :goto_0
    return v0

    .line 8233
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 8234
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 8235
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 8236
    .local v2, dock:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 8237
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 8243
    .restart local v14       #result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_0

    .line 8244
    const/4 v0, 0x0

    goto :goto_0

    .line 8257
    .end local v2           #dock:Landroid/content/Intent;
    .end local v14           #result:I
    :catch_0
    move-exception v0

    .line 8261
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method handleBackLongPress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1744
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1745
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->checkHideTrayBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1746
    const-string v0, "WindowManager"

    const-string v1, "Bar couldn\'t execute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 1749
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 1751
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method handleVolumeKey(II)V
    .locals 5
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 6159
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6160
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 6185
    :goto_0
    return-void

    .line 6168
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6169
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6182
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 6169
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 6174
    :catch_0
    move-exception v1

    .line 6175
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6182
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 6181
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 6182
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 8477
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hasSystemNavBar()Z
    .locals 1

    .prologue
    .line 3000
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 7983
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$37;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$37;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7991
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 3

    .prologue
    .line 7181
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 7182
    .local v0, kgm:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 7603
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7604
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V
    .locals 14
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"
    .parameter "powerManager"

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2014
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 2015
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 2016
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 2017
    const-string v11, "1"

    const-string v12, "ro.config.headless"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    .line 2018
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v11, :cond_0

    .line 2020
    new-instance v11, Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v0, p4

    invoke-direct {v11, p1, p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 2022
    :cond_0
    new-instance v11, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 2023
    new-instance v11, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 2025
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2028
    :goto_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.feature.spen_usp"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSPenUspFeature:Z

    .line 2031
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.feature.multiwindow"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    .line 2032
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.feature.multiwindow.tablet"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsTablet:Z

    .line 2033
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 2034
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v12, "com.sec.android.app.FlashBarService"

    const-string v13, "com.sec.android.app.FlashBarService.FlashBarService"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2038
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v11, :cond_1

    .line 2039
    new-instance v11, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;

    .line 2044
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.feature.hovering_ui"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHoveringUIEnabled:Z

    .line 2045
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.feature.sensorhub"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSensorhubEnabled:Z

    .line 2046
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHoveringUIEnabled:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSensorhubEnabled:Z

    if-eqz v11, :cond_2

    .line 2047
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Framework_DisablePenDetachmentAlert"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2048
    new-instance v11, Lcom/android/internal/policy/impl/PenDetachmentAlert;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v0, p3

    invoke-direct {v11, p1, v0, v12}, Lcom/android/internal/policy/impl/PenDetachmentAlert;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenDetachmentAlert:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    .line 2054
    :cond_2
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 2055
    .local v6, mSamsungCustomFilter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.TOUCH_CAPTURE_BTN"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2056
    const-string v11, "android.intent.action.SWEEP_LEFT"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2057
    const-string v11, "android.intent.action.SWEEP_RIGHT"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2058
    const-string v11, "android.intent.action.SWEEP_DOWN"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2059
    const-string v11, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2060
    const-string v11, "com.android.internal.policy.impl.sec.glanceview.eventinfo"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2061
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungCustomReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v11, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungCustomIntent:Landroid/content/Intent;

    .line 2063
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    .line 2064
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v12, "isThisComeFromHomeKeyDoubleClickConcept"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2065
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v12, "CHECK_SCHEDULE_ENABLED"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2066
    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.vlingo.client.samsung"

    const-string v13, "com.vlingo.client.car.CarActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    .line 2068
    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.vlingo.midas"

    const-string v13, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSVoiceComponent:Landroid/content/ComponentName;

    .line 2070
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x111003d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkDefaultLaunch:Z

    .line 2072
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x111003c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    .line 2074
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x111004b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDefaultRippleEffect:Z

    .line 2076
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.pen.INSERT"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    .line 2077
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.cover.OPEN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverOpenedIntent:Landroid/content/Intent;

    .line 2086
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.feature.spen_usp"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2087
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2088
    .local v5, mBootCompleteFilter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2089
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v11, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2092
    .end local v5           #mBootCompleteFilter:Landroid/content/IntentFilter;
    :cond_3
    new-instance v10, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 2093
    .local v10, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 2095
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v11, :cond_4

    .line 2096
    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 2097
    .local v9, settingObserverForSPen:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;
    invoke-virtual {v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;->observe()V

    .line 2099
    .end local v9           #settingObserverForSPen:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserverForSPen;
    :cond_4
    new-instance v11, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v11, p1, v12}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 2100
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 2101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0012

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 2103
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 2104
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2105
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v12, 0x1020

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2107
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2108
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v12, "android.intent.category.CAR_DOCK"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2109
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v12, 0x1020

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2111
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 2112
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v12, "android.intent.category.DESK_DOCK"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2113
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v12, 0x1020

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2116
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUsmHomeIntent:Landroid/content/Intent;

    .line 2117
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUsmHomeIntent:Landroid/content/Intent;

    const-string v12, "android.intent.category.USM_HOME"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2118
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUsmHomeIntent:Landroid/content/Intent;

    const/high16 v12, 0x1020

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2123
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0040

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreMultiWindowArrangemode:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2130
    :goto_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2133
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockIntent:Landroid/content/Intent;

    .line 2134
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockIntent:Landroid/content/Intent;

    const-string v12, "android.intent.category.MIRRORLINK_DOCK"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2135
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockIntent:Landroid/content/Intent;

    const/high16 v12, 0x1020

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2139
    const-string v11, "power"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 2140
    .local v7, pm:Landroid/os/PowerManager;
    const/4 v11, 0x1

    const-string v12, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v7, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2142
    const/4 v11, 0x1

    const-string v12, "PhoneWindowManager.mReportWakeLock"

    invoke-virtual {v7, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReportWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2144
    const-string v11, "1"

    const-string v12, "ro.debuggable"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 2145
    const v11, 0x10e000f

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 2148
    const v11, 0x10e0041

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    .line 2151
    const v11, 0x10e0011

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 2153
    const v11, 0x10e0010

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 2156
    const v11, 0x10e0038

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    .line 2158
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x111003e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    .line 2161
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110019

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 2163
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110018

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 2165
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0015

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2167
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0016

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2169
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x111001a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 2172
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2173
    .local v3, filter:Landroid/content/IntentFilter;
    sget-object v11, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2174
    sget-object v11, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2175
    sget-object v11, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2176
    sget-object v11, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2177
    const-string v11, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2178
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v11, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 2180
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_5

    .line 2182
    const-string v11, "android.intent.extra.DOCK_STATE"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 2188
    :cond_5
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2189
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2190
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v11, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 2191
    if-eqz v4, :cond_6

    .line 2192
    const-string v11, "plugged"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPluggedIn:Z

    .line 2195
    :cond_6
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2196
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2197
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v11, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 2198
    if-eqz v4, :cond_7

    .line 2199
    const-string v11, "android.intent.extra.device_state"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    .line 2201
    const/4 v11, 0x1

    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    if-ne v11, v12, :cond_b

    .line 2202
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 2209
    :cond_7
    :goto_3
    const-string v11, "vibrator"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/SystemVibrator;

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    .line 2211
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070025

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2213
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070026

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 2215
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070027

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 2217
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070028

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 2219
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070029

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2222
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110015

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 2225
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenRecordChordEnabled:Z

    .line 2226
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110054

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_8
    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOneTouchReportChordEnabled:Z

    .line 2230
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 2233
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v11}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2234
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 2239
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2240
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2241
    .local v1, captureFilter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2242
    const-string v11, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2243
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v11, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2246
    .end local v1           #captureFilter:Landroid/content/IntentFilter;
    :cond_9
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 2247
    .local v8, projectorOnOffFilter:Landroid/content/IntentFilter;
    const-string v11, "com.sec.android.app.projector.PROJECTOR_ON"

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2248
    const-string v11, "com.sec.android.app.projector.PROJECTOR_OFF"

    invoke-virtual {v8, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2249
    new-instance v11, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {p1, v11, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2258
    :try_start_2
    const-string v11, "0"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingThresholdTime:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2296
    :goto_6
    return-void

    .line 2124
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #pm:Landroid/os/PowerManager;
    .end local v8           #projectorOnOffFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 2125
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v11, "WindowManager"

    const-string v12, "getInteger from multiWindowDefaultArrangeMode failed "

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreMultiWindowArrangemode:I

    goto/16 :goto_1

    .line 2192
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #filter:Landroid/content/IntentFilter;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v7       #pm:Landroid/os/PowerManager;
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 2204
    :cond_b
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    goto/16 :goto_3

    .line 2226
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 2236
    :cond_d
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_5

    .line 2259
    .restart local v8       #projectorOnOffFilter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v2

    .line 2260
    .local v2, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingThresholdTime:I

    goto :goto_6

    .line 2026
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #mSamsungCustomFilter:Landroid/content/IntentFilter;
    .end local v7           #pm:Landroid/os/PowerManager;
    .end local v8           #projectorOnOffFilter:Landroid/content/IntentFilter;
    .end local v10           #settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method

.method initializeHdmiState()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 6092
    const/4 v5, 0x0

    .line 6094
    .local v5, plugged:Z
    new-instance v10, Ljava/io/File;

    const-string v11, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 6095
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v11, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v10, v11}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 6097
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 6098
    .local v2, filename:Ljava/lang/String;
    const/4 v6, 0x0

    .line 6100
    .local v6, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string v10, "/sys/class/switch/hdmi/state"

    invoke-direct {v7, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6101
    .end local v6           #reader:Ljava/io/FileReader;
    .local v7, reader:Ljava/io/FileReader;
    const/16 v10, 0xf

    :try_start_1
    new-array v0, v10, [C

    .line 6102
    .local v0, buf:[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    .line 6103
    .local v4, n:I
    if-le v4, v8, :cond_0

    .line 6104
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v4, -0x1

    invoke-direct {v10, v0, v11, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v10

    if-eqz v10, :cond_3

    move v5, v8

    .line 6111
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 6113
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 6121
    .end local v0           #buf:[C
    .end local v2           #filename:Ljava/lang/String;
    .end local v4           #n:I
    .end local v7           #reader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-nez v5, :cond_5

    move v10, v8

    :goto_2
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6122
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v10, :cond_6

    :goto_3
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 6123
    const-string v8, "persist.sys.hdmi.rotationenable"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6124
    .local v3, hdmi_rotation_enable:Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6126
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIRotationEnable:Z

    .line 6128
    :cond_2
    return-void

    .end local v3           #hdmi_rotation_enable:Ljava/lang/String;
    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v4       #n:I
    .restart local v7       #reader:Ljava/io/FileReader;
    :cond_3
    move v5, v9

    .line 6104
    goto :goto_0

    .line 6106
    .end local v0           #buf:[C
    .end local v4           #n:I
    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 6107
    .local v1, ex:Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6111
    if-eqz v6, :cond_1

    .line 6113
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 6114
    :catch_1
    move-exception v10

    goto :goto_1

    .line 6108
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 6109
    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_5
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6111
    if-eqz v6, :cond_1

    .line 6113
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 6114
    :catch_3
    move-exception v10

    goto :goto_1

    .line 6111
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v6, :cond_4

    .line 6113
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 6115
    :cond_4
    :goto_7
    throw v8

    .end local v2           #filename:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/FileReader;
    :cond_5
    move v10, v9

    .line 6121
    goto :goto_2

    :cond_6
    move v8, v9

    .line 6122
    goto :goto_3

    .line 6114
    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v4       #n:I
    .restart local v7       #reader:Ljava/io/FileReader;
    :catch_4
    move-exception v10

    goto :goto_1

    .end local v0           #buf:[C
    .end local v4           #n:I
    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_5
    move-exception v9

    goto :goto_7

    .line 6111
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v7       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    goto :goto_6

    .line 6108
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v7       #reader:Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    goto :goto_5

    .line 6106
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v7       #reader:Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 53
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 3425
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v30

    .line 3426
    .local v30, keyguardOn:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v29

    .line 3427
    .local v29, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v38

    .line 3428
    .local v38, repeatCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v34

    .line 3429
    .local v34, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    .line 3430
    .local v14, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v49

    if-nez v49, :cond_1

    const/4 v11, 0x1

    .line 3431
    .local v11, down:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 3433
    .local v5, canceled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v49, v0

    if-nez v49, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    move/from16 v49, v0

    if-nez v49, :cond_2

    const/16 v25, 0x1

    .line 3434
    .local v25, isPhoneAndHasHardKey:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v49

    move-object/from16 v0, v49

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v49, v0

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_3

    const/4 v15, 0x1

    .line 3445
    .local v15, hasQwertyKeyboard:Z
    :goto_2
    const/16 v49, 0x3

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_6

    .line 3446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v45

    .line 3447
    .local v45, topActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v49, v0

    if-nez v49, :cond_0

    .line 3448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "enterprise_policy"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3450
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v49, v0

    if-eqz v49, :cond_6

    .line 3451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 3452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v32

    .line 3453
    .local v32, lRestPolicy:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v32, :cond_5

    .line 3454
    const/16 v23, 0x1

    .line 3455
    .local v23, isAllowed:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v49

    if-nez v49, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v49

    if-nez v49, :cond_4

    .line 3456
    const/16 v49, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v23

    .line 3460
    :goto_3
    if-nez v23, :cond_5

    .line 3461
    const-string v49, "WindowManager"

    const-string v50, "home key disabled by edm"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    const-wide/16 v49, -0x1

    .line 4269
    .end local v23           #isAllowed:Z
    .end local v32           #lRestPolicy:Landroid/app/enterprise/RestrictionPolicy;
    .end local v45           #topActivity:Landroid/content/ComponentName;
    :goto_4
    return-wide v49

    .line 3430
    .end local v5           #canceled:Z
    .end local v11           #down:Z
    .end local v15           #hasQwertyKeyboard:Z
    .end local v25           #isPhoneAndHasHardKey:Z
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 3433
    .restart local v5       #canceled:Z
    .restart local v11       #down:Z
    :cond_2
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 3434
    .restart local v25       #isPhoneAndHasHardKey:Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 3458
    .restart local v15       #hasQwertyKeyboard:Z
    .restart local v23       #isAllowed:Z
    .restart local v32       #lRestPolicy:Landroid/app/enterprise/RestrictionPolicy;
    .restart local v45       #topActivity:Landroid/content/ComponentName;
    :cond_4
    const/16 v49, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v23

    goto :goto_3

    .line 3465
    .end local v23           #isAllowed:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v49

    if-lez v49, :cond_6

    .line 3466
    const-wide/16 v49, -0x1

    goto :goto_4

    .line 3471
    .end local v32           #lRestPolicy:Landroid/app/enterprise/RestrictionPolicy;
    .end local v45           #topActivity:Landroid/content/ComponentName;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v49

    const/16 v50, -0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_9

    .line 3472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v49, v0

    if-nez v49, :cond_7

    .line 3473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "enterprise_policy"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3476
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v49, v0

    if-eqz v49, :cond_9

    .line 3477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v31

    .line 3478
    .local v31, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v31, :cond_9

    .line 3479
    const/16 v23, 0x1

    .line 3480
    .restart local v23       #isAllowed:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v49

    if-nez v49, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v49

    if-nez v49, :cond_8

    .line 3481
    const/16 v49, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v29

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v23

    .line 3485
    :goto_5
    if-nez v23, :cond_9

    .line 3486
    const-wide/16 v49, 0x0

    goto :goto_4

    .line 3483
    :cond_8
    const/16 v49, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v29

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v23

    goto :goto_5

    .line 3497
    .end local v23           #isAllowed:Z
    .end local v31           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    move/from16 v49, v0

    if-eqz v49, :cond_12

    and-int/lit16 v0, v14, 0x400

    move/from16 v49, v0

    if-nez v49, :cond_12

    .line 3498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v49, v0

    if-eqz v49, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v49, v0

    if-nez v49, :cond_a

    .line 3499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    .line 3500
    .local v35, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v49, v0

    const-wide/16 v51, 0x96

    add-long v43, v49, v51

    .line 3501
    .local v43, timeoutTime:J
    cmp-long v49, v35, v43

    if-gez v49, :cond_b

    .line 3502
    sub-long v49, v43, v35

    goto/16 :goto_4

    .line 3505
    .end local v35           #now:J
    .end local v43           #timeoutTime:J
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    move/from16 v49, v0

    if-eqz v49, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v49, v0

    if-nez v49, :cond_b

    .line 3506
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    .line 3507
    .restart local v35       #now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTime:J

    move-wide/from16 v49, v0

    const-wide/16 v51, 0x96

    add-long v43, v49, v51

    .line 3508
    .restart local v43       #timeoutTime:J
    cmp-long v49, v35, v43

    if-gez v49, :cond_b

    .line 3509
    sub-long v49, v43, v35

    goto/16 :goto_4

    .line 3512
    .end local v35           #now:J
    .end local v43           #timeoutTime:J
    :cond_b
    const/16 v49, 0x19

    move/from16 v0, v29

    move/from16 v1, v49

    if-eq v0, v1, :cond_c

    const/16 v49, 0xa9

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    move/from16 v49, v0

    if-eqz v49, :cond_e

    .line 3515
    if-nez v11, :cond_d

    .line 3516
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 3518
    :cond_d
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3520
    :cond_e
    const/16 v49, 0x3

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    move/from16 v49, v0

    if-eqz v49, :cond_10

    .line 3522
    if-nez v11, :cond_f

    .line 3523
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 3525
    :cond_f
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3527
    :cond_10
    const/16 v49, 0x1a

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    move/from16 v49, v0

    if-eqz v49, :cond_12

    .line 3529
    if-nez v11, :cond_11

    .line 3530
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 3532
    :cond_11
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3536
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenRecordChordEnabled:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1a

    and-int/lit16 v0, v14, 0x400

    move/from16 v49, v0

    if-nez v49, :cond_1a

    .line 3537
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v49, v0

    if-eqz v49, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    move/from16 v49, v0

    if-nez v49, :cond_13

    .line 3538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    .line 3539
    .restart local v35       #now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v49, v0

    const-wide/16 v51, 0x96

    add-long v43, v49, v51

    .line 3540
    .restart local v43       #timeoutTime:J
    cmp-long v49, v35, v43

    if-gez v49, :cond_14

    .line 3541
    sub-long v49, v43, v35

    goto/16 :goto_4

    .line 3544
    .end local v35           #now:J
    .end local v43           #timeoutTime:J
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v49, v0

    if-eqz v49, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v49, v0

    if-nez v49, :cond_14

    .line 3545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    .line 3546
    .restart local v35       #now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v49, v0

    const-wide/16 v51, 0x96

    add-long v43, v49, v51

    .line 3547
    .restart local v43       #timeoutTime:J
    cmp-long v49, v35, v43

    if-gez v49, :cond_14

    .line 3548
    sub-long v49, v43, v35

    goto/16 :goto_4

    .line 3551
    .end local v35           #now:J
    .end local v43           #timeoutTime:J
    :cond_14
    const/16 v49, 0x18

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    move/from16 v49, v0

    if-eqz v49, :cond_16

    .line 3553
    if-nez v11, :cond_15

    .line 3554
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 3556
    :cond_15
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3558
    :cond_16
    const/16 v49, 0x3

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    move/from16 v49, v0

    if-eqz v49, :cond_18

    .line 3560
    if-nez v11, :cond_17

    .line 3561
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 3563
    :cond_17
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3565
    :cond_18
    const/16 v49, 0x1a

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1a

    .line 3567
    if-nez v11, :cond_19

    .line 3568
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    .line 3570
    :cond_19
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3574
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOneTouchReportChordEnabled:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1f

    .line 3575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v49, v0

    if-nez v49, :cond_1b

    .line 3576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    .line 3577
    .restart local v35       #now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v49, v0

    const-wide/16 v51, 0x96

    add-long v43, v49, v51

    .line 3578
    .restart local v43       #timeoutTime:J
    cmp-long v49, v35, v43

    if-gez v49, :cond_1b

    .line 3579
    sub-long v49, v43, v35

    goto/16 :goto_4

    .line 3582
    .end local v35           #now:J
    .end local v43           #timeoutTime:J
    :cond_1b
    const/16 v49, 0x19

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByOneTouchReportChord:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1d

    .line 3584
    if-nez v11, :cond_1c

    .line 3585
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByOneTouchReportChord:Z

    .line 3587
    :cond_1c
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3589
    :cond_1d
    const/16 v49, 0x18

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByOneTouchReportChord:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1f

    .line 3591
    if-nez v11, :cond_1e

    .line 3592
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByOneTouchReportChord:Z

    .line 3594
    :cond_1e
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3602
    :cond_1f
    const/16 v49, 0x3

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_3c

    .line 3604
    if-eqz p1, :cond_20

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 3605
    .local v4, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClickBehavior:Z

    move/from16 v49, v0

    if-eqz v49, :cond_21

    if-eqz v25, :cond_21

    const/16 v33, 0x1

    .line 3607
    .local v33, mSupportDoubleClick:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v49, v0

    const/16 v50, 0x3

    invoke-virtual/range {v49 .. v50}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v49

    if-eqz v49, :cond_23

    .line 3608
    if-eqz v4, :cond_22

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v49, v0

    const/16 v50, 0x7e1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_22

    .line 3609
    const-string v49, "homekey"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3610
    const-wide/16 v49, 0x64

    goto/16 :goto_4

    .line 3604
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v33           #mSupportDoubleClick:Z
    :cond_20
    const/4 v4, 0x0

    goto :goto_6

    .line 3605
    .restart local v4       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_21
    const/16 v33, 0x0

    goto :goto_7

    .line 3613
    .restart local v33       #mSupportDoubleClick:Z
    :cond_22
    const-wide/16 v49, 0x0

    goto/16 :goto_4

    .line 3618
    :cond_23
    if-eqz v33, :cond_24

    .line 3619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    move-object/from16 v49, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v50

    move-object/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->addAction(IIZ)V

    .line 3625
    :cond_24
    if-nez v11, :cond_2f

    .line 3626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v17, v0

    .line 3627
    .local v17, homeWasPressed:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    move/from16 v16, v0

    .line 3628
    .local v16, homeWasLongPressed:Z
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3629
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 3630
    if-nez v16, :cond_2f

    .line 3632
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v41

    .line 3633
    .local v41, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v41, :cond_25

    .line 3634
    invoke-interface/range {v41 .. v41}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3642
    .end local v41           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_25
    :goto_8
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3643
    if-nez v33, :cond_27

    if-eqz v17, :cond_27

    .line 3644
    if-nez v5, :cond_2e

    .line 3648
    const/16 v20, 0x0

    .line 3649
    .local v20, incomingRinging:Z
    const/16 v21, 0x0

    .line 3652
    .local v21, incomingRinging2:Z
    const/16 v27, 0x0

    .line 3653
    .local v27, isVoIPRinging:Z
    const/16 v24, 0x0

    .line 3655
    .local v24, isAnyKeyMode:Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v48

    .line 3656
    .local v48, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v48, :cond_28

    .line 3657
    invoke-interface/range {v48 .. v48}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v27

    .line 3665
    .end local v48           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "anykey_mode"

    const/16 v51, 0x0

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ge v0, v1, :cond_29

    .line 3666
    const/16 v24, 0x0

    .line 3673
    :goto_a
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v42

    .line 3674
    .local v42, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v42, :cond_26

    .line 3675
    invoke-interface/range {v42 .. v42}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v20

    .line 3693
    .end local v42           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_26
    :goto_b
    if-eqz v27, :cond_2b

    .line 3694
    if-eqz v24, :cond_27

    .line 3696
    :try_start_3
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v48

    .line 3697
    .restart local v48       #voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v48, :cond_2a

    .line 3698
    invoke-interface/range {v48 .. v48}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3717
    .end local v20           #incomingRinging:Z
    .end local v21           #incomingRinging2:Z
    .end local v24           #isAnyKeyMode:Z
    .end local v27           #isVoIPRinging:Z
    .end local v48           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_27
    :goto_c
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3636
    :catch_0
    move-exception v12

    .line 3637
    .local v12, e:Landroid/os/RemoteException;
    const-string v49, "WindowManager"

    const-string v50, "RemoteException when showing recent apps"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3639
    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_8

    .line 3659
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v20       #incomingRinging:Z
    .restart local v21       #incomingRinging2:Z
    .restart local v24       #isAnyKeyMode:Z
    .restart local v27       #isVoIPRinging:Z
    .restart local v48       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_28
    :try_start_4
    const-string v49, "WindowManager"

    const-string v50, "Unable to find IVoIPInterface interface"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    .line 3661
    .end local v48           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_1
    move-exception v13

    .line 3662
    .local v13, ex:Landroid/os/RemoteException;
    const-string v49, "WindowManager"

    const-string v50, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 3668
    .end local v13           #ex:Landroid/os/RemoteException;
    :cond_29
    const/16 v24, 0x1

    goto :goto_a

    .line 3684
    :catch_2
    move-exception v13

    .line 3685
    .restart local v13       #ex:Landroid/os/RemoteException;
    const-string v49, "WindowManager"

    const-string v50, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 3700
    .end local v13           #ex:Landroid/os/RemoteException;
    .restart local v48       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_2a
    :try_start_5
    const-string v49, "WindowManager"

    const-string v50, "Unable to find IVoIPInterface interface"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_c

    .line 3702
    .end local v48           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_3
    move-exception v13

    .line 3703
    .restart local v13       #ex:Landroid/os/RemoteException;
    const-string v49, "WindowManager"

    const-string v50, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 3708
    .end local v13           #ex:Landroid/os/RemoteException;
    :cond_2b
    if-nez v20, :cond_2c

    if-eqz v21, :cond_2d

    .line 3709
    :cond_2c
    const-string v49, "WindowManager"

    const-string v50, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 3711
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_c

    .line 3714
    .end local v20           #incomingRinging:Z
    .end local v21           #incomingRinging2:Z
    .end local v24           #isAnyKeyMode:Z
    .end local v27           #isVoIPRinging:Z
    :cond_2e
    const-string v49, "WindowManager"

    const-string v50, "Ignoring HOME; event canceled."

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 3724
    .end local v16           #homeWasLongPressed:Z
    .end local v17           #homeWasPressed:Z
    :cond_2f
    if-eqz v4, :cond_35

    .line 3725
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v46, v0

    .line 3726
    .local v46, type:I
    const/16 v49, 0x7d4

    move/from16 v0, v46

    move/from16 v1, v49

    if-eq v0, v1, :cond_30

    const/16 v49, 0x7d9

    move/from16 v0, v46

    move/from16 v1, v49

    if-ne v0, v1, :cond_32

    .line 3730
    :cond_30
    if-eqz v33, :cond_31

    const/16 v49, 0x7d9

    move/from16 v0, v46

    move/from16 v1, v49

    if-ne v0, v1, :cond_31

    .line 3731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->setHomeDownEventSent()V

    .line 3734
    :cond_31
    const-wide/16 v49, 0x0

    goto/16 :goto_4

    .line 3736
    :cond_32
    sget-object v49, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v49

    array-length v0, v0

    move/from16 v47, v0

    .line 3737
    .local v47, typeCount:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_d
    move/from16 v0, v18

    move/from16 v1, v47

    if-ge v0, v1, :cond_35

    .line 3738
    sget-object v49, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v49, v49, v18

    move/from16 v0, v46

    move/from16 v1, v49

    if-ne v0, v1, :cond_34

    .line 3741
    if-eqz v33, :cond_33

    .line 3742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->setHomeDownEventSent()V

    .line 3745
    :cond_33
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3737
    :cond_34
    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    .line 3750
    .end local v18           #i:I
    .end local v46           #type:I
    .end local v47           #typeCount:I
    :cond_35
    if-eqz v11, :cond_3a

    .line 3751
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v49, v0

    if-nez v49, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v49, v0

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_36

    .line 3753
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v41

    .line 3754
    .restart local v41       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v41, :cond_36

    .line 3755
    invoke-interface/range {v41 .. v41}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 3763
    .end local v41           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_36
    :goto_e
    if-nez v38, :cond_3b

    .line 3766
    const/16 v26, 0x0

    .line 3767
    .local v26, isRinging:Z
    :try_start_7
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v37

    .line 3768
    .local v37, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v37, :cond_37

    .line 3769
    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v26

    .line 3777
    :cond_37
    if-eqz v26, :cond_39

    .line 3778
    if-eqz v33, :cond_38

    .line 3779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->setHomeDownEventSent()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3781
    :cond_38
    const-wide/16 v49, 0x0

    goto/16 :goto_4

    .line 3757
    .end local v26           #isRinging:Z
    .end local v37           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_4
    move-exception v12

    .line 3758
    .restart local v12       #e:Landroid/os/RemoteException;
    const-string v49, "WindowManager"

    const-string v50, "RemoteException when preloading recent apps"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3760
    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_e

    .line 3783
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v26       #isRinging:Z
    :catch_5
    move-exception v13

    .line 3784
    .restart local v13       #ex:Landroid/os/RemoteException;
    const-string v49, "WindowManager"

    const-string v50, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3804
    .end local v13           #ex:Landroid/os/RemoteException;
    :cond_39
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3814
    .end local v26           #isRinging:Z
    :cond_3a
    :goto_f
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3805
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v49

    move/from16 v0, v49

    and-int/lit16 v0, v0, 0x80

    move/from16 v49, v0

    if-eqz v49, :cond_3a

    .line 3806
    const-string v49, "WindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Home long press behavior, keyguardOn = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ", mIsKidsModeEnabled = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsModeEnabled:Z

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ", mUsmEnabled = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUsmEnabled:Z

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    if-nez v30, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeEnabled:Z

    move/from16 v49, v0

    if-eqz v49, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsModeEnabled:Z

    move/from16 v49, v0

    if-nez v49, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUsmEnabled:Z

    move/from16 v49, v0

    if-nez v49, :cond_3a

    .line 3810
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    goto :goto_f

    .line 3815
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v33           #mSupportDoubleClick:Z
    :cond_3c
    const/16 v49, 0x52

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_44

    .line 3817
    const/4 v7, 0x1

    .line 3819
    .local v7, chordBug:I
    if-eqz v11, :cond_40

    if-nez v38, :cond_40

    .line 3820
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    .line 3821
    .restart local v35       #now:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingThresholdTime:I

    move/from16 v49, v0

    if-lez v49, :cond_3d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v49

    sub-long v49, v35, v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingThresholdTime:I

    move/from16 v51, v0

    move/from16 v0, v51

    int-to-long v0, v0

    move-wide/from16 v51, v0

    cmp-long v49, v49, v51

    if-gez v49, :cond_3d

    .line 3822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingThresholdTime:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v49, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v51

    sub-long v51, v35, v51

    sub-long v49, v49, v51

    goto/16 :goto_4

    .line 3825
    :cond_3d
    if-eqz v25, :cond_3e

    .line 3831
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v49

    const/16 v50, 0x4002

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_3e

    .line 3832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->playSoundEffect(Z)V

    .line 3838
    :cond_3e
    if-eqz v25, :cond_3f

    .line 3840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v50, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v51

    invoke-virtual/range {v49 .. v52}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3845
    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v49, v0

    if-eqz v49, :cond_40

    and-int/lit8 v49, v34, 0x1

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_40

    .line 3846
    new-instance v22, Landroid/content/Intent;

    const-string v49, "android.intent.action.BUG_REPORT"

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3847
    .local v22, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3848
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3867
    .end local v22           #intent:Landroid/content/Intent;
    .end local v35           #now:J
    :cond_40
    if-nez v11, :cond_42

    .line 3868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3869
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3871
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v49, v0

    if-eqz v49, :cond_41

    .line 3873
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3874
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3878
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar()Z

    .line 4107
    .end local v7           #chordBug:I
    :cond_42
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    move/from16 v49, v0

    if-eqz v49, :cond_63

    .line 4108
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v28

    .line 4109
    .local v28, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v28 .. v29}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v49

    if-eqz v49, :cond_63

    .line 4110
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 4111
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 4112
    if-eqz v11, :cond_43

    if-nez v38, :cond_43

    if-nez v30, :cond_43

    .line 4113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v40

    .line 4114
    .local v40, shortcutIntent:Landroid/content/Intent;
    if-eqz v40, :cond_62

    .line 4115
    const/high16 v49, 0x1000

    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4117
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_9

    .line 4128
    .end local v40           #shortcutIntent:Landroid/content/Intent;
    :cond_43
    :goto_11
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3882
    .end local v28           #kcm:Landroid/view/KeyCharacterMap;
    :cond_44
    const/16 v49, 0x54

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_47

    .line 3883
    if-eqz v11, :cond_46

    .line 3884
    if-nez v38, :cond_45

    .line 3885
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3886
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3887
    if-eqz v25, :cond_45

    if-nez v15, :cond_45

    .line 3894
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v49

    const/16 v50, 0x4002

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_45

    .line 3895
    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->playSoundEffect(Z)V

    .line 3906
    :cond_45
    const-wide/16 v49, 0x0

    goto/16 :goto_4

    .line 3900
    :cond_46
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3901
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v49, v0

    if-eqz v49, :cond_45

    .line 3902
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3903
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3907
    :cond_47
    const/16 v49, 0xbb

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_4a

    .line 3909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v49, v0

    const/16 v50, 0xbb

    invoke-virtual/range {v49 .. v50}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v49

    if-eqz v49, :cond_48

    .line 3910
    const-string v49, "WindowManager"

    const-string v50, "APP_SWITCH event isSystemKeyEventRequested() is true"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    const-wide/16 v49, 0x0

    goto/16 :goto_4

    .line 3914
    :cond_48
    if-eqz v11, :cond_49

    if-nez v38, :cond_49

    if-nez v30, :cond_49

    .line 3919
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6

    .line 3925
    :cond_49
    :goto_12
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3920
    :catch_6
    move-exception v12

    .line 3921
    .restart local v12       #e:Landroid/os/RemoteException;
    const-string v49, "WindowManager"

    const-string v50, "RemoteException when showing recent apps"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 3926
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_4a
    const/16 v49, 0xdb

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_4f

    .line 3927
    if-eqz v11, :cond_4d

    .line 3928
    if-nez v38, :cond_4c

    .line 3929
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3945
    :cond_4b
    :goto_13
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3930
    :cond_4c
    const/16 v49, 0x1

    move/from16 v0, v38

    move/from16 v1, v49

    if-ne v0, v1, :cond_4b

    .line 3931
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3932
    if-nez v30, :cond_4b

    .line 3933
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_13

    .line 3937
    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    move/from16 v49, v0

    if-eqz v49, :cond_4e

    .line 3938
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_13

    .line 3940
    :cond_4e
    if-nez v30, :cond_4b

    .line 3941
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_13

    .line 3947
    :cond_4f
    const/16 v49, 0x4

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_56

    .line 3948
    if-eqz v11, :cond_54

    .line 3949
    if-nez v38, :cond_51

    .line 3950
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    .line 3951
    .restart local v35       #now:J
    and-int/lit16 v0, v14, 0x400

    move/from16 v49, v0

    if-nez v49, :cond_50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingThresholdTime:I

    move/from16 v49, v0

    if-lez v49, :cond_50

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v49

    sub-long v49, v35, v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingThresholdTime:I

    move/from16 v51, v0

    move/from16 v0, v51

    int-to-long v0, v0

    move-wide/from16 v51, v0

    cmp-long v49, v49, v51

    if-gez v49, :cond_50

    .line 3953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingThresholdTime:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v49, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v51

    sub-long v51, v35, v51

    sub-long v49, v49, v51

    goto/16 :goto_4

    .line 3956
    :cond_50
    if-eqz v25, :cond_42

    .line 3962
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v49

    const/16 v50, 0x4002

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_42

    .line 3963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->playSoundEffect(Z)V

    goto/16 :goto_10

    .line 3966
    .end local v35           #now:J
    :cond_51
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    move/from16 v49, v0

    if-eqz v49, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    move/from16 v49, v0

    if-eqz v49, :cond_42

    .line 3968
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUsmEnabled:Z

    move/from16 v49, v0

    if-eqz v49, :cond_53

    .line 3969
    sget-boolean v49, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v49, :cond_52

    const-string v49, "WindowManager"

    const-string v50, "USM is on, ignore long press BACK key!"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    :cond_52
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3974
    :cond_53
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v49

    if-eqz v49, :cond_42

    .line 3975
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleBackLongPress()V

    .line 3976
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3980
    :cond_54
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    move/from16 v49, v0

    if-eqz v49, :cond_55

    .line 3981
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 3982
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3984
    :cond_55
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar()Z

    move-result v49

    if-eqz v49, :cond_42

    .line 3985
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 3993
    :cond_56
    const/16 v49, 0xe6

    move/from16 v0, v29

    move/from16 v1, v49

    if-eq v0, v1, :cond_57

    const/16 v49, 0xe7

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_59

    .line 3995
    :cond_57
    if-eqz v11, :cond_42

    if-nez v30, :cond_42

    .line 3996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "input_method"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/inputmethod/InputMethodManager;

    .line 3998
    .local v19, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_58

    .line 3999
    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->setBrightnessWithKeyboard(I)V

    .line 4001
    :cond_58
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 4005
    .end local v19           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_59
    const/16 v49, 0xdf

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_5c

    .line 4006
    if-eqz v11, :cond_42

    if-nez v30, :cond_42

    .line 4007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v49, v0

    if-nez v49, :cond_5a

    .line 4012
    const-string v49, "statusbar"

    invoke-static/range {v49 .. v49}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 4015
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v49, v0

    if-eqz v49, :cond_5b

    .line 4017
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    .line 4023
    :cond_5b
    :goto_14
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 4018
    :catch_7
    move-exception v12

    .line 4020
    .restart local v12       #e:Landroid/os/RemoteException;
    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_14

    .line 4026
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_5c
    const/16 v49, 0xe1

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_61

    .line 4027
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v49

    if-eqz v49, :cond_5d

    if-eqz v11, :cond_5d

    if-eqz v30, :cond_5e

    :cond_5d
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v49

    if-nez v49, :cond_42

    if-eqz v11, :cond_42

    if-nez v30, :cond_42

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    move/from16 v49, v0

    if-nez v49, :cond_42

    .line 4029
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v49, v0

    if-nez v49, :cond_5f

    .line 4034
    const-string v49, "statusbar"

    invoke-static/range {v49 .. v49}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 4036
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v49, v0

    if-eqz v49, :cond_60

    .line 4038
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    .line 4044
    :cond_60
    :goto_15
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 4039
    :catch_8
    move-exception v12

    .line 4041
    .restart local v12       #e:Landroid/os/RemoteException;
    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_15

    .line 4047
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_61
    const/16 v49, 0xef

    move/from16 v0, v29

    move/from16 v1, v49

    if-eq v0, v1, :cond_42

    .line 4093
    const/16 v49, 0xf1

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_42

    .line 4094
    const-string v49, "WindowManager"

    const-string v50, "PWM => KEYCODE_PROJECTOR"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 4096
    .local v8, componentName:Landroid/content/ComponentName;
    if-eqz v8, :cond_42

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v49

    const-string v50, "com.sec.android.app.simplefunctiontest.KeypadTest_Gavini"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_42

    .line 4097
    const-wide/16 v49, 0x0

    goto/16 :goto_4

    .line 4118
    .end local v8           #componentName:Landroid/content/ComponentName;
    .restart local v28       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v40       #shortcutIntent:Landroid/content/Intent;
    :catch_9
    move-exception v13

    .line 4119
    .local v13, ex:Landroid/content/ActivityNotFoundException;
    const-string v49, "WindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static/range {v29 .. v29}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 4124
    .end local v13           #ex:Landroid/content/ActivityNotFoundException;
    :cond_62
    const-string v49, "WindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static/range {v29 .. v29}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 4133
    .end local v28           #kcm:Landroid/view/KeyCharacterMap;
    .end local v40           #shortcutIntent:Landroid/content/Intent;
    :cond_63
    if-eqz v11, :cond_64

    if-nez v38, :cond_64

    if-nez v30, :cond_64

    const/high16 v49, 0x1

    and-int v49, v49, v34

    if-eqz v49, :cond_64

    .line 4135
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v28

    .line 4136
    .restart local v28       #kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v28 .. v29}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v49

    if-eqz v49, :cond_64

    .line 4137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v49, v0

    const v50, -0x70001

    and-int v50, v50, v34

    move-object/from16 v0, v49

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v40

    .line 4140
    .restart local v40       #shortcutIntent:Landroid/content/Intent;
    if-eqz v40, :cond_64

    .line 4141
    const/high16 v49, 0x1000

    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4143
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_c} :catch_a

    .line 4149
    :goto_16
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 4144
    :catch_a
    move-exception v13

    .line 4145
    .restart local v13       #ex:Landroid/content/ActivityNotFoundException;
    const-string v49, "WindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static/range {v29 .. v29}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 4155
    .end local v13           #ex:Landroid/content/ActivityNotFoundException;
    .end local v28           #kcm:Landroid/view/KeyCharacterMap;
    .end local v40           #shortcutIntent:Landroid/content/Intent;
    :cond_64
    if-eqz v11, :cond_66

    if-nez v38, :cond_66

    if-nez v30, :cond_66

    .line 4156
    sget-object v49, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4157
    .local v6, category:Ljava/lang/String;
    const-string v49, "ro.product.device"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4158
    .local v9, device:Ljava/lang/String;
    if-eqz v6, :cond_65

    const-string v49, "android.intent.category.APP_MUSIC"

    move-object/from16 v0, v49

    if-ne v6, v0, :cond_65

    const-string v49, "ivory"

    move-object/from16 v0, v49

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_65

    .line 4159
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v42

    .line 4160
    .restart local v42       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v42, :cond_65

    .line 4162
    :try_start_d
    invoke-interface/range {v42 .. v42}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b

    move-result v49

    if-nez v49, :cond_65

    .line 4164
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 4166
    :catch_b
    move-exception v13

    .line 4167
    .local v13, ex:Landroid/os/RemoteException;
    const-string v49, "WindowManager"

    const-string v50, "ITelephony threw RemoteException"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4186
    .end local v13           #ex:Landroid/os/RemoteException;
    .end local v42           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_65
    if-eqz v6, :cond_66

    .line 4187
    const-string v49, "android.intent.action.MAIN"

    move-object/from16 v0, v49

    invoke-static {v0, v6}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    .line 4188
    .restart local v22       #intent:Landroid/content/Intent;
    const/high16 v49, 0x1000

    move-object/from16 v0, v22

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4190
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_e} :catch_c

    .line 4196
    :goto_17
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 4191
    :catch_c
    move-exception v13

    .line 4192
    .local v13, ex:Landroid/content/ActivityNotFoundException;
    const-string v49, "WindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ", category="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 4201
    .end local v6           #category:Ljava/lang/String;
    .end local v9           #device:Ljava/lang/String;
    .end local v13           #ex:Landroid/content/ActivityNotFoundException;
    .end local v22           #intent:Landroid/content/Intent;
    :cond_66
    if-eqz v11, :cond_68

    if-nez v38, :cond_68

    const/16 v49, 0x3d

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_68

    .line 4202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v49, v0

    if-nez v49, :cond_69

    if-nez v30, :cond_69

    .line 4203
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v49

    move/from16 v0, v49

    and-int/lit16 v0, v0, -0xc2

    move/from16 v39, v0

    .line 4204
    .local v39, shiftlessModifiers:I
    const/16 v49, 0x2

    move/from16 v0, v39

    move/from16 v1, v49

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v49

    if-nez v49, :cond_67

    const/high16 v49, 0x1

    move/from16 v0, v39

    move/from16 v1, v49

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v49

    if-eqz v49, :cond_69

    .line 4207
    :cond_67
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 4213
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_d

    .line 4218
    :goto_18
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 4214
    :catch_d
    move-exception v12

    .line 4215
    .restart local v12       #e:Landroid/os/RemoteException;
    const-string v49, "WindowManager"

    const-string v50, "RemoteException when showing recent apps"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 4221
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v39           #shiftlessModifiers:I
    :cond_68
    if-nez v11, :cond_69

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v49, v0

    if-eqz v49, :cond_69

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v49, v0

    and-int v49, v49, v34

    if-nez v49, :cond_69

    .line 4223
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 4230
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_e

    .line 4238
    :cond_69
    :goto_19
    if-eqz v11, :cond_6c

    if-nez v38, :cond_6c

    const/16 v49, 0xcc

    move/from16 v0, v29

    move/from16 v1, v49

    if-eq v0, v1, :cond_6a

    const/16 v49, 0x3e

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_6c

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0x7000

    move/from16 v49, v0

    if-eqz v49, :cond_6c

    .line 4242
    :cond_6a
    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xc1

    move/from16 v49, v0

    if-eqz v49, :cond_6b

    const/4 v10, -0x1

    .line 4243
    .local v10, direction:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v49, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v50

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-interface {v0, v1, v10}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 4244
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 4231
    .end local v10           #direction:I
    :catch_e
    move-exception v12

    .line 4232
    .restart local v12       #e:Landroid/os/RemoteException;
    const-string v49, "WindowManager"

    const-string v50, "RemoteException when showing recent apps"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 4242
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_6b
    const/4 v10, 0x1

    goto :goto_1a

    .line 4246
    :cond_6c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    move/from16 v49, v0

    if-eqz v49, :cond_6e

    if-nez v11, :cond_6e

    const/16 v49, 0xcc

    move/from16 v0, v29

    move/from16 v1, v49

    if-eq v0, v1, :cond_6d

    const/16 v49, 0x3e

    move/from16 v0, v29

    move/from16 v1, v49

    if-ne v0, v1, :cond_6e

    .line 4249
    :cond_6d
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 4250
    const-wide/16 v49, -0x1

    goto/16 :goto_4

    .line 4269
    :cond_6e
    const-wide/16 v49, 0x0

    goto/16 :goto_4
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 33
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 6360
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v29

    if-nez v29, :cond_2

    const/4 v5, 0x1

    .line 6361
    .local v5, down:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 6362
    .local v4, canceled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    .line 6363
    .local v18, keyCode:I
    const/16 v27, 0x0

    .line 6367
    .local v27, torchEnable:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    .line 6368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 6369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "enterprise_policy"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 6372
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    .line 6373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v20

    .line 6374
    .local v20, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v20, :cond_4

    .line 6375
    const/4 v11, 0x1

    .line 6376
    .local v11, isAllowed:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v29

    if-nez v29, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v29

    if-nez v29, :cond_3

    .line 6377
    const/16 v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v11

    .line 6381
    :goto_1
    if-nez v11, :cond_4

    .line 6382
    const/16 v24, 0x0

    .line 7150
    .end local v11           #isAllowed:Z
    .end local v20           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    :goto_2
    return v24

    .line 6360
    .end local v4           #canceled:Z
    .end local v5           #down:Z
    .end local v18           #keyCode:I
    .end local v27           #torchEnable:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 6379
    .restart local v4       #canceled:Z
    .restart local v5       #down:Z
    .restart local v11       #isAllowed:Z
    .restart local v18       #keyCode:I
    .restart local v20       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .restart local v27       #torchEnable:Z
    :cond_3
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v11

    goto :goto_1

    .line 6388
    .end local v11           #isAllowed:Z
    .end local v20           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_4
    const/high16 v29, 0x100

    and-int v29, v29, p2

    if-eqz v29, :cond_5

    const/4 v12, 0x1

    .line 6391
    .local v12, isInjected:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v29, v0

    if-nez v29, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    move/from16 v29, v0

    if-nez v29, :cond_6

    const/4 v14, 0x1

    .line 6392
    .local v14, isPhoneAndHasHardKey:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    const/4 v8, 0x1

    .line 6400
    .local v8, hasQwertyKeyboard:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v29, v0

    if-nez v29, :cond_8

    const/16 v19, 0x0

    .line 6405
    .local v19, keyguardActive:Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v29, v0

    if-nez v29, :cond_a

    .line 6407
    const/16 v24, 0x0

    goto :goto_2

    .line 6388
    .end local v8           #hasQwertyKeyboard:Z
    .end local v12           #isInjected:Z
    .end local v14           #isPhoneAndHasHardKey:Z
    .end local v19           #keyguardActive:Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    .line 6391
    .restart local v12       #isInjected:Z
    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 6392
    .restart local v14       #isPhoneAndHasHardKey:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 6400
    .restart local v8       #hasQwertyKeyboard:Z
    :cond_8
    if-eqz p3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v19

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v19

    goto :goto_6

    .line 6415
    .restart local v19       #keyguardActive:Z
    :cond_a
    if-eqz v5, :cond_b

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    if-eqz v29, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v29

    if-nez v29, :cond_b

    .line 6425
    :cond_b
    const/16 v29, 0x1a

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 6426
    or-int/lit8 p2, p2, 0x1

    .line 6428
    :cond_c
    and-int/lit8 v29, p2, 0x3

    if-eqz v29, :cond_d

    const/16 v17, 0x1

    .line 6443
    .local v17, isWakeKey:Z
    :goto_7
    const/16 v24, 0x1

    .line 6445
    .local v24, result:I
    const/16 v29, 0x1a

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    .line 6446
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedInputMode()Z

    move-result v29

    if-nez v29, :cond_e

    .line 6447
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMtpRunning()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 6448
    and-int/lit8 v24, v24, -0x2

    .line 6449
    goto/16 :goto_2

    .line 6428
    .end local v17           #isWakeKey:Z
    .end local v24           #result:I
    :cond_d
    const/16 v17, 0x0

    goto :goto_7

    .line 6454
    .restart local v17       #isWakeKey:Z
    .restart local v24       #result:I
    :cond_e
    const/16 v29, 0x4

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    const/16 v29, 0x52

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 6455
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStateGlance:Z

    move/from16 v29, v0

    if-eqz v29, :cond_10

    .line 6456
    const-string v29, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " Because of the glance. Ignore keyCode : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " keyguardActive is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6457
    and-int/lit8 v24, v24, -0x2

    .line 6458
    goto/16 :goto_2

    .line 6462
    :cond_10
    if-eqz p3, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    move/from16 v29, v0

    if-eqz v29, :cond_12

    :cond_11
    if-eqz v12, :cond_13

    if-nez v17, :cond_13

    .line 6464
    :cond_12
    const/16 v24, 0x1

    .line 6466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnorePowerKey:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1b

    const/16 v29, 0x1a

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    .line 6467
    const-string v29, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ignore screen on : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6468
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 6474
    :cond_13
    const/16 v24, 0x0

    .line 6475
    if-eqz v5, :cond_1a

    if-eqz v17, :cond_1a

    .line 6478
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnoreKeys:Z

    move/from16 v29, v0

    if-eqz v29, :cond_18

    const/16 v29, 0x1a

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_14

    const/16 v29, 0x3

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    .line 6480
    :cond_14
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnoreKeysTimeout:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x2bc

    add-long v29, v29, v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    cmp-long v29, v29, v31

    if-lez v29, :cond_17

    .line 6481
    const-string v29, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ignore screen off : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6483
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    move/from16 v29, v0

    if-eqz v29, :cond_16

    .line 6484
    sget-boolean v29, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v29, :cond_15

    const-string v29, "WindowManager"

    const-string v30, "set wakeup reason by powerkey"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6485
    :cond_15
    const/16 v29, 0x3e9

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnReason:I

    .line 6488
    :cond_16
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowLockScreen:Z

    .line 6489
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 6491
    :cond_17
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowLockScreen:Z

    .line 6492
    const-wide/16 v29, 0x0

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnoreKeysTimeout:J

    .line 6498
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    move/from16 v29, v0

    if-eqz v29, :cond_19

    const/16 v29, 0x1a

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v29

    if-nez v29, :cond_19

    .line 6500
    new-instance v10, Landroid/content/Intent;

    const-string v29, "android.intent.action.CAMERA_BUTTON"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6501
    .local v10, intent:Landroid/content/Intent;
    const-string v29, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6502
    const-string v29, "com.sec.android.app.camera"

    const-string v30, "com.sec.android.app.camera.CameraButtonIntentReceiver"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6507
    .end local v10           #intent:Landroid/content/Intent;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1c

    const/16 v29, 0x1b

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v29

    if-nez v29, :cond_1c

    .line 6510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLongPress:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v31

    invoke-virtual/range {v29 .. v32}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6566
    :cond_1a
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1b

    const/16 v29, 0x1b

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    if-nez v5, :cond_1b

    .line 6568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLongPress:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6573
    :cond_1b
    const/16 v29, 0x3

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    const-string v29, "true"

    const-string v30, "ril.domesticOtaStart"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 6575
    const-string v29, "LGT"

    const-string v30, "UNICOM"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 6576
    const-string v29, "18"

    const-string v30, "ril.simtype"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 6577
    const-string v29, "WindowManager"

    const-string v30, " SKIP system key utill the USIM is initilized."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6578
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 6512
    :cond_1c
    if-eqz v27, :cond_20

    const/16 v29, 0x18

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_1d

    const/16 v29, 0x19

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    .line 6513
    :cond_1d
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 6514
    .local v26, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v26, :cond_1e

    .line 6516
    :try_start_0
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v29

    if-nez v29, :cond_1e

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    if-nez v29, :cond_1e

    .line 6518
    const/16 v24, 0x4

    .line 6525
    :cond_1e
    :goto_9
    const/16 v29, 0x18

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    .line 6527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v31

    invoke-virtual/range {v29 .. v32}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_8

    .line 6520
    :catch_0
    move-exception v6

    .line 6521
    .local v6, ex:Landroid/os/RemoteException;
    const-string v29, "WindowManager"

    const-string v30, "ITelephony threw RemoteException"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 6531
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 6535
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    move/from16 v29, v0

    if-eqz v29, :cond_22

    .line 6536
    sget-boolean v29, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v29, :cond_21

    const-string v29, "WindowManager"

    const-string v30, "set wakeup reason by powerkey"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6537
    :cond_21
    const/16 v29, 0x3e9

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnReason:I

    .line 6542
    :cond_22
    if-eqz v19, :cond_23

    .line 6545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v18

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    goto/16 :goto_8

    .line 6551
    :cond_23
    or-int/lit8 v24, v24, 0x2

    .line 6554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v18

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardHiding(IZ)Z

    move-result v29

    if-nez v29, :cond_1a

    .line 6557
    and-int/lit8 v24, v24, -0x3

    goto/16 :goto_8

    .line 6583
    :cond_24
    const/16 v29, 0x3

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    const-string v29, "LGT"

    const-string v30, "UNICOM"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_25

    const-string v29, "lock"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "missing_phone_lock"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_25

    .line 6586
    const-string v29, "WindowManager"

    const-string v30, " SKIP system key phone lock state"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6587
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 6592
    :cond_25
    sparse-switch v18, :sswitch_data_0

    goto/16 :goto_2

    .line 7139
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v25

    .line 7140
    .local v25, scanCode:I
    const-string v29, "FakeShutdown"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unknown : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7141
    packed-switch v25, :pswitch_data_0

    goto/16 :goto_2

    .line 7143
    :pswitch_0
    if-nez v5, :cond_1

    .line 7145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPressWhenFake:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 6617
    .end local v25           #scanCode:I
    :sswitch_1
    const/16 v29, 0x19

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_26

    const/16 v29, 0xa9

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_29

    .line 6619
    :cond_26
    if-eqz v5, :cond_28

    .line 6620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v29, v0

    if-nez v29, :cond_27

    .line 6621
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 6622
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 6623
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6624
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 6625
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByOneTouchReportChord:Z

    .line 6626
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptOneTouchReportChord()V

    .line 6627
    if-eqz p3, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v29

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x400

    move/from16 v29, v0

    if-nez v29, :cond_27

    .line 6628
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 6629
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 6661
    :cond_27
    :goto_a
    if-eqz v5, :cond_2d

    .line 6662
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 6663
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v28

    .line 6664
    .local v28, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v26, :cond_2c

    .line 6666
    :try_start_1
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v29

    if-eqz v29, :cond_2c

    .line 6673
    const-string v29, "WindowManager"

    const-string v30, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6678
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6682
    and-int/lit8 v24, v24, -0x2

    goto/16 :goto_2

    .line 6633
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v28           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_28
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 6634
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6635
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 6636
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingOneTouchReportChordAction()V

    goto :goto_a

    .line 6638
    :cond_29
    const/16 v29, 0x18

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_2a

    const/16 v29, 0xa8

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    .line 6640
    :cond_2a
    if-eqz v5, :cond_2b

    .line 6641
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v29, v0

    if-nez v29, :cond_27

    .line 6642
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 6643
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    .line 6644
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6645
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6646
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByOneTouchReportChord:Z

    .line 6647
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptOneTouchReportChord()V

    .line 6648
    if-eqz p3, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v29

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x400

    move/from16 v29, v0

    if-nez v29, :cond_27

    .line 6649
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 6650
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenRecordChord()V

    goto/16 :goto_a

    .line 6654
    :cond_2b
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 6655
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6656
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 6657
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingOneTouchReportChordAction()V

    goto/16 :goto_a

    .line 6698
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .restart local v28       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_1
    move-exception v6

    .line 6699
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v29, "WindowManager"

    const-string v30, "ITelephony threw RemoteException"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6743
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    .line 6744
    new-instance v29, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    .line 6745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 6746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->start()V

    goto/16 :goto_2

    .line 6751
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v28           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    .line 6752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 6753
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    goto/16 :goto_2

    .line 6761
    :sswitch_2
    and-int/lit8 v24, v24, -0x2

    .line 6762
    if-eqz v5, :cond_31

    .line 6763
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 6764
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v9, 0x0

    .line 6765
    .local v9, hungUp:Z
    if-eqz v26, :cond_2e

    .line 6767
    :try_start_2
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    .line 6783
    :cond_2e
    :goto_b
    if-eqz p3, :cond_2f

    if-eqz v9, :cond_30

    :cond_2f
    const/16 v29, 0x1

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_2

    .line 6768
    :catch_2
    move-exception v6

    .line 6769
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v29, "WindowManager"

    const-string v30, "ITelephony threw RemoteException"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 6783
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_30
    const/16 v29, 0x0

    goto :goto_c

    .line 6785
    .end local v9           #hungUp:Z
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_31
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 6786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_32

    .line 6788
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v29

    if-nez v29, :cond_1

    .line 6792
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x2

    if-eqz v29, :cond_1

    .line 6794
    and-int/lit8 v29, v24, -0x3

    or-int/lit8 v24, v29, 0x4

    goto/16 :goto_2

    .line 6802
    :sswitch_3
    and-int/lit8 v24, v24, -0x2

    .line 6803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->fakeState()I

    move-result v7

    .line 6804
    .local v7, fakeState:I
    if-eqz v5, :cond_3f

    .line 6805
    const-string v29, "WindowManager"

    const-string v30, "KeyEvent.KEYCODE_POWER"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6806
    if-eqz v7, :cond_34

    .line 6807
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v7, v0, :cond_33

    .line 6808
    const-string v29, "FakeShutdown"

    const-string v30, "PWM : is Fake sleep mode"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6809
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 6810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPressWhenFake:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v31

    invoke-virtual/range {v29 .. v32}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6811
    const/16 v24, 0x0

    .line 6812
    goto/16 :goto_2

    .line 6815
    :cond_33
    const/16 v24, 0x0

    .line 6816
    goto/16 :goto_2

    .line 6820
    :cond_34
    if-eqz p3, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v29, v0

    if-nez v29, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v29

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x400

    move/from16 v29, v0

    if-nez v29, :cond_35

    .line 6822
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 6823
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 6824
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 6825
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenRecordChord()V

    .line 6829
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    invoke-interface/range {v29 .. v30}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWakeFlag(I)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    .line 6830
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    move/from16 v29, v0

    if-eqz v29, :cond_38

    if-eqz v14, :cond_38

    const/16 v16, 0x1

    .line 6833
    .local v16, isScreenOnPolicy:Z
    :goto_d
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 6834
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v28

    .line 6835
    .restart local v28       #voipInterfaceService:Landroid/os/IVoIPInterface;
    const/4 v9, 0x0

    .line 6836
    .restart local v9       #hungUp:Z
    if-eqz v26, :cond_36

    .line 6837
    const/4 v15, 0x0

    .line 6838
    .local v15, isRinging:Z
    const/4 v13, 0x0

    .line 6841
    .local v13, isOffhook:Z
    :try_start_3
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v13

    .line 6842
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v15

    .line 6855
    :goto_e
    if-eqz v15, :cond_3a

    .line 6858
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isCoverOpen()Z

    move-result v29

    if-eqz v29, :cond_39

    .line 6859
    const-string v29, "KOR"

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_36

    .line 6860
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 6908
    .end local v13           #isOffhook:Z
    .end local v15           #isRinging:Z
    :cond_36
    :goto_f
    if-eqz p3, :cond_37

    if-nez v9, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3e

    :cond_37
    const/16 v29, 0x1

    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 6913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v29, v0

    const/16 v30, 0x1a

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 6914
    const-string v29, "WindowManager"

    const-string v30, "in interceptKeyBeforeQueueing() KEYCODE_POWER Down event isSystemKeyEventRequested() is true"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6915
    or-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 6830
    .end local v9           #hungUp:Z
    .end local v16           #isScreenOnPolicy:Z
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v28           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_38
    const/16 v16, 0x0

    goto :goto_d

    .line 6843
    .restart local v9       #hungUp:Z
    .restart local v13       #isOffhook:Z
    .restart local v15       #isRinging:Z
    .restart local v16       #isScreenOnPolicy:Z
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .restart local v28       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_3
    move-exception v23

    .line 6844
    .local v23, re:Landroid/os/RemoteException;
    const-string v29, "WindowManager"

    const-string v30, "ITelephony threw RemoteException:"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 6863
    .end local v23           #re:Landroid/os/RemoteException;
    :cond_39
    or-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 6866
    :cond_3a
    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x2

    if-eqz v29, :cond_3c

    if-eqz v13, :cond_3c

    if-nez p3, :cond_3b

    if-eqz v16, :cond_3c

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isRingingInDualMode()Z

    move-result v29

    if-nez v29, :cond_3c

    .line 6873
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v9

    goto :goto_f

    .line 6875
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x2

    if-eqz v29, :cond_36

    invoke-interface/range {v28 .. v28}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v29

    if-nez v29, :cond_3d

    invoke-interface/range {v28 .. v28}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v29

    if-eqz v29, :cond_36

    .line 6879
    :cond_3d
    invoke-interface/range {v28 .. v28}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v9

    goto :goto_f

    .line 6882
    :catch_4
    move-exception v6

    .line 6883
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v29, "WindowManager"

    const-string v30, "ITelephony threw RemoteException"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 6908
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v13           #isOffhook:Z
    .end local v15           #isRinging:Z
    :cond_3e
    const/16 v29, 0x0

    goto :goto_10

    .line 6919
    .end local v9           #hungUp:Z
    .end local v16           #isScreenOnPolicy:Z
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v28           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_3f
    if-eqz v7, :cond_41

    .line 6920
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v7, v0, :cond_40

    .line 6921
    const-string v29, "FakeShutdown"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "PWM : is fakestate : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPressWhenFake:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6924
    :try_start_6
    const-string v29, "power"

    invoke-static/range {v29 .. v29}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v22

    .line 6925
    .local v22, powerManagerService:Landroid/os/IPowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v29

    const/16 v31, 0x5

    move-object/from16 v0, v22

    move-wide/from16 v1, v29

    move/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->goToSleepWithReason(JI)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 6928
    .end local v22           #powerManagerService:Landroid/os/IPowerManager;
    :goto_11
    const/16 v24, 0x0

    .line 6929
    goto/16 :goto_2

    .line 6932
    :cond_40
    const-string v29, "FakeShutdown"

    const-string v30, "PWM : should wake up, ACTION_PASS_TO_USER"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6933
    const/16 v24, 0x0

    .line 6934
    goto/16 :goto_2

    .line 6938
    :cond_41
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 6939
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6940
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 6941
    if-nez v4, :cond_42

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_45

    :cond_42
    const/16 v29, 0x1

    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v29

    if-eqz v29, :cond_43

    .line 6942
    and-int/lit8 v29, v24, -0x3

    or-int/lit8 v24, v29, 0x4

    .line 6946
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v29, v0

    const/16 v30, 0x1a

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v29

    if-eqz v29, :cond_44

    .line 6947
    const-string v29, "WindowManager"

    const-string v30, "in interceptKeyBeforeQueueing() KEYCODE_POWER Up event isSystemKeyEventRequested() is true"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6948
    or-int/lit8 v24, v24, 0x1

    .line 6949
    and-int/lit8 v24, v24, -0x5

    .line 6952
    :cond_44
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto/16 :goto_2

    .line 6941
    :cond_45
    const/16 v29, 0x0

    goto :goto_12

    .line 6960
    .end local v7           #fakeState:I
    :sswitch_4
    if-eqz v5, :cond_46

    .line 6961
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 6962
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v26, :cond_46

    .line 6964
    :try_start_7
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v29

    if-eqz v29, :cond_1

    .line 6991
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_46
    :goto_13
    :sswitch_5
    const/16 v29, 0x4f

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_47

    const-string v29, "ril.factory_mode"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "PBA"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_47

    .line 6993
    const-string v29, "WindowManager"

    const-string v30, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 6969
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_5
    move-exception v6

    .line 6970
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v29, "WindowManager"

    const-string v30, "ITelephony threw RemoteException"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 7004
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_47
    :sswitch_6
    and-int/lit8 v29, v24, 0x1

    if-nez v29, :cond_1

    .line 7010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    new-instance v31, Landroid/view/KeyEvent;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual/range {v29 .. v31}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 7013
    .local v21, msg:Landroid/os/Message;
    const/16 v29, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7014
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 7019
    .end local v21           #msg:Landroid/os/Message;
    :sswitch_7
    if-eqz v5, :cond_1

    .line 7020
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 7021
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v26, :cond_1

    .line 7023
    :try_start_8
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 7024
    const-string v29, "WindowManager"

    const-string v30, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7026
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 7030
    and-int/lit8 v24, v24, -0x2

    goto/16 :goto_2

    .line 7032
    :catch_6
    move-exception v6

    .line 7033
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v29, "WindowManager"

    const-string v30, "ITelephony threw RemoteException"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 7061
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_8
    if-eqz v14, :cond_1

    .line 7062
    if-eqz v5, :cond_4b

    .line 7064
    if-nez v17, :cond_48

    .line 7068
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->playSoundEffect(Z)V

    .line 7071
    :cond_48
    if-eqz p3, :cond_49

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    move/from16 v29, v0

    if-nez v29, :cond_49

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v29

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x400

    move/from16 v29, v0

    if-nez v29, :cond_49

    .line 7073
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    .line 7074
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTime:J

    .line 7075
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 7076
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 7077
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 7078
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 7079
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenRecordChord()V

    .line 7081
    :cond_49
    if-nez p3, :cond_4a

    .line 7082
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeEnabled:Z

    goto/16 :goto_2

    .line 7084
    :cond_4a
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeEnabled:Z

    goto/16 :goto_2

    .line 7087
    :cond_4b
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyTriggered:Z

    .line 7088
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 7089
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    goto/16 :goto_2

    .line 7099
    :sswitch_9
    if-eqz v5, :cond_1

    .line 7100
    if-eqz v14, :cond_1

    .line 7107
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v29

    const/16 v30, 0x4002

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1

    .line 7108
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->playSoundEffect(Z)V

    goto/16 :goto_2

    .line 7134
    :sswitch_a
    const/16 v24, 0x1

    .line 7135
    goto/16 :goto_2

    .line 6926
    .restart local v7       #fakeState:I
    :catch_7
    move-exception v29

    goto/16 :goto_11

    .line 6592
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_8
        0x5 -> :sswitch_7
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x4f -> :sswitch_5
        0x55 -> :sswitch_4
        0x56 -> :sswitch_6
        0x57 -> :sswitch_6
        0x58 -> :sswitch_6
        0x59 -> :sswitch_6
        0x5a -> :sswitch_6
        0x5b -> :sswitch_6
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_6
        0xa4 -> :sswitch_1
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_1
        0xbb -> :sswitch_9
        0xef -> :sswitch_a
    .end sparse-switch

    .line 7141
    :pswitch_data_0
    .packed-switch 0x240
        :pswitch_0
    .end packed-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 3
    .parameter "policyFlags"

    .prologue
    .line 7163
    const/4 v1, 0x0

    .line 7165
    .local v1, result:I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 7167
    .local v0, isWakeMotion:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 7168
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7170
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeMotionWhenKeyguardShowingTq()Z

    .line 7176
    :cond_0
    :goto_1
    return v1

    .line 7165
    .end local v0           #isWakeMotion:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 7173
    .restart local v0       #isWakeMotion:Z
    :cond_2
    or-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public interceptMotionBeforeQueueingWhenScreenOn(I)I
    .locals 2
    .parameter "policyFlags"

    .prologue
    .line 7156
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7157
    const/4 v0, 0x0

    return v0
.end method

.method public isCoverOpen()Z
    .locals 1

    .prologue
    .line 2859
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1739
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isFMActive()Z
    .locals 3

    .prologue
    .line 6146
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6147
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 6148
    const-string v1, "WindowManager"

    const-string v2, "isFMActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    const/4 v1, 0x0

    .line 6151
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 7592
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardReady()Z
    .locals 1

    .prologue
    .line 9345
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 9346
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isKeyguardReady()Z

    move-result v0

    .line 9348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 7597
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7598
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 6134
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6135
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 6136
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6137
    const/4 v1, 0x0

    .line 6139
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isNavigationBarVisible()Z
    .locals 1

    .prologue
    .line 8491
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8492
    const/4 v0, 0x1

    .line 8494
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRingingInDualMode()Z
    .locals 1

    .prologue
    .line 9417
    const/4 v0, 0x0

    .line 9445
    .local v0, isRinging:Z
    return v0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    .prologue
    .line 7562
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    .prologue
    .line 7567
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isScreenSaverEnabled()Z
    .locals 1

    .prologue
    .line 8030
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverFeatureAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverEnabledByUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPluggedIn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 8482
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8483
    const/4 v0, 0x1

    .line 8485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "componentName"

    .prologue
    .line 8748
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 3414
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchHome()V
    .locals 2

    .prologue
    .line 9396
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "launchHome()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9399
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9402
    :goto_0
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 9403
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    .line 9404
    return-void

    .line 9400
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 2

    .prologue
    .line 4402
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4404
    const-string v0, "WindowManager"

    const-string v1, "Disabled Home Launching Case #1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4432
    :goto_0
    return-void

    .line 4405
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4408
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    .line 4426
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4429
    :goto_1
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4430
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    .line 4427
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 6
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    .line 4975
    const/4 v4, 0x0

    sget v5, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V

    .line 4976
    return-void
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 44
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"
    .parameter "baseAttrs"
    .parameter "windowMode"

    .prologue
    .line 4984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 5518
    :cond_0
    :goto_0
    return-void

    .line 4987
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_16

    const/16 v37, 0x1

    .line 4989
    .local v37, needsToOffsetInputMethodTarget:Z
    :goto_1
    if-eqz v37, :cond_2

    .line 4993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4996
    :cond_2
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4997
    .local v4, fl:I
    move-object/from16 v0, p2

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4998
    .local v5, sim:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v41

    .line 5000
    .local v41, sysUiFl:I
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 5001
    .local v8, pf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 5002
    .local v9, df:Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 5003
    .local v10, cf:Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 5005
    .local v11, vf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v34, 0x1

    .line 5009
    .local v34, hasNavBar:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v33, 0x1

    .line 5010
    .local v33, hasFlashBoard:Z
    :goto_3
    and-int/lit16 v15, v5, 0xf0

    .line 5012
    .local v15, adjust:I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_19

    .line 5013
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5014
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5015
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5016
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5018
    const/16 v2, 0x50

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5019
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 5021
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5022
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsNotifySip:Z

    .line 5262
    :goto_4
    if-eqz p4, :cond_6

    .line 5263
    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_4

    .line 5264
    :cond_3
    move-object/from16 v0, p4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5265
    move-object/from16 v0, p4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5267
    :cond_4
    move-object/from16 v0, p4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5268
    move-object/from16 v0, p4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5270
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_5

    .line 5271
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5274
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 5277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5283
    :cond_6
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_7

    .line 5284
    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5285
    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5289
    :cond_7
    const/16 v26, 0x0

    .line 5290
    .local v26, bSkipComputeFrame:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TOOLKIT_BAR:I

    if-eq v2, v3, :cond_11

    .line 5292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_4d

    .line 5294
    const/16 v36, 0x0

    .line 5296
    .local v36, needsSip:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    .line 5298
    const/16 v36, 0x1

    .line 5301
    :cond_8
    if-eqz v36, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsNotifySip:Z

    if-eqz v2, :cond_4c

    invoke-static/range {p5 .. p5}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v2, v3, :cond_4c

    if-nez p3, :cond_4c

    .line 5302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/view/WindowManager;

    .line 5303
    .local v42, wm:Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v25

    .line 5304
    .local v25, arrange:I
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I

    xor-int/lit8 v2, v2, -0x1

    and-int v27, v25, v2

    .line 5305
    .local v27, currentLaunchMode:I
    const/16 v35, 0x0

    .line 5307
    .local v35, isPortrait:Z
    const/16 v30, 0x0

    .line 5308
    .local v30, currentWinLeft:I
    const/16 v28, 0x0

    .line 5309
    .local v28, currentWinBottom:I
    const/16 v31, 0x0

    .line 5310
    .local v31, currentWinWidth:I
    const/16 v29, 0x0

    .line 5312
    .local v29, currentWinHeight:I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    .line 5314
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    .line 5315
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    .line 5316
    iget v2, v8, Landroid/graphics/Rect;->right:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    sub-int v31, v2, v3

    .line 5317
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int v29, v2, v3

    .line 5341
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, v28

    if-gt v0, v2, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 5342
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 5343
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 5345
    invoke-interface/range {v42 .. v42}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 5346
    .local v32, disp:Landroid/view/Display;
    invoke-virtual/range {v32 .. v32}, Landroid/view/Display;->getRotation()I

    move-result v38

    .line 5347
    .local v38, rotation:I
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    and-int v43, p5, v2

    .line 5349
    .local v43, zone:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move/from16 v0, v38

    if-eq v0, v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move/from16 v0, v38

    if-ne v0, v2, :cond_c

    .line 5350
    :cond_b
    const/16 v35, 0x1

    .line 5353
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_3f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 5354
    const/16 v26, 0x1

    .line 5412
    :goto_6
    const/16 v2, 0x30

    if-eq v15, v2, :cond_49

    .line 5413
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 5456
    .end local v25           #arrange:I
    .end local v27           #currentLaunchMode:I
    .end local v28           #currentWinBottom:I
    .end local v29           #currentWinHeight:I
    .end local v30           #currentWinLeft:I
    .end local v31           #currentWinWidth:I
    .end local v32           #disp:Landroid/view/Display;
    .end local v35           #isPortrait:Z
    .end local v36           #needsSip:Z
    .end local v38           #rotation:I
    .end local v42           #wm:Landroid/view/WindowManager;
    .end local v43           #zone:I
    :cond_d
    :goto_7
    if-eqz p3, :cond_e

    invoke-static/range {p5 .. p5}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-eq v2, v3, :cond_f

    :cond_e
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3ec

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_11

    .line 5460
    :cond_f
    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_10

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_11

    .line 5461
    :cond_10
    const v2, 0x10500

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_50

    and-int/lit8 v2, v41, 0x4

    if-nez v2, :cond_50

    .line 5464
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v12, p5

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 5473
    :cond_11
    :goto_8
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TOOLKIT_BAR:I

    if-ne v2, v3, :cond_12

    .line 5475
    if-eqz p4, :cond_51

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 5476
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_FULL_UPPER_SIP:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_9
    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p3

    move-object/from16 v19, p2

    move-object/from16 v20, p4

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    .line 5480
    invoke-virtual/range {v16 .. v24}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setToolkitWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5493
    :cond_12
    if-nez v26, :cond_13

    .line 5495
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5500
    :cond_13
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_14

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xbb6

    if-ne v2, v3, :cond_15

    :cond_14
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_15

    .line 5503
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5504
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5508
    :cond_15
    invoke-static/range {p5 .. p5}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    if-ne v2, v3, :cond_0

    .line 5510
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x48

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5513
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideWindow:Z

    goto/16 :goto_0

    .line 4987
    .end local v4           #fl:I
    .end local v5           #sim:I
    .end local v8           #pf:Landroid/graphics/Rect;
    .end local v9           #df:Landroid/graphics/Rect;
    .end local v10           #cf:Landroid/graphics/Rect;
    .end local v11           #vf:Landroid/graphics/Rect;
    .end local v15           #adjust:I
    .end local v26           #bSkipComputeFrame:Z
    .end local v33           #hasFlashBoard:Z
    .end local v34           #hasNavBar:Z
    .end local v37           #needsToOffsetInputMethodTarget:Z
    .end local v41           #sysUiFl:I
    :cond_16
    const/16 v37, 0x0

    goto/16 :goto_1

    .line 5005
    .restart local v4       #fl:I
    .restart local v5       #sim:I
    .restart local v8       #pf:Landroid/graphics/Rect;
    .restart local v9       #df:Landroid/graphics/Rect;
    .restart local v10       #cf:Landroid/graphics/Rect;
    .restart local v11       #vf:Landroid/graphics/Rect;
    .restart local v37       #needsToOffsetInputMethodTarget:Z
    .restart local v41       #sysUiFl:I
    :cond_17
    const/16 v34, 0x0

    goto/16 :goto_2

    .line 5009
    .restart local v34       #hasNavBar:Z
    :cond_18
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 5025
    .restart local v15       #adjust:I
    .restart local v33       #hasFlashBoard:Z
    :cond_19
    const v2, 0x10500

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_24

    and-int/lit8 v2, v41, 0x4

    if-nez v2, :cond_24

    .line 5035
    if-eqz p3, :cond_1a

    .line 5038
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v12, p5

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 5040
    :cond_1a
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_1b

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_1f

    .line 5049
    :cond_1b
    if-eqz v34, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_a
    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5050
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5051
    if-eqz v34, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_b
    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5054
    if-eqz v34, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_c
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5089
    :goto_d
    const/16 v2, 0x10

    if-eq v15, v2, :cond_22

    .line 5090
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 5091
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 5092
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 5093
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 5100
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1, v4, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 5101
    const/16 v2, 0x30

    if-eq v15, v2, :cond_23

    .line 5102
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 5103
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5104
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 5105
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 5049
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_a

    .line 5051
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_b

    .line 5054
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_c

    .line 5063
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_20

    move/from16 v0, v41

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_20

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_20

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_20

    .line 5071
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5072
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5073
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5074
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_d

    .line 5077
    :cond_20
    if-eqz v33, :cond_21

    .line 5078
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5079
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5080
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5081
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_d

    .line 5083
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5084
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5085
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5086
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_d

    .line 5095
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 5096
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 5097
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 5098
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    .line 5107
    :cond_23
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 5110
    :cond_24
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_25

    move/from16 v0, v41

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_35

    .line 5117
    :cond_25
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_26

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_2b

    .line 5119
    :cond_26
    if-eqz v34, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_f
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5120
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5121
    if-eqz v34, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_10
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5124
    if-eqz v34, :cond_2a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_11
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5196
    :goto_12
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_27

    .line 5197
    const/16 v2, 0x10

    if-eq v15, v2, :cond_33

    .line 5198
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 5204
    :cond_27
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1, v4, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 5205
    const/16 v2, 0x30

    if-eq v15, v2, :cond_34

    .line 5206
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 5207
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5208
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 5209
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 5119
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_f

    .line 5121
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_10

    .line 5124
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_11

    .line 5132
    :cond_2b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_2c

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_2d

    .line 5135
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5136
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5137
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5138
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12

    .line 5144
    :cond_2d
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-ne v2, v3, :cond_2e

    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_2e

    .line 5148
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5149
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5150
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12

    .line 5152
    :cond_2e
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_2f

    .line 5154
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5155
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5156
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5157
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12

    .line 5159
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_30

    move/from16 v0, v41

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_30

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_30

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_30

    .line 5170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5171
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5172
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5173
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12

    .line 5177
    :cond_30
    if-eqz v33, :cond_32

    .line 5178
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_31

    .line 5179
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5183
    :goto_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5184
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5185
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12

    .line 5181
    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    goto :goto_14

    .line 5188
    :cond_32
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5189
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5190
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5191
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12

    .line 5200
    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13

    .line 5211
    :cond_34
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 5213
    :cond_35
    if-eqz p3, :cond_36

    .line 5218
    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v14, v4

    move-object/from16 v16, p3

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, p5

    invoke-virtual/range {v12 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 5224
    :cond_36
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-ne v2, v3, :cond_37

    .line 5229
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5230
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5231
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5232
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 5235
    :cond_37
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5236
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5237
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5238
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5239
    const/16 v2, 0x10

    if-eq v15, v2, :cond_38

    .line 5240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5241
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5242
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5243
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 5250
    :goto_15
    const/16 v2, 0x30

    if-eq v15, v2, :cond_39

    .line 5251
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 5252
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 5254
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 5245
    :cond_38
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5246
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5247
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5248
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_15

    .line 5256
    :cond_39
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 5318
    .restart local v25       #arrange:I
    .restart local v26       #bSkipComputeFrame:Z
    .restart local v27       #currentLaunchMode:I
    .restart local v28       #currentWinBottom:I
    .restart local v29       #currentWinHeight:I
    .restart local v30       #currentWinLeft:I
    .restart local v31       #currentWinWidth:I
    .restart local v35       #isPortrait:Z
    .restart local v36       #needsSip:Z
    .restart local v42       #wm:Landroid/view/WindowManager;
    :cond_3a
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3b

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_3c

    :cond_3b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    if-eq v2, v3, :cond_3e

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    if-eq v2, v3, :cond_3e

    and-int/lit16 v2, v4, 0x200

    if-nez v2, :cond_3e

    .line 5322
    :cond_3c
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    .line 5323
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    .line 5324
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v31, v2, v3

    .line 5325
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v29, v2, v3

    .line 5327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    .line 5328
    .local v40, savedGravityObj:Ljava/lang/Integer;
    if-eqz v40, :cond_9

    .line 5329
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 5330
    .local v39, savedGravity:I
    if-eqz v39, :cond_3d

    and-int/lit8 v2, v39, 0x1

    if-eqz v2, :cond_9

    .line 5331
    :cond_3d
    iget v2, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v3, v31

    div-int/lit8 v3, v3, 0x2

    add-int v30, v2, v3

    goto/16 :goto_5

    .line 5335
    .end local v39           #savedGravity:I
    .end local v40           #savedGravityObj:Ljava/lang/Integer;
    :cond_3e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v30, v0

    .line 5336
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int v28, v2, v3

    .line 5337
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v31, v0

    .line 5338
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v29, v0

    goto/16 :goto_5

    .line 5356
    .restart local v32       #disp:Landroid/view/Display;
    .restart local v38       #rotation:I
    .restart local v43       #zone:I
    :cond_3f
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_41

    if-eqz v35, :cond_41

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    move/from16 v0, v27

    if-ne v0, v2, :cond_41

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    move/from16 v0, v43

    if-ne v0, v2, :cond_41

    .line 5358
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    sub-int/2addr v2, v3

    sub-int v2, v2, v29

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5360
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5361
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5362
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5364
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 5365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5367
    :cond_40
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_BOTTOM_UPPER_SIP:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_6

    .line 5368
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    sub-int/2addr v2, v3

    move/from16 v0, v29

    if-ge v0, v2, :cond_43

    .line 5369
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5370
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5371
    move/from16 v0, v30

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 5372
    add-int v2, v30, v31

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5374
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 5375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5377
    :cond_42
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_CENTER_UPPER_SIP:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_6

    .line 5379
    :cond_43
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5380
    move/from16 v0, v30

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 5381
    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int v2, v2, v31

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5383
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_48

    move/from16 v0, v41

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_48

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_48

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_48

    .line 5387
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5393
    :goto_16
    and-int/lit16 v2, v4, 0x200

    if-nez v2, :cond_44

    .line 5394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5395
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5396
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5400
    :cond_44
    const/16 v2, 0x10

    if-ne v15, v2, :cond_45

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v2, :cond_46

    .line 5401
    :cond_45
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5402
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 5405
    :cond_46
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 5406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5408
    :cond_47
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_FULL_UPPER_SIP:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_6

    .line 5389
    :cond_48
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_16

    .line 5416
    :cond_49
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 5421
    .end local v32           #disp:Landroid/view/Display;
    .end local v38           #rotation:I
    .end local v43           #zone:I
    :cond_4a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5422
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5423
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5424
    move/from16 v0, v30

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 5425
    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int v2, v2, v31

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5428
    const/16 v2, 0x10

    if-ne v15, v2, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v2, :cond_d

    .line 5429
    :cond_4b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5430
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_7

    .line 5436
    .end local v25           #arrange:I
    .end local v27           #currentLaunchMode:I
    .end local v28           #currentWinBottom:I
    .end local v29           #currentWinHeight:I
    .end local v30           #currentWinLeft:I
    .end local v31           #currentWinWidth:I
    .end local v35           #isPortrait:Z
    .end local v42           #wm:Landroid/view/WindowManager;
    :cond_4c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 5443
    .end local v36           #needsSip:Z
    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsNotifySip:Z

    if-eqz v2, :cond_4f

    invoke-static/range {p5 .. p5}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v2, v3, :cond_4f

    .line 5444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    if-ge v2, v3, :cond_4f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_4e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_4f

    :cond_4e
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isOrientationChanging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5450
    :cond_4f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 5466
    :cond_50
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v12, p5

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_8

    .line 5478
    :cond_51
    const/16 v2, 0x33

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_9
.end method

.method public lockNow()V
    .locals 3

    .prologue
    .line 8082
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8083
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8084
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8085
    return-void
.end method

.method public mustBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 7
    .parameter "win"
    .parameter "attrs"
    .parameter "attachAttrs"
    .parameter "windowMode"
    .parameter "attachedWindowMode"

    .prologue
    const/16 v6, 0x835

    const/16 v5, 0x834

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9251
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideWindow:Z

    if-eqz v3, :cond_4

    .line 9252
    invoke-static {p4}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v3

    sget v4, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    invoke-static {p5}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v3

    sget v4, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 9256
    :cond_0
    const/high16 v0, 0x48

    .line 9258
    .local v0, mask:I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    move v1, v2

    .line 9278
    .end local v0           #mask:I
    :cond_1
    :goto_0
    return v1

    .line 9261
    .restart local v0       #mask:I
    :cond_2
    if-eqz p3, :cond_1

    .line 9262
    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    move v1, v2

    .line 9263
    goto :goto_0

    .line 9268
    .end local v0           #mask:I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v3, :cond_4

    .line 9269
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v5, :cond_1

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v6, :cond_1

    .line 9271
    if-eqz p3, :cond_4

    .line 9272
    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v5, :cond_1

    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v6, :cond_1

    :cond_4
    move v1, v2

    .line 9278
    goto :goto_0
.end method

.method needSensorRunningLp()Z
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 1181
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return v0

    .line 1189
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v3, :cond_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v4, :cond_0

    .line 1199
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v0, :cond_0

    .line 1208
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .locals 6
    .parameter "whenNanos"
    .parameter "coverOpen"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6046
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_1

    .line 6073
    :cond_0
    :goto_0
    return-void

    .line 6049
    :cond_1
    if-eqz p3, :cond_3

    move v0, v1

    .line 6050
    .local v0, newCoverState:I
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:I

    if-eq v0, v3, :cond_0

    .line 6054
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:I

    .line 6055
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 6057
    if-eqz p3, :cond_5

    .line 6058
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6059
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 6070
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverOpenedIntent:Landroid/content/Intent;

    const-string v2, "coverOpen"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6071
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover open = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , broadcasted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6072
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverOpenedIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #newCoverState:I
    :cond_3
    move v0, v2

    .line 6049
    goto :goto_1

    .line 6062
    .restart local v0       #newCoverState:I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v2, v1}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_2

    .line 6066
    :cond_5
    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kona"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6067
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/os/LocalPowerManager;->goToSleep(J)V

    goto :goto_2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 6
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5964
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_1

    .line 5988
    :cond_0
    :goto_0
    return-void

    .line 5967
    :cond_1
    if-eqz p3, :cond_2

    move v0, v1

    .line 5968
    .local v0, newLidState:I
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_0

    .line 5972
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 5973
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 5974
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 5976
    if-eqz p3, :cond_5

    .line 5977
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5978
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v4, 0x1a

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v3, v4, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    goto :goto_0

    .end local v0           #newLidState:I
    :cond_2
    move v0, v2

    .line 5967
    goto :goto_1

    .restart local v0       #newLidState:I
    :cond_3
    move v1, v2

    .line 5978
    goto :goto_2

    .line 5981
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v2, v1}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_0

    .line 5984
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_0

    .line 5985
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v3, v4, v2, v2}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_0
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 9
    .parameter "whenNanos"
    .parameter "penInsert"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 5993
    const/16 v4, 0x2c

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 6003
    .local v0, attach_noti_ivt:[B
    const/16 v4, 0x12

    new-array v1, v4, [B

    fill-array-data v1, :array_1

    .line 6010
    .local v1, detach_noti_ivt:[B
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_detachment_notification"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6013
    .local v2, sound:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6015
    .local v3, soundPath:[Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_2

    .line 6017
    if-eqz v2, :cond_0

    :try_start_0
    array-length v4, v3

    if-le v4, v7, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6020
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v5}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 6037
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v5, "penInsert"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6038
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->broadcastPenState(Landroid/content/Intent;)V

    .line 6039
    return-void

    .line 6013
    .end local v3           #soundPath:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 6022
    .restart local v3       #soundPath:[Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6023
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v5, 0x1a

    invoke-virtual {v4, v5, v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 6031
    :goto_3
    if-eqz v2, :cond_3

    :try_start_1
    array-length v4, v3

    if-le v4, v7, :cond_3

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6034
    :cond_3
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v5}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto :goto_2

    .line 6026
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-interface {v4, v5, v6, v8, v7}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_3

    .line 6032
    :catch_0
    move-exception v4

    goto :goto_4

    .line 6018
    :catch_1
    move-exception v4

    goto :goto_1

    .line 5993
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x3t
        0x0t
        0x24t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x15t
        0x0t
        0xf1t
        0xe0t
        0x1t
        0xe2t
        0x0t
        0x0t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x0t
        0xc8t
        0xfft
        0x20t
        0x1t
        0x0t
        0x0t
        0x5ft
        0x0t
        0x0t
        0x42t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0xe2t
        0x0t
    .end array-data

    .line 6003
    :array_1
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x71t
    .end array-data
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 10
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const-wide/16 v8, 0x32

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 8275
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    move v2, v4

    .line 8276
    .local v2, hapticsDisabled:Z
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_switch"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v0, v4

    .line 8277
    .local v0, PowerSavingModeEnabled:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_haptic_feedback"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 8279
    .local v1, TurnOffHapticFeedbackEnabled:Z
    :goto_2
    if-nez p3, :cond_5

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez v2, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8378
    :cond_1
    :goto_3
    return v5

    .end local v0           #PowerSavingModeEnabled:Z
    .end local v1           #TurnOffHapticFeedbackEnabled:Z
    .end local v2           #hapticsDisabled:Z
    :cond_2
    move v2, v5

    .line 8275
    goto :goto_0

    .restart local v2       #hapticsDisabled:Z
    :cond_3
    move v0, v5

    .line 8276
    goto :goto_1

    .restart local v0       #PowerSavingModeEnabled:Z
    :cond_4
    move v1, v5

    .line 8277
    goto :goto_2

    .line 8333
    .restart local v1       #TurnOffHapticFeedbackEnabled:Z
    :cond_5
    new-array v3, v4, [J

    .line 8334
    .local v3, pattern:[J
    sparse-switch p2, :sswitch_data_0

    goto :goto_3

    .line 8340
    :sswitch_0
    aput-wide v8, v3, v5

    .line 8369
    :goto_4
    array-length v6, v3

    if-ne v6, v4, :cond_6

    .line 8371
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    aget-wide v7, v3, v5

    invoke-virtual {v6, v7, v8}, Landroid/os/SystemVibrator;->vibrate(J)V

    :goto_5
    move v5, v4

    .line 8378
    goto :goto_3

    .line 8345
    :sswitch_1
    aput-wide v8, v3, v5

    goto :goto_4

    .line 8349
    :sswitch_2
    const-wide/16 v6, 0x64

    aput-wide v6, v3, v5

    goto :goto_4

    .line 8353
    :sswitch_3
    const-wide/16 v6, 0x1f4

    aput-wide v6, v3, v5

    goto :goto_4

    .line 8360
    :sswitch_4
    const-wide/16 v6, 0x5dc

    aput-wide v6, v3, v5

    goto :goto_4

    .line 8364
    :sswitch_5
    aput-wide v8, v3, v5

    goto :goto_4

    .line 8374
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6}, Landroid/os/SystemVibrator;->vibrate([JI)V

    goto :goto_5

    .line 8334
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x12 -> :sswitch_4
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x7

    .line 3216
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_CONTROL_BAR:I

    if-ne v2, v3, :cond_1

    .line 3217
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3292
    :cond_0
    :goto_0
    return v0

    .line 3222
    :cond_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 3282
    :goto_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TRAY_BAR:I

    if-ne v2, v3, :cond_7

    .line 3283
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6

    move v0, v1

    .line 3284
    goto :goto_0

    .line 3224
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_2

    .line 3228
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 3229
    goto :goto_0

    .line 3232
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    .line 3235
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3

    .line 3239
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 3240
    goto :goto_0

    .line 3243
    :cond_3
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    .line 3248
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_4

    .line 3252
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 3253
    goto :goto_0

    .line 3256
    :cond_4
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    .line 3259
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3264
    :sswitch_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3269
    :sswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3274
    :sswitch_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    move v0, v1

    .line 3275
    goto/16 :goto_0

    .line 3277
    :cond_5
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_1

    .line 3286
    :cond_6
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_0

    .line 3287
    :cond_7
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_EDIT_MODE:I

    if-ne v1, v2, :cond_0

    .line 3288
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_0

    .line 3222
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_6
        0x7de -> :sswitch_4
        0x7e1 -> :sswitch_5
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_3
        0x802 -> :sswitch_2
    .end sparse-switch
.end method

.method readCoverState()V
    .locals 1

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:I

    .line 2856
    return-void
.end method

.method readLidState()V
    .locals 1

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 2812
    return-void
.end method

.method readPenState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2830
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPenState()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenState:I

    .line 2831
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v2, "penInsert"

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenState:I

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2832
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->broadcastPenState(Landroid/content/Intent;)V

    .line 2833
    return-void

    .line 2831
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 3194
    if-eqz p2, :cond_0

    .line 3195
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3196
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3198
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 3297
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 3298
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3312
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 3313
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3316
    :cond_1
    return-void

    .line 3299
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    .line 3300
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3301
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_4

    .line 3302
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3304
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_5

    .line 3305
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3306
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_6

    .line 3307
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3308
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 3309
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 8744
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public rotationForOrientationLw(II)I
    .locals 11
    .parameter "orientation"
    .parameter "lastRotation"

    .prologue
    const/4 v10, 0x4

    const/4 v2, 0x0

    const/16 v9, 0xa

    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 7638
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 7639
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 7641
    .local v1, sensorRotation:I
    const-string v6, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rotationForOrientationLw(orient="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", last="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "); user="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_1

    const-string v3, "USER_ROTATION_LOCKED"

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mLidState="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mCoverState="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mDockMode="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mHdmiPlugged="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mAccelerometerDefault="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " sensorRotation="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7654
    if-gez v1, :cond_0

    .line 7655
    move v1, p2

    .line 7660
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    if-ltz v3, :cond_2

    .line 7661
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    .line 7751
    .local v0, preferredRotation:I
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 7803
    :pswitch_0
    if-ltz v0, :cond_24

    .line 7804
    monitor-exit v5

    .line 7806
    .end local v0           #preferredRotation:I
    :goto_2
    return v0

    .line 7641
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 7664
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v3, :cond_3

    .line 7666
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 7668
    .end local v0           #preferredRotation:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_9

    .line 7671
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIRotationEnable:Z

    if-eqz v3, :cond_8

    .line 7672
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-ne v3, v4, :cond_4

    .line 7673
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .line 7674
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 7675
    .end local v0           #preferredRotation:I
    :cond_4
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_5

    .line 7676
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 7677
    .end local v0           #preferredRotation:I
    :cond_5
    if-nez p1, :cond_6

    .line 7678
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 7679
    .end local v0           #preferredRotation:I
    :cond_6
    if-ne p1, v4, :cond_7

    .line 7680
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 7682
    .end local v0           #preferredRotation:I
    :cond_7
    move v0, v1

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 7685
    .end local v0           #preferredRotation:I
    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1

    .line 7687
    .end local v0           #preferredRotation:I
    :cond_9
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v8, :cond_c

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v3, :cond_a

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v3, :cond_c

    .line 7692
    :cond_a
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v3, :cond_b

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_3
    goto :goto_1

    .end local v0           #preferredRotation:I
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_3

    .line 7694
    :cond_c
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-nez v3, :cond_10

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v3, v4, :cond_d

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_d

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v10, :cond_10

    :cond_d
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v3, :cond_e

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v3, :cond_10

    .line 7704
    :cond_e
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_f

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_4
    goto :goto_1

    .end local v0           #preferredRotation:I
    :cond_f
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_4

    .line 7707
    :cond_10
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v9, :cond_13

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-nez v3, :cond_11

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    if-ltz v3, :cond_13

    .line 7712
    :cond_11
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-eqz v3, :cond_12

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_5
    goto/16 :goto_1

    .end local v0           #preferredRotation:I
    :cond_12
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    goto :goto_5

    .line 7715
    :cond_13
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v3, :cond_14

    if-eq p1, v8, :cond_15

    const/4 v3, -0x1

    if-eq p1, v3, :cond_15

    :cond_14
    if-eq p1, v10, :cond_15

    if-eq p1, v9, :cond_15

    const/4 v3, 0x6

    if-eq p1, v3, :cond_15

    const/4 v3, 0x7

    if-ne p1, v3, :cond_1a

    .line 7724
    :cond_15
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v3, :cond_16

    .line 7728
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110016

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v4

    :goto_6
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 7731
    :cond_16
    if-ne v1, v8, :cond_17

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v3, v4, :cond_17

    if-ne p1, v9, :cond_19

    .line 7734
    :cond_17
    move v0, v1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .end local v0           #preferredRotation:I
    :cond_18
    move v3, v2

    .line 7728
    goto :goto_6

    .line 7736
    :cond_19
    move v0, p2

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .line 7738
    .end local v0           #preferredRotation:I
    :cond_1a
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_1b

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1b

    .line 7744
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .line 7748
    .end local v0           #preferredRotation:I
    :cond_1b
    const/4 v0, -0x1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1

    .line 7754
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 7755
    monitor-exit v5

    goto/16 :goto_2

    .line 7808
    .end local v0           #preferredRotation:I
    .end local v1           #sensorRotation:I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7757
    .restart local v0       #preferredRotation:I
    .restart local v1       #sensorRotation:I
    :cond_1c
    :try_start_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 7761
    .restart local v0       #preferredRotation:I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 7762
    monitor-exit v5

    goto/16 :goto_2

    .line 7764
    :cond_1d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 7768
    .restart local v0       #preferredRotation:I
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 7769
    monitor-exit v5

    goto/16 :goto_2

    .line 7771
    :cond_1e
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 7775
    .restart local v0       #preferredRotation:I
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 7776
    monitor-exit v5

    goto/16 :goto_2

    .line 7778
    :cond_1f
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 7782
    .restart local v0       #preferredRotation:I
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 7783
    monitor-exit v5

    goto/16 :goto_2

    .line 7785
    :cond_20
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 7786
    monitor-exit v5

    move v0, p2

    goto/16 :goto_2

    .line 7788
    :cond_21
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 7792
    .restart local v0       #preferredRotation:I
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 7793
    monitor-exit v5

    goto/16 :goto_2

    .line 7795
    :cond_22
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 7796
    monitor-exit v5

    move v0, p2

    goto/16 :goto_2

    .line 7798
    :cond_23
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_2

    .line 7806
    .restart local v0       #preferredRotation:I
    :cond_24
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto/16 :goto_2

    .line 7751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .parameter "orientation"
    .parameter "rotation"

    .prologue
    .line 7813
    packed-switch p1, :pswitch_data_0

    .line 7825
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 7817
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_0

    .line 7822
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_0

    .line 7813
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenOnStartedLw()V
    .locals 2

    .prologue
    .line 8384
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8385
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    .line 8386
    monitor-exit v1

    .line 8387
    return-void

    .line 8386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public screenOnStoppedLw()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8390
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8391
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8393
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 8396
    .end local v0           #curTime:J
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8399
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    .line 8400
    monitor-exit v3

    .line 8402
    :cond_1
    return-void

    .line 8400
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public screenTurnedOff(I)V
    .locals 4
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 7399
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7400
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7401
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 7403
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7407
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    if-eqz v0, :cond_0

    .line 7408
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isCameraOnTop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    .line 7409
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnReason:I

    .line 7410
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenTurnedOff() : mIsSleepWithCameraOnTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7415
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_1

    .line 7416
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    .line 7420
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_3

    .line 7422
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRippleEffectEnabled:Z

    if-eqz v0, :cond_2

    .line 7423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnoreKeys:Z

    .line 7424
    const-string v0, "WindowManager"

    const-string v1, "mSetIgnore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7425
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnoreKeysTimeout:J

    .line 7427
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$30;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7468
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 7470
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7471
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7472
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 7473
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7474
    return-void

    .line 7403
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 7473
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 4
    .parameter "screenOnListener"

    .prologue
    const/4 v3, 0x1

    .line 7478
    const v0, 0x11170

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7481
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    if-eqz v0, :cond_1

    .line 7482
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenTurningOn() : mScreenOnReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7483
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->wakeUpOnHomeIfNeeded()V

    .line 7492
    :cond_1
    if-eqz p1, :cond_5

    .line 7493
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_2

    .line 7495
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7498
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$31;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 7535
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_3

    .line 7536
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    .line 7541
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRippleEffectEnabled:Z

    if-eqz v0, :cond_4

    .line 7542
    const-string v0, "WindowManager"

    const-string v1, "mSetIgnorePWR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7543
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetIgnorePowerKey:Z

    .line 7544
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$32;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$32;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7553
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7554
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7555
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7556
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 7557
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7558
    return-void

    .line 7525
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_6

    .line 7527
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 7529
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7530
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 7531
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 7557
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 7496
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 5
    .parameter "win"
    .parameter "transit"

    .prologue
    const/16 v4, 0x2004

    const/16 v3, 0x2002

    const/16 v2, 0x1003

    const/16 v1, 0x1001

    .line 3324
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_3

    .line 3325
    if-eq p2, v3, :cond_0

    if-ne p2, v4, :cond_1

    .line 3326
    :cond_0
    const v0, 0x10a001b

    .line 3361
    :goto_0
    return v0

    .line 3327
    :cond_1
    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_f

    .line 3328
    :cond_2
    const v0, 0x10a001a

    goto :goto_0

    .line 3330
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_b

    .line 3332
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_7

    .line 3333
    if-eq p2, v3, :cond_4

    if-ne p2, v4, :cond_5

    .line 3334
    :cond_4
    const v0, 0x10a0015

    goto :goto_0

    .line 3335
    :cond_5
    if-eq p2, v1, :cond_6

    if-ne p2, v2, :cond_f

    .line 3336
    :cond_6
    const v0, 0x10a0014

    goto :goto_0

    .line 3339
    :cond_7
    if-eq p2, v3, :cond_8

    if-ne p2, v4, :cond_9

    .line 3340
    :cond_8
    const v0, 0x10a0019

    goto :goto_0

    .line 3341
    :cond_9
    if-eq p2, v1, :cond_a

    if-ne p2, v2, :cond_f

    .line 3342
    :cond_a
    const v0, 0x10a0018

    goto :goto_0

    .line 3346
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardPanel:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_f

    .line 3347
    if-eq p2, v3, :cond_c

    if-ne p2, v4, :cond_d

    .line 3348
    :cond_c
    const v0, 0x10a0017

    goto :goto_0

    .line 3349
    :cond_d
    if-eq p2, v1, :cond_e

    if-ne p2, v2, :cond_f

    .line 3350
    :cond_e
    const v0, 0x10a0016

    goto :goto_0

    .line 3354
    :cond_f
    const/4 v0, 0x5

    if-ne p2, v0, :cond_10

    .line 3355
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3357
    const v0, 0x10a0011

    goto :goto_0

    .line 3361
    :cond_10
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 7620
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7621
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 7624
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7625
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "win"
    .parameter "fl"
    .parameter "adjust"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"
    .parameter "windowMode"

    .prologue
    .line 4877
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_2

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    .line 4885
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 4886
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 4887
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 4888
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 4933
    :goto_0
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_b

    invoke-static {p10}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v0

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v0, v1, :cond_b

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 4936
    :cond_0
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4940
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 4941
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 4942
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 4943
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 4951
    :cond_1
    :goto_1
    return-void

    .line 4896
    :cond_2
    const/16 v0, 0x10

    if-eq p3, v0, :cond_6

    .line 4898
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_5

    .line 4899
    invoke-static {p10}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v0

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v0, v1, :cond_4

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_2
    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4920
    :cond_3
    :goto_3
    if-eqz p5, :cond_a

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_4
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4921
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4899
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_2

    .line 4902
    :cond_5
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 4912
    :cond_6
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4913
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_3

    .line 4914
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 4915
    :cond_7
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 4916
    :cond_8
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 4917
    :cond_9
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_a
    move-object v0, p8

    .line 4920
    goto :goto_4

    .line 4945
    :cond_b
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_c

    .line 4946
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 4947
    :cond_c
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    .line 4948
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "inputTargetWindow"

    .prologue
    .line 9326
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    .line 9327
    return-void
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .parameter "newOrientation"

    .prologue
    .line 8265
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8266
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 8267
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 8268
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 8269
    invoke-static {p1}, Landroid/view/WindowOrientationListener;->setCurrentAppOrientation(I)V

    .line 8271
    :cond_0
    monitor-exit v1

    .line 8272
    return-void

    .line 8271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setHdmiPlugged(Z)V
    .locals 3
    .parameter "plugged"

    .prologue
    const/4 v2, 0x1

    .line 6077
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_1

    .line 6078
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6079
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 6080
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayWidth:I

    .line 6081
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayHeight:I

    .line 6083
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    .line 6084
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6085
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6086
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6087
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 6089
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;II)V
    .locals 19
    .parameter "display"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2299
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 2302
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_3

    .line 2303
    move/from16 v7, p3

    .line 2304
    .local v7, shortSize:I
    move/from16 v4, p2

    .line 2305
    .local v4, longSize:I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2306
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 2307
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2309
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2310
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2330
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayWidth:I

    .line 2331
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayHeight:I

    .line 2333
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 2337
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 2341
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 2347
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    aput v17, v15, v16

    aput v17, v13, v14

    aput v17, v11, v12

    aput v17, v9, v10

    .line 2355
    mul-int/lit16 v9, v7, 0xa0

    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v8, v9, v10

    .line 2359
    .local v8, shortSizeDp:I
    const/16 v9, 0x258

    if-ge v8, v9, :cond_5

    .line 2361
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 2362
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 2373
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v9, :cond_8

    .line 2374
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110036

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 2378
    const-string v9, "qemu.hw.mainkeys"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2379
    .local v6, navBarOverride:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2380
    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 2387
    .end local v6           #navBarOverride:Ljava/lang/String;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v9, :cond_a

    .line 2391
    mul-int/lit16 v9, v4, 0xa0

    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v5, v9, v10

    .line 2394
    .local v5, longSizeDp:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    aget v9, v9, v10

    mul-int/lit16 v9, v9, 0xa0

    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v3, v9, v10

    .line 2397
    .local v3, barHeightDp:I
    sub-int v9, v8, v3

    mul-int/lit8 v9, v9, 0x10

    div-int v2, v9, v5

    .line 2402
    .local v2, aspect:I
    const/16 v9, 0x9

    if-ge v2, v9, :cond_9

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 2404
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-nez v9, :cond_1

    .line 2405
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110051

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 2417
    .end local v2           #aspect:I
    .end local v3           #barHeightDp:I
    .end local v5           #longSizeDp:I
    :cond_1
    :goto_4
    const-string v9, "portrait"

    const-string v10, "persist.demo.hdmirotation"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2418
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .line 2424
    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10500b1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashBoardHeight:I

    .line 2426
    return-void

    .line 2312
    .end local v8           #shortSizeDp:I
    :cond_2
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2313
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_0

    .line 2316
    .end local v4           #longSize:I
    .end local v7           #shortSize:I
    :cond_3
    move/from16 v7, p2

    .line 2317
    .restart local v7       #shortSize:I
    move/from16 v4, p3

    .line 2318
    .restart local v4       #longSize:I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2319
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2320
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2322
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2323
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 2325
    :cond_4
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2326
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 2363
    .restart local v8       #shortSizeDp:I
    :cond_5
    const/16 v9, 0x2d0

    if-ge v8, v9, :cond_6

    .line 2365
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 2366
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    goto/16 :goto_1

    .line 2369
    :cond_6
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 2370
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    goto/16 :goto_1

    .line 2381
    .restart local v6       #navBarOverride:Ljava/lang/String;
    :cond_7
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    .line 2384
    .end local v6           #navBarOverride:Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    .line 2402
    .restart local v2       #aspect:I
    .restart local v3       #barHeightDp:I
    .restart local v5       #longSizeDp:I
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2409
    .end local v2           #aspect:I
    .end local v3           #barHeightDp:I
    .end local v5           #longSizeDp:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v9, :cond_b

    .line 2412
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_4

    .line 2414
    :cond_b
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_4

    .line 2420
    :cond_c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    goto/16 :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "ime"
    .parameter "target"

    .prologue
    .line 8500
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8501
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8502
    return-void
.end method

.method public setRotationLw(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 7831
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 7833
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-eqz v0, :cond_0

    .line 7834
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateWacomOffset(I)V

    .line 7838
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRotation:I

    .line 7841
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$34;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$34;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7853
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .parameter "safeMode"

    .prologue
    .line 7884
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 7886
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x2711

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 7890
    return-void

    .line 7886
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method setToolkitWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "toolkitbar"
    .parameter "toolkitbarTarget"
    .parameter "attrs"
    .parameter "baseAttrs"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 4843
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 4844
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4845
    .local v0, disp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 4846
    .local v2, rotation:I
    const/4 v1, 0x0

    .line 4848
    .local v1, isPortrait:Z
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq v2, v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne v2, v4, :cond_1

    .line 4849
    :cond_0
    const/4 v1, 0x1

    .line 4852
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v4, p6, Landroid/graphics/Rect;->left:I

    iput v4, p5, Landroid/graphics/Rect;->left:I

    .line 4853
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v4, p6, Landroid/graphics/Rect;->top:I

    iput v4, p5, Landroid/graphics/Rect;->top:I

    .line 4854
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v4, v5

    iput v4, p6, Landroid/graphics/Rect;->right:I

    iput v4, p5, Landroid/graphics/Rect;->right:I

    .line 4855
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v4, v5

    iput v4, p6, Landroid/graphics/Rect;->bottom:I

    iput v4, p5, Landroid/graphics/Rect;->bottom:I

    .line 4857
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    .line 4858
    if-nez v1, :cond_4

    .line 4859
    iget v4, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v4, p6, Landroid/graphics/Rect;->left:I

    iput v4, p5, Landroid/graphics/Rect;->left:I

    .line 4863
    :cond_2
    :goto_0
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, p8, Landroid/graphics/Rect;->top:I

    .line 4864
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, p8, Landroid/graphics/Rect;->bottom:I

    .line 4866
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v4, p7, Landroid/graphics/Rect;->left:I

    .line 4867
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v4, p7, Landroid/graphics/Rect;->top:I

    .line 4868
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v4, p7, Landroid/graphics/Rect;->right:I

    .line 4869
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v4, p7, Landroid/graphics/Rect;->bottom:I

    .line 4873
    return-void

    .line 4860
    :cond_4
    if-eqz p4, :cond_2

    .line 4861
    iget v4, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p6, Landroid/graphics/Rect;->top:I

    iput v4, p5, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public setTransparentStatusBar(Z)V
    .locals 2
    .parameter "set"

    .prologue
    .line 1152
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastStatusBarTransparent:Z

    if-ne v1, p1, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastStatusBarTransparent:Z

    .line 1159
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1160
    .local v0, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 1161
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->transparentizeStatusBar(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1163
    .end local v0           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setUserRotationMode(II)V
    .locals 3
    .parameter "mode"
    .parameter "rot"

    .prologue
    const/4 v2, 0x1

    .line 7866
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7869
    .local v0, res:Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    .line 7870
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7873
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7881
    :goto_0
    return-void

    .line 7877
    :cond_0
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 7934
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_0

    .line 7979
    :goto_0
    return-void

    .line 7935
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$36;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$36;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showGlobalActionsDialog()V
    .locals 4

    .prologue
    .line 1726
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_0

    .line 1727
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1729
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .line 1730
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 1731
    if-eqz v0, :cond_1

    .line 1734
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1736
    :cond_1
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .locals 3
    .parameter "behavior"

    .prologue
    .line 1886
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    .line 1887
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1890
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    .line 1891
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 1892
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 1893
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1938
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :goto_0
    return-void

    .line 1899
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method startDockOrHome()V
    .locals 3

    .prologue
    .line 8195
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 8196
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 8198
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8210
    :goto_0
    return-void

    .line 8200
    :catch_0
    move-exception v1

    .line 8204
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUsmEnabled:Z

    if-eqz v1, :cond_1

    .line 8205
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUsmHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8208
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startScreenSaver()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8036
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8037
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenSaverEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8038
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 8039
    .local v0, dm:Landroid/service/dreams/IDreamManager;
    if-nez v0, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8051
    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :goto_0
    return v1

    .line 8044
    .restart local v0       #dm:Landroid/service/dreams/IDreamManager;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8045
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 8050
    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 8046
    .restart local v0       #dm:Landroid/service/dreams/IDreamManager;
    :catch_0
    move-exception v3

    .line 8050
    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public stopScreenSaver()V
    .locals 3

    .prologue
    .line 8056
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8057
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 8058
    .local v0, dm:Landroid/service/dreams/IDreamManager;
    if-nez v0, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8067
    :goto_0
    return-void

    .line 8063
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8066
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 8064
    .restart local v0       #dm:Landroid/service/dreams/IDreamManager;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 2980
    packed-switch p1, :pswitch_data_0

    .line 2991
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2983
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2985
    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 2987
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 2989
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 2980
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 2

    .prologue
    .line 7925
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7926
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 7927
    monitor-exit v1

    .line 7928
    return-void

    .line 7927
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7906
    const-string v0, "LGT"

    const-string v1, "UNICOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 7907
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "missing_phone_lock"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7908
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_1

    .line 7910
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 7912
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7913
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 7915
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$35;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$35;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7920
    monitor-exit v1

    .line 7921
    return-void

    .line 7920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateMultiWindowTrayBar()V
    .locals 2

    .prologue
    .line 9305
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$41;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$41;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9312
    return-void
.end method

.method updateOrientationListenerLp()V
    .locals 2

    .prologue
    .line 1224
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    const/4 v0, 0x1

    .line 1234
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2

    .line 1235
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1236
    const/4 v0, 0x0

    .line 1238
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_2

    .line 1239
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 1241
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 1246
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 1249
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_0
.end method

.method public updateReadingMode(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4
    .parameter "oldWin"
    .parameter "newWin"

    .prologue
    const/4 v3, 0x0

    .line 9450
    const-string v1, "WindowManager"

    const-string v2, "updateReadingMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9451
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingStatus:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p2, v1, :cond_1

    .line 9452
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setReadingMode(Z)Z

    .line 9453
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingStatus:Z

    .line 9522
    :cond_0
    :goto_0
    return-void

    .line 9456
    :cond_1
    if-eqz p2, :cond_0

    if-eq p1, p2, :cond_0

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 9459
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingModeAppList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9462
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9463
    .local v0, titleName:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$43;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$43;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method updateRotation(Z)V
    .locals 2
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 8123
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8127
    :goto_0
    return-void

    .line 8124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 1
    .parameter "alwaysSendConfiguration"
    .parameter "forceRelayout"

    .prologue
    .line 8132
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8136
    :goto_0
    return-void

    .line 8133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 27

    .prologue
    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 2430
    .local v17, resolver:Landroid/content/ContentResolver;
    const/16 v21, 0x0

    .line 2433
    .local v21, updateRotation:Z
    const-string v24, "end_button_behavior"

    const/16 v25, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 2436
    .local v7, endcallBehavior:I
    const-string v24, "incall_power_button_behavior"

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 2440
    .local v10, incallPowerBehavior:I
    const-string v24, "user_rotation"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 2442
    .local v22, userRotation:I
    const-string v24, "accelerometer_rotation"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_f

    const/16 v23, 0x0

    .line 2446
    .local v23, userRotationMode:I
    :goto_0
    const-string v24, "pointer_location"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 2448
    .local v15, pointerLocation:I
    const-string v24, "screen_off_timeout"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 2450
    .local v14, lockScreenTimeout:I
    const-string v24, "default_input_method"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2452
    .local v9, imId:Ljava/lang/String;
    const-string v24, "screensaver_enabled"

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 2454
    .local v19, screenSaverEnabledByUser:I
    const-string v24, "screensaver_timeout"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 2456
    .local v20, screenSaverTimeout:I
    const-string v25, "double_tab_launch"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkDefaultLaunch:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    const/16 v24, 0x1

    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 2458
    .local v4, doubleTapBehavior:I
    const-string v25, "lockscreen_ripple_effect"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDefaultRippleEffect:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    const/16 v24, 0x1

    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 2463
    .local v18, rippleEffect:I
    const-string v24, "multi_window_enabled"

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2466
    .local v6, enableMultiWindowUISetting:I
    const-string v24, "during_shooting"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2470
    .local v5, duringShooting:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "reading_mode_app_list"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2472
    .local v16, readingModeApps:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "e_reading_display_mode"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    const/4 v12, 0x1

    .line 2475
    .local v12, isReadingMode:Z
    :goto_3
    const-string v24, "kids_home_mode"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    const/4 v11, 0x1

    .line 2478
    .local v11, isKidsMode:Z
    :goto_4
    const-string v24, "usm_setting"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_14

    const/4 v13, 0x1

    .line 2480
    .local v13, isUsmEnabled:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2482
    if-eqz v5, :cond_15

    const/16 v24, 0x1

    :goto_6
    :try_start_0
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDuringShooting:Z

    .line 2486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v6, :cond_1

    .line 2487
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 2488
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 2489
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar()V

    .line 2492
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsTablet:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 2493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    move/from16 v24, v0

    if-nez v24, :cond_16

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    new-instance v26, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct/range {v26 .. v27}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2515
    :cond_1
    :goto_7
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 2516
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 2519
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingModeApps:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 2520
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingModeApps:Ljava/lang/String;

    .line 2521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingModeApps:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v26, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingModeAppList:[Ljava/lang/String;

    .line 2522
    if-eqz v12, :cond_2

    .line 2523
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateReadingMode(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2527
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsReadingMode:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v12, :cond_3

    .line 2528
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsReadingMode:Z

    .line 2529
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateReadingMode(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2532
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 2533
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 2534
    const/16 v21, 0x1

    .line 2537
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 2538
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 2539
    const/16 v21, 0x1

    .line 2540
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2543
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 2544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v15, :cond_6

    .line 2545
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v15, :cond_17

    const/16 v24, 0x1

    :goto_8
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2550
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSPenUspFeature:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 2551
    const-string v24, "WindowManager"

    const-string v26, "sendEmptyMessage: MSG_ENABLE_SPEN_GESTURE"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v26, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2556
    :cond_7
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 2557
    if-eqz v9, :cond_18

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_18

    const/4 v8, 0x1

    .line 2558
    .local v8, hasSoftInput:Z
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v8, :cond_8

    .line 2559
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 2560
    const/16 v21, 0x1

    .line 2564
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v26, 0x111003a

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverFeatureAvailable:Z

    .line 2567
    if-eqz v19, :cond_19

    const/16 v24, 0x1

    :goto_a
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverEnabledByUser:Z

    .line 2572
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    .line 2573
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    move/from16 v24, v0

    if-lez v24, :cond_9

    .line 2576
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    move/from16 v24, v0

    move/from16 v0, v24

    add-int/lit16 v0, v0, -0x1388

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    .line 2580
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsModeEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v11, :cond_a

    .line 2581
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 2586
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUsmEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v13, :cond_b

    .line 2587
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUsmEnabled:Z

    .line 2590
    :cond_b
    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2591
    if-eqz v21, :cond_c

    .line 2592
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 2596
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    move/from16 v24, v0

    if-nez v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptChannel:Landroid/view/InputChannel;

    move-object/from16 v24, v0

    if-nez v24, :cond_d

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v24, v0

    const-string v25, "PointerMiniStatusBarView"

    invoke-interface/range {v24 .. v25}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptChannel:Landroid/view/InputChannel;

    .line 2599
    new-instance v24, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptChannel:Landroid/view/InputChannel;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerInterceptInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;

    .line 2606
    :cond_d
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v4, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-nez v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSVoiceComponent:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 2608
    :cond_e
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClickBehavior:Z

    .line 2614
    :goto_b
    const/16 v24, 0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    const/16 v24, 0x1

    :goto_c
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRippleEffectEnabled:Z

    .line 2615
    return-void

    .line 2442
    .end local v4           #doubleTapBehavior:I
    .end local v5           #duringShooting:I
    .end local v6           #enableMultiWindowUISetting:I
    .end local v8           #hasSoftInput:Z
    .end local v9           #imId:Ljava/lang/String;
    .end local v11           #isKidsMode:Z
    .end local v12           #isReadingMode:Z
    .end local v13           #isUsmEnabled:Z
    .end local v14           #lockScreenTimeout:I
    .end local v15           #pointerLocation:I
    .end local v16           #readingModeApps:Ljava/lang/String;
    .end local v18           #rippleEffect:I
    .end local v19           #screenSaverEnabledByUser:I
    .end local v20           #screenSaverTimeout:I
    .end local v23           #userRotationMode:I
    :cond_f
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2456
    .restart local v9       #imId:Ljava/lang/String;
    .restart local v14       #lockScreenTimeout:I
    .restart local v15       #pointerLocation:I
    .restart local v19       #screenSaverEnabledByUser:I
    .restart local v20       #screenSaverTimeout:I
    .restart local v23       #userRotationMode:I
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 2458
    .restart local v4       #doubleTapBehavior:I
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 2472
    .restart local v5       #duringShooting:I
    .restart local v6       #enableMultiWindowUISetting:I
    .restart local v16       #readingModeApps:Ljava/lang/String;
    .restart local v18       #rippleEffect:I
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 2475
    .restart local v12       #isReadingMode:Z
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 2478
    .restart local v11       #isKidsMode:Z
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 2482
    .restart local v13       #isUsmEnabled:Z
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 2503
    :cond_16
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    new-instance v26, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct/range {v26 .. v27}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    .line 2590
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24

    .line 2546
    :cond_17
    const/16 v24, 0x2

    goto/16 :goto_8

    .line 2557
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 2567
    .restart local v8       #hasSoftInput:Z
    :cond_19
    const/16 v24, 0x0

    goto/16 :goto_a

    .line 2610
    :cond_1a
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleClickBehavior:Z

    goto :goto_b

    .line 2614
    :cond_1b
    const/16 v24, 0x0

    goto :goto_c
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "componentName"

    .prologue
    .line 8752
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 8753
    return-void
.end method

.method updateWacomOffset(I)V
    .locals 5
    .parameter "rotation"

    .prologue
    .line 1119
    const/4 v1, 0x0

    .line 1121
    .local v1, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1122
    .end local v1           #out:Ljava/io/OutputStream;
    .local v2, out:Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1129
    if-eqz v2, :cond_0

    .line 1130
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 1136
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .line 1132
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 1133
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 1135
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 1123
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1129
    :goto_1
    if-eqz v1, :cond_1

    .line 1130
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1132
    :catch_2
    move-exception v0

    .line 1133
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1125
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 1126
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1129
    if-eqz v1, :cond_1

    .line 1130
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 1132
    :catch_4
    move-exception v0

    .line 1133
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1128
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1129
    :goto_3
    if-eqz v1, :cond_2

    .line 1130
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1134
    :cond_2
    :goto_4
    throw v3

    .line 1132
    :catch_5
    move-exception v0

    .line 1133
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1128
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_3

    .line 1125
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 1123
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public userActivity()V
    .locals 5

    .prologue
    .line 8006
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v1

    .line 8007
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    .line 8009
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8010
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8012
    :cond_0
    monitor-exit v1

    .line 8013
    return-void

    .line 8012
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public windowTypeToLayerLw(I)I
    .locals 6
    .parameter "type"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v2, 0x15

    const/4 v1, 0x5

    const/4 v0, 0x2

    .line 2893
    const/4 v5, 0x1

    if-lt p1, v5, :cond_0

    const/16 v5, 0x63

    if-gt p1, v5, :cond_0

    .line 2975
    :goto_0
    :sswitch_0
    return v0

    .line 2898
    :cond_0
    sget v5, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TRAY_BAR:I

    if-ne p1, v5, :cond_1

    move v0, v1

    .line 2899
    goto :goto_0

    .line 2900
    :cond_1
    sget v5, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_EDIT_MODE:I

    if-eq p1, v5, :cond_2

    sget v5, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_GUIDE_MODE:I

    if-ne p1, v5, :cond_3

    :cond_2
    move v0, v3

    .line 2901
    goto :goto_0

    .line 2905
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 2974
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2907
    :sswitch_1
    const/16 v0, 0xf

    goto :goto_0

    .line 2909
    :sswitch_2
    const/16 v0, 0x10

    goto :goto_0

    .line 2911
    :sswitch_3
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_4
    move v0, v2

    .line 2914
    goto :goto_0

    :sswitch_5
    move v0, v1

    .line 2917
    goto :goto_0

    :sswitch_6
    move v0, v3

    .line 2919
    goto :goto_0

    :sswitch_7
    move v0, v4

    .line 2921
    goto :goto_0

    .line 2923
    :sswitch_8
    const/16 v0, 0xb

    goto :goto_0

    .line 2925
    :sswitch_9
    const/16 v0, 0xc

    goto :goto_0

    .line 2927
    :sswitch_a
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_b
    move v0, v2

    .line 2929
    goto :goto_0

    .line 2931
    :sswitch_c
    const/16 v0, 0x9

    goto :goto_0

    .line 2933
    :sswitch_d
    const/16 v0, 0xa

    goto :goto_0

    .line 2935
    :sswitch_e
    const/16 v0, 0x11

    goto :goto_0

    .line 2937
    :sswitch_f
    const/16 v0, 0x12

    goto :goto_0

    .line 2939
    :sswitch_10
    const/16 v0, 0x17

    goto :goto_0

    .line 2941
    :sswitch_11
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_12
    move v0, v2

    .line 2943
    goto :goto_0

    .line 2947
    :sswitch_13
    const/16 v0, 0x16

    goto :goto_0

    .line 2949
    :sswitch_14
    const/16 v0, 0x19

    goto :goto_0

    .line 2951
    :sswitch_15
    const/16 v0, 0x13

    goto :goto_0

    .line 2953
    :sswitch_16
    const/16 v0, 0x14

    goto :goto_0

    .line 2955
    :sswitch_17
    const/16 v0, 0x18

    goto :goto_0

    .line 2957
    :sswitch_18
    const/16 v0, 0x1a

    goto :goto_0

    .line 2959
    :sswitch_19
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_1a
    move v0, v4

    .line 2962
    goto :goto_0

    :sswitch_1b
    move v0, v1

    .line 2964
    goto :goto_0

    .line 2966
    :sswitch_1c
    const/16 v0, 0xc

    goto :goto_0

    .line 2968
    :sswitch_1d
    const/16 v0, 0xd

    goto :goto_0

    .line 2972
    :sswitch_1e
    const/16 v0, 0xf

    goto :goto_0

    .line 2905
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_7
        0x7d3 -> :sswitch_a
        0x7d4 -> :sswitch_8
        0x7d5 -> :sswitch_12
        0x7d6 -> :sswitch_f
        0x7d7 -> :sswitch_11
        0x7d8 -> :sswitch_5
        0x7d9 -> :sswitch_9
        0x7da -> :sswitch_b
        0x7db -> :sswitch_c
        0x7dc -> :sswitch_d
        0x7dd -> :sswitch_0
        0x7de -> :sswitch_2
        0x7df -> :sswitch_10
        0x7e0 -> :sswitch_13
        0x7e1 -> :sswitch_3
        0x7e2 -> :sswitch_14
        0x7e3 -> :sswitch_15
        0x7e4 -> :sswitch_e
        0x7e5 -> :sswitch_17
        0x7e6 -> :sswitch_18
        0x7e7 -> :sswitch_19
        0x7e8 -> :sswitch_16
        0x802 -> :sswitch_1e
        0x833 -> :sswitch_4
        0x834 -> :sswitch_1a
        0x835 -> :sswitch_1b
        0x836 -> :sswitch_1c
        0x837 -> :sswitch_1d
    .end sparse-switch
.end method
