.class public Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String; = "ADPD"

.field private static final ACTION_DEVICE_WAKEUP:Ljava/lang/String; = "Device_wakeup"

.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final DEBUG:Z = false

.field public static final EOH_STOP_BY_SCREEN_OFF:I = 0x0

.field public static final EXTRA_ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String; = "PowerKey DoubleClick"

.field public static final EXTRA_VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String; = "HomeKey Click"

.field public static final EXTRA_VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String; = "RecentKey Click"

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final INTENT_ACTION_HOME_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.action.HOME_DOUBLE_CLICK"

.field private static final INTENT_PERMISSION_HOME_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.permisson.HOME_DOUBLE_CLICK"

.field private static final MENU_LONG_POLICY_LAUNCH_SFINDER:Ljava/lang/String; = "SFINDER"

.field static final QUICKACCESS_BLACKUI_COMPONENT:Ljava/lang/String; = "com.sec.android.app.GlanceView"

.field static final QUICKACCESS_BLACKUI_LAUNCH_ACTION:Ljava/lang/String; = "com.android.settings.LaunchGlanceView"

.field static final QUICKACCESS_BLACKUI_RECEIVER:Ljava/lang/String; = "com.sec.android.app.GlanceView.GlanceReceiver"

.field static final SAFE_DEBUG:Z

.field static final SAMSUNGPAY_LAUNCH_ACTION:Ljava/lang/String; = "com.samsung.android.spay.quickpay"

.field static final SCREENCAPTURE_BOTH:I = 0x3

.field static final SCREENCAPTURE_KEY:I = 0x1

.field static final SCREENCAPTURE_MAIN:I = 0x1

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_PALM:I = 0x2

.field static final SCREENCAPTURE_SUB:I = 0x2

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field public static final START_AOD_BOOT:I = 0x1

.field public static final START_AOD_SCREEN_OFF:I = 0x3

.field public static final START_AOD_SCREEN_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field public static final VOICE_CALL_HOMEKEY_ANSWER:Ljava/lang/String; = "VCHA"

.field public static final VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String; = "VCHK"

.field public static final VOICE_CALL_POWERKEY_ENDCALL:Ljava/lang/String; = "VCPE"

.field public static final VOICE_CALL_POWERKEY_SIELNCE:Ljava/lang/String; = "VCPS"

.field public static final VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String; = "VCRK"

.field public static final VOICE_CALL_VOLUMEKEY_SILENCE:Ljava/lang/String; = "VCVS"

.field static final localLOGV:Z

.field private static mCameraId:Ljava/lang/String;

.field private static mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static mCurrentUser:I

.field static mFocusedWindowPkgName:Ljava/lang/String;

.field private static mIsTablet:Z


# instance fields
.field private final EnableLinuxCOMMONAPI4:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field final QUICKACCESS_CAMERA:I

.field final QUICKACCESS_CHANGE_AOD_MODE:I

.field final QUICKACCESS_SAMSUNGPAY:I

.field final QUICKACCESS_STATUS:I

.field final QUICKACCESS_SUBSCREEN_WAKEUP:I

.field private final UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

.field private final UVS_ORIENTATION_REQUEST:Ljava/lang/String;

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field private bIsTorchOn:Z

.field mAlwaysComponet:Landroid/content/ComponentName;

.field mAlwaysIntent:Landroid/content/Intent;

.field public mAodStartState:I

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableDoublTapOnHomeCommand:Z

.field mAvailableVoiceCommand:Z

.field private mBackKeyConsumed:Z

.field mBlackMemoIntent:Landroid/content/Intent;

.field mBlockKeyForDrivingMode:Z

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCapturedDisplay:I

.field mCapturedOrigin:I

.field private final mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

.field mClearCoverComponent:Landroid/content/ComponentName;

.field mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

.field mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field private mContextLoggingThread:Ljava/lang/Thread;

.field private mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field mCoverNoteEnabled:Z

.field final mDcmAppPkg:Ljava/lang/String;

.field mDoubleTapHomeUser:I

.field mDoubleTapOnHomeBehavior:I

.field mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEM:Lcom/sec/android/emergencymode/EmergencyManager;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateComponent:Landroid/content/ComponentName;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field private mFolderCloseSound:Ljava/lang/String;

.field private mFolderOpenSound:Ljava/lang/String;

.field private mFolderSoundEnable:Z

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field private mHasFakeMenuKeyBack:Z

.field private mHasFakeMenuKeyRecent:Z

.field mHasFlashAnnotateComponent:Z

.field private mHasPermanentMenuKey:Z

.field mIsCheckDrivingMode:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field mIsKidsModeEnabled:Z

.field private final mIsLiveDemo:Z

.field private mIsRingingOrOffhook:Z

.field mIsSafetyAssuranceEnabled:Z

.field private mIsSupportManualScreenPinning:Z

.field mIsUseAccessControl:Z

.field private mIsWakeupPrevention:Z

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field final mLock:Ljava/lang/Object;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLowPowerMode:Z

.field private mMenuConsumed:Z

.field private mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

.field mNetworkSelectionLongPress:Z

.field mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenInsertedIntentUserSwitch:Landroid/content/Intent;

.field mPenNotifyVibrationChecked:Z

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPowerDoubleBehavior:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerSave:Z

.field mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

.field private mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mProKioskReEnableVolumeUpKey:Z

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRecentConsumed:Z

.field private final mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

.field mRingtone:Landroid/media/Ringtone;

.field private mRotationBooster:Landroid/os/DVFSHelper;

.field private final mRotationForQuickAccess:Ljava/lang/Runnable;

.field private mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

.field final mScreenshotLock:Ljava/lang/Object;

.field private mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

.field mSideSyncSourcePresentationActived:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field mTorchlightEnabled:Z

.field mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field mTripleTapOnHomeBehavior:I

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field private mUserKeyConsumed:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mUvsOrientation:I

.field mUvsReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/Vibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field private mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

.field private mWakeupPreventionPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    sput-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    const-string v0, "ro.build.characteristics"

    const-string v2, "phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    sput-object v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    sput v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    sput-object v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    iput v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedOrigin:I

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    iput v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableLinuxCommonApi4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_REQUEST:Ljava/lang/String;

    const-string v0, "LGT"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    iput v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_STATUS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_CAMERA:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_SAMSUNGPAY:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_SUBSCREEN_WAKEUP:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_CHANGE_AOD_MODE:I

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLowPowerMode:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    const-string v0, "com.nttdocomo.android.mascot"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDcmAppPkg:Ljava/lang/String;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$4;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$5;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$16;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsLiveDemo:Z

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$19;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$21;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$23;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$23;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAodStartState:I

    return-void
.end method

.method private TorchModeFlashSet(I)V
    .locals 8
    .param p1, "torchTime"    # I

    .prologue
    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .local v1, "input":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/FileWriter;
    if-lez p1, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "1"

    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    :cond_3
    iput-boolean v7, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "0"

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v4, "SamsungWindowManager"

    const-string v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    throw v4

    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_3
    move-exception v5

    goto :goto_5

    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_4

    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updatePowerSave()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->setPowerSave(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->setUvsOrieatation(I)V

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->initCameraManager()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    sget-object v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .local v5, "ids":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .local v4, "id":Ljava/lang/String;
    sget-object v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :goto_1
    return-object v4

    .restart local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .locals 3

    .prologue
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private handleTorchKey()V
    .locals 4

    .prologue
    sget-object v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->initCameraManager()V

    :cond_0
    :try_start_0
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Torch light bIsTorchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    sget-object v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t initialize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleUserKey(Z)Z
    .locals 14
    .param p1, "longPress"    # Z

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    .local v7, "ret":Z
    const/4 v5, 0x0

    .local v5, "package_index":I
    const/4 v4, 0x0

    .local v4, "launch_app":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "package_name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "activity_name":Ljava/lang/String;
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v3

    .local v3, "emMode":I
    sget-boolean v9, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "now mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "BCM_intent":Landroid/content/Intent;
    const-string v9, "flag"

    const/16 v10, 0x800

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    const-string v9, "enabled"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v0    # "BCM_intent":Landroid/content/Intent;
    .end local v3    # "emMode":I
    :goto_1
    return v8

    .restart local v0    # "BCM_intent":Landroid/content/Intent;
    .restart local v3    # "emMode":I
    :cond_2
    if-ne v3, v13, :cond_1

    const-string v9, "enabled"

    invoke-virtual {v0, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .end local v0    # "BCM_intent":Landroid/content/Intent;
    .end local v3    # "emMode":I
    :cond_3
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "long_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_4

    const/16 v8, 0x2f

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_4
    :goto_3
    sget-boolean v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found pkg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " longPress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v8, "torch"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "torch"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "service.camera.running"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->checkLaunchSetting()I

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleTorchKey()V

    const/4 v7, 0x1

    :cond_6
    :goto_4
    move v8, v7

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v8

    if-ne v8, v13, :cond_8

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "short_press_app_battery_conserve"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_8
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "short_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "SamsungWindowManager"

    const-string v9, "Invalid user key app defined"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v1, 0x0

    goto/16 :goto_3

    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleTorchKey()V

    const/4 v7, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSupportActiveDouble()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->getActiveKeyTriggered()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw()V

    goto :goto_4
.end method

.method private initCameraManager()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    sput-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .local v0, "cameraId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getCameraId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    :goto_0
    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "SamsungWindowManager"

    const-string v3, "Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    throw v2

    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    const-string v2, "SamsungWindowManager"

    const-string v3, "camera service is not availabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$12;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isBackKeyConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isDefaultLauncher(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "preferredActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    const-string v7, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDefaultLauncher :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_1
    return v5

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method public static isEncryptionMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    const-string v1, "trigger_restart_min_framework"

    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "encrypted"

    const-string v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .locals 5
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x1

    .local v0, "allowed":Z
    :try_start_0
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v2

    .local v2, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, p2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v2    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKioskLocked()Z
    .locals 8

    .prologue
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .local v3, "mPm":Landroid/os/PersonaManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v5

    .local v5, "personaids":[I
    if-eqz v5, :cond_2

    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    .local v4, "personaid":I
    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "SamsungWindowManager"

    const-string v7, "Kiosk exists and it is locked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "personaid":I
    .end local v5    # "personaids":[I
    :goto_1
    return v6

    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "personaid":I
    .restart local v5    # "personaids":[I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "personaid":I
    .end local v5    # "personaids":[I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private isKnoxCreatingOnTop()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .local v2, "isKnoxCreatingOnTop":Z
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .local v3, "mPm":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v1

    .local v1, "ids":[I
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v0

    invoke-virtual {v3, v6}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxSetupWizardTopActivity()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .end local v0    # "i":I
    :cond_1
    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isKnoxCreatingOnTop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isKnoxKeyguardShowing()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .local v0, "mPm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string v2, "KnoxKeyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKnoxSetupWizardTopActivity()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "isKnoxSetupWizardTopActivity":Z
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.knoxsetupwizardclient"

    const-string v3, "com.sec.knox.knoxsetupwizardclient.SetupWizardKnoxNameSettingActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "KnoxSetupWizard":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentTopActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKnoxSetupWizardTopActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private isScreenCaptureEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .local v0, "isScreenCaptureEnabled":Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "ShutdownThread is started."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SamsungWindowManager"

    const-string v4, "mEDM.getRestrictionPolicy().isScreenCaptureEnabled() return false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .local v1, "pService":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->isKnoxMultiWindowExist()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SamsungWindowManager"

    const-string v4, "KnoxMultiwindowExists. isScreenCaptureEnabled() returns false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v5, 0x1040bb1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method private isUserKeyConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWatchRunning()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v1, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "taskName":Ljava/lang/String;
    const-string v5, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWatchRunning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.sec.android.app.premiumwatch"

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v2    # "taskName":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "soundUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .local v2, "masterStreamVolume":I
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .end local v2    # "masterStreamVolume":I
    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to stop Ringtone - already done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "masterStreamVolume":I
    :cond_1
    const-string v4, "SamsungWindowManager"

    const-string v5, "There are no ringtones"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "masterStreamVolume":I
    :cond_2
    const-string v4, "SamsungWindowManager"

    const-string v5, "AudioManager loading fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private playSoundEffect()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_min_framework"

    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x66

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "SamsungWindowManager"

    const-string v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "SamsungWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendHomeDoubleClickBR()V
    .locals 4

    .prologue
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string v2, "send HomeDoubleClickBR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.HOME_DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permisson.HOME_DOUBLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private setPowerSave(Z)V
    .locals 1
    .param p1, "powerSave"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSave:Z

    goto :goto_0
.end method

.method private setUvsOrieatation(I)V
    .locals 1
    .param p1, "request"    # I

    .prologue
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    :cond_0
    iput p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    goto :goto_0
.end method

.method private startCustomApp()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-nez v9, :cond_1

    const-string v8, "SamsungWindowManager"

    const-string v9, "mKnoxCustomSystemManager null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressMode()I

    move-result v3

    .local v3, "mode":I
    if-eqz v3, :cond_0

    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .local v6, "taskName":Ljava/lang/String;
    if-ne v3, v8, :cond_2

    invoke-direct {p0, v6}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDefaultLauncher(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Foreground taskName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "mode":I
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "taskName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startCustomApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "mode":I
    .restart local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "taskName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v1

    .local v1, "appToStart":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const-string v8, "SamsungWindowManager"

    const-string v9, "appToStart null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting custom app : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .local v4, "regularIntent":Landroid/content/Intent;
    if-eqz v4, :cond_5

    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    move v7, v8

    goto/16 :goto_0
.end method

.method private startSGA(Ljava/lang/String;)V
    .locals 5
    .param p1, "gamePkg"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopScreenManager()Z
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .local v4, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v5, "com.samsung.android.dualscreencontrolpanel.DualScreenControlPanelService"

    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.dualscreencontrolpanel"

    const-string v6, "com.samsung.android.dualscreencontrolpanel.DualScreenControlPanelService"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 v5, 0x1

    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private toggleScreenManager()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    .local v1, "taskInfoMain":Lcom/samsung/android/dualscreen/TaskInfo;
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v0

    .local v0, "TaskInfoSub":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updatePowerSave()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->setPowerSave(Z)V

    return-void
.end method

.method private updateWacomOffset(I)V
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_2
    :goto_4
    throw v3

    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private updateWakeupPreventionPackages(Ljava/lang/String;)V
    .locals 6
    .param p1, "wakeupPreventionPackages"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWakeupPreventionPackages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "wakeupPreventionPackagesList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v0, v2

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "wakeupPreventionPackagesList":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastHardKeyIntent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getHardKeyIntentState()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .local v2, "keyCode":I
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    sparse-switch v2, :sswitch_data_0

    .end local v0    # "down":Z
    .end local v2    # "keyCode":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "down":Z
    .restart local v2    # "keyCode":I
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.action.HARD_KEY_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.intent.extra.KEY_CODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public callAccessibilityScreenCurtain()V
    .locals 4

    .prologue
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ADPD"

    const-string v3, "PowerKey DoubleClick"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenCurtain()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public callAccessibilityTalkbackMode()V
    .locals 4

    .prologue
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityTalkbackMode() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public changeAppOpsMode(IILjava/lang/String;)I
    .locals 7
    .param p1, "outAppOp"    # I
    .param p2, "callingUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    .local v1, "ret":I
    const-string v4, "com.nttdocomo.android.mascot"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, p3, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mode change : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .end local v2    # "identity":J
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured for AppOpsManager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkLaunchSetting()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "state":I
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgUri"    # Ljava/lang/String;

    .prologue
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungWindowManager"

    const-string v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_0
.end method

.method public downloadForSamsungApps()V
    .locals 5

    .prologue
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "http://apps.samsung.com/mw/apk_en.as"

    .local v2, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsKidsModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mAvailableDoublTapOnHomeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mDoubleTapHomeUser="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mComponentNameOfDoubleTapOnHomeCommandIntent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTripleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mAvailableVoiceCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasFakeMenuKeyRecent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasFakeMenuKeyBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsWakeupPrevention="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWakeupPreventionPackages="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/sec/CombinationKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public endCallByGamekey()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "hungUp":Z
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v1

    :cond_0
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v3

    .local v3, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    or-int/2addr v1, v4

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "SamsungWindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAodStartState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAodStartState:I

    return v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKnoxCustomManager()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .locals 1

    .prologue
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .locals 2
    .param p1, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/sec/CombinationKeyManager;->getTimeoutTimeOfKeyCombination(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUvsOrientation()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method public goingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    :cond_0
    return-void
.end method

.method public handleLongPressOnHome()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isScreenOffOnLongPressHome()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in KNOX"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in ProKiosk Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in Ringing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in VoIPRinging"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in emergency & upsm mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in kidsmode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress blocked by Interaction control"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in UserSetup not complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public handleLongPressOnMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "Menu longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_0
.end method

.method public handleLongPressOnRecent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isRecentAppStart()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SamsungWindowManager"

    const-string v3, "Recent longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    goto :goto_0
.end method

.method public handleLongPressOnStar()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string v3, "reason"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.sec.android.applicationshortcut"

    const-string v3, "com.sec.android.applicationshortcut.MainviewActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launch applicationshortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch applicationshortcut."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleQuickAccess(IFF)V
    .locals 8
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-array v1, v7, [F

    const/4 v3, 0x0

    aput p2, v1, v3

    aput p3, v1, v5

    .local v1, "location":[F
    const/4 v2, 0x0

    .local v2, "premission":Ljava/lang/String;
    if-ne p1, v6, :cond_1

    const-string v3, "com.samsung.android.spay.quickpay"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/String;

    .end local v2    # "premission":Ljava/lang/String;
    const-string v3, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v2    # "premission":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendbroadcast intent :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " premission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x7

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungWindowManager"

    const-string v4, "main screen wake up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->setMultipleScreenStateOverride(II)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SamsungWindowManager"

    const-string v4, "sub screen wake up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v7, v6}, Landroid/os/PowerManager;->setMultipleScreenStateOverride(II)V

    goto :goto_1

    :cond_5
    const/16 v3, 0x8

    if-ne p1, v3, :cond_6

    const-string v3, "com.samsung.android.app.aodservice.CHANGE_AOD_MODE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "info"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "location"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_6
    const-string v3, "com.android.settings.LaunchGlanceView"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "info"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "location"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public handleWakingUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    :cond_1
    return-void
.end method

.method public hasCustomDoubleTapHomeCommand()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideRecentApps(Z)Z
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignorePowerKeyInEncrypting()Z
    .locals 6

    .prologue
    const-string v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "state":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x0

    .local v1, "progress":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Ignore Power Off Key!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .end local v1    # "progress":I
    :goto_1
    return v3

    .restart local v1    # "progress":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "progress":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/policy/sec/CombinationKeyManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SamsungPhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mTorchlightWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.permission.PALM_MOTION"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v6, "kioskFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v1, "isQuickLaunchMode"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.action.SVOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.always.action.LAUNCH_ALWAYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAlwaysIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.secretmode.service"

    const-string v4, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlackMemoIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlackMemoIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.snote"

    const-string v4, "com.samsung.android.snote.control.ui.quickmemo.service.InstantMemo_Service"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.always"

    const-string v2, "com.samsung.android.app.always.ui.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAlwaysComponet:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotate"

    const-string v2, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    const-string v0, "com.sec.android.daynote"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mVoiceWakeUpWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    :cond_0
    const-string v0, "LGT"

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .local v7, "mUvsFilter":Landroid/content/IntentFilter;
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.SET_ORIENTATION"

    invoke-virtual {v0, v1, v7, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .end local v7    # "mUvsFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$7;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.android.intent.action.PAUSE_WATCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.intent.action.STOP_WATCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-direct {v0, p0, v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;)V

    move-object v5, v0

    :cond_3
    iput-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$8;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$22;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 30
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v19

    .local v19, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    .local v18, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    .local v21, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .local v13, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_2

    const/4 v10, 0x1

    .local v10, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .local v6, "canceled":Z
    const/16 v26, 0x19

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    const/16 v26, 0x18

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    :cond_0
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v26

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v26

    if-eqz v26, :cond_3

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_1

    const-string v26, "SamsungWindowManager"

    const-string v27, "knox: volume key is blocked"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v26, 0x1

    :goto_1
    return v26

    .end local v6    # "canceled":Z
    .end local v10    # "down":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .restart local v6    # "canceled":Z
    .restart local v10    # "down":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_8

    const/4 v15, 0x1

    .local v15, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    if-nez v26, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    const/16 v26, 0x18

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    const/4 v15, 0x1

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    :cond_4
    :goto_2
    if-nez v15, :cond_8

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_5

    const-string v26, "SamsungWindowManager"

    const-string v27, "MDM: key is blocked"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v26, 0x1

    goto :goto_1

    :cond_6
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_2

    :cond_7
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_2

    .end local v15    # "isAllowed":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/CombinationKeyManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_b

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_a

    const-string v26, "SamsungWindowManager"

    const-string v27, "interceptKeyTi : Key was blocked by sidesync."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_b
    const/16 v26, 0x3

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    if-eqz v26, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v20

    .local v20, "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v20, :cond_d

    const/4 v15, 0x1

    .restart local v15    # "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    if-nez v26, :cond_c

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    :goto_3
    if-nez v15, :cond_d

    const-string v26, "SamsungWindowManager"

    const-string v27, "home key disabled by edm"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_c
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    goto :goto_3

    .end local v15    # "isAllowed":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v26

    if-gtz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v26

    if-eqz v26, :cond_f

    :cond_e
    const-string v26, "SamsungWindowManager"

    const-string v27, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    goto/16 :goto_1

    .end local v20    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxKeyguardShowing()Z

    move-result v26

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    move/from16 v26, v0

    if-nez v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v26

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v26

    if-nez v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    new-instance v27, Landroid/content/Intent;

    const-string v28, "com.samsung.knox.kss.KnoxKeyguardHomeButton"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v26

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "vrmode_developer_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_12

    const/16 v25, 0x1

    .local v25, "vrDevelopMode":Z
    :goto_4
    if-nez v25, :cond_13

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v26

    if-nez v26, :cond_13

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_11

    const-string v26, "SamsungWindowManager"

    const-string v27, "Home key is blocked by VR"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v26, 0x1

    goto/16 :goto_1

    .end local v25    # "vrDevelopMode":Z
    :cond_12
    const/16 v25, 0x0

    goto :goto_4

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_15

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_14

    const-string v26, "SamsungWindowManager"

    const-string v27, "Home key is send to SideSync"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v26

    if-eqz v26, :cond_16

    const-string v26, "SamsungWindowManager"

    const-string v27, "isMirrorLinkEnabled() true"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_17

    const-string v26, "SamsungWindowManager"

    const-string v27, "carmode true"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_18

    const-string v26, "SamsungWindowManager"

    const-string v27, "Home key is blocked by policy"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKioskLocked()Z

    move-result v26

    if-eqz v26, :cond_1a

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_19

    const-string v26, "SamsungWindowManager"

    const-string v27, "Home key is blocked by Kiosk"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_1a
    if-nez v10, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v26

    if-eqz v26, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isAnyKeyMode()Z

    move-result v26

    if-eqz v26, :cond_1c

    :try_start_0
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v24

    .local v24, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v24, :cond_1b

    invoke-interface/range {v24 .. v24}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    const-string v26, "SamsungWindowManager"

    const-string v27, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_1b
    const-string v26, "SamsungWindowManager"

    const-string v27, "Unable to find IVoIPInterface interface"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v24    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_1c
    :goto_5
    if-nez v10, :cond_1d

    :cond_1d
    :goto_6
    const/16 v26, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v12

    .local v12, "ex":Landroid/os/RemoteException;
    const-string v26, "SamsungWindowManager"

    const-string v27, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v12    # "ex":Landroid/os/RemoteException;
    :cond_1e
    const/16 v26, 0x52

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f

    if-eqz v10, :cond_1d

    goto :goto_6

    :cond_1f
    const/16 v26, 0xbb

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_20

    const/16 v26, 0x3e9

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_2d

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v26

    if-eqz v26, :cond_22

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_21

    const-string v26, "SamsungWindowManager"

    const-string v27, "Recent key is blocked in ProKiosk mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    if-eqz v26, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v26

    if-gtz v26, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v26

    if-eqz v26, :cond_24

    :cond_23
    const-string v26, "SamsungWindowManager"

    const-string v27, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxKeyguardShowing()Z

    move-result v26

    if-nez v26, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxCreatingOnTop()Z

    move-result v26

    if-eqz v26, :cond_26

    :cond_25
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v26

    if-eqz v26, :cond_27

    const-string v26, "SamsungWindowManager"

    const-string v27, "isMirrorLinkEnabled() true"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_28

    const-string v26, "SamsungWindowManager"

    const-string v27, "carmode true"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_2a

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_29

    const-string v26, "SamsungWindowManager"

    const-string v27, "Recent key is blocked by policy"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKioskLocked()Z

    move-result v26

    if-eqz v26, :cond_2c

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_2b

    const-string v26, "SamsungWindowManager"

    const-string v27, "Recent key is blocked by Kiosk"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_2c
    if-eqz v10, :cond_1d

    if-nez v21, :cond_1d

    goto/16 :goto_6

    :cond_2d
    const/16 v26, 0x4

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_2e

    const/16 v26, 0x6f

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_30

    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1d

    if-nez v10, :cond_2f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isBackKeyConsumed()Z

    move-result v26

    if-eqz v26, :cond_1d

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v26, v0

    if-nez v26, :cond_1d

    const/16 v26, 0xa

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    const/16 v26, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    goto/16 :goto_6

    :cond_30
    const/16 v26, 0x415

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_32

    if-eqz v10, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x3e8

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_31
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_32
    const/16 v26, 0x416

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_34

    if-nez v10, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move/from16 v26, v0

    if-eqz v26, :cond_33

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchFingerPrint()V

    :cond_33
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_34
    const/16 v26, 0x3f9

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_3f

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v26

    if-eqz v26, :cond_3d

    const-string v26, "service.media.dmb"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "dmb_running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "dmb_antenna_auto_start"

    const/16 v28, 0x0

    const/16 v29, -0x2

    invoke-static/range {v26 .. v29}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3a

    const/16 v16, 0x1

    .local v16, "isDmbAutoStarton":Z
    :goto_7
    const/4 v5, 0x0

    .local v5, "b_dmb_running":Z
    const/16 v17, 0x0

    .local v17, "isSecureKeyguard":Z
    if-eqz v7, :cond_35

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_35

    const-string v26, "1"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3b

    const/4 v5, 0x1

    :cond_35
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v17

    :cond_36
    const-string v26, "SamsungWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", isSecureKeyguard="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", isDmbAutoStarton="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_38

    if-nez v21, :cond_38

    :try_start_1
    const-string v4, "/efs/FactoryApp/tdmb_det_count"

    .local v4, "TDMB_DET_PATH":Ljava/lang/String;
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "strDMBCount":Ljava/lang/String;
    const-string v26, "SamsungWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TDMB_DET_COUNT : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v23, :cond_3c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_3c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    const-wide/16 v28, 0x1

    add-long v8, v26, v28

    .local v8, "dmb_det_count":J
    const-wide/32 v26, 0xf423f

    cmp-long v26, v8, v26

    if-lez v26, :cond_37

    const-wide/16 v8, 0x1

    :cond_37
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v8    # "dmb_det_count":J
    .end local v23    # "strDMBCount":Ljava/lang/String;
    :cond_38
    :goto_9
    if-nez v10, :cond_1d

    if-nez v21, :cond_1d

    if-nez v5, :cond_1d

    if-nez v17, :cond_1d

    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v26

    if-nez v26, :cond_1d

    const-string v26, "SamsungWindowManager"

    const-string v27, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Landroid/content/ComponentName;

    const-string v27, "com.sec.android.app.dmb"

    const-string v28, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v26 .. v28}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .local v14, "intent":Landroid/content/Intent;
    const-string v26, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v26

    if-eqz v26, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_39
    const/16 v26, 0x1

    goto/16 :goto_1

    .end local v5    # "b_dmb_running":Z
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "isDmbAutoStarton":Z
    .end local v17    # "isSecureKeyguard":Z
    :cond_3a
    const/16 v16, 0x0

    goto/16 :goto_7

    .restart local v5    # "b_dmb_running":Z
    .restart local v16    # "isDmbAutoStarton":Z
    .restart local v17    # "isSecureKeyguard":Z
    :cond_3b
    const-string v26, "0"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_35

    const/4 v5, 0x0

    goto/16 :goto_8

    .restart local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .restart local v23    # "strDMBCount":Ljava/lang/String;
    :cond_3c
    :try_start_3
    const-string v26, "0"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_9

    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v23    # "strDMBCount":Ljava/lang/String;
    :catch_1
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    const-string v26, "SamsungWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "IOException : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v26, "SamsungWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NumberFormatException : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v11

    .local v11, "e":Landroid/content/ActivityNotFoundException;
    const-string v26, "SamsungWindowManager"

    const-string v27, "No activity to launch DMB."

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .end local v5    # "b_dmb_running":Z
    .end local v7    # "dmb_running":Ljava/lang/String;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "isDmbAutoStarton":Z
    .end local v17    # "isSecureKeyguard":Z
    :cond_3d
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v26

    if-eqz v26, :cond_1d

    const/16 v17, 0x0

    .restart local v17    # "isSecureKeyguard":Z
    const-string v26, "SamsungWindowManager"

    const-string v27, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v17

    :cond_3e
    if-nez v10, :cond_1d

    if-nez v21, :cond_1d

    if-nez v17, :cond_1d

    const-string v26, "SamsungWindowManager"

    const-string v27, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN TO SEND BROADCAST"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v26, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v26, 0x1

    goto/16 :goto_1

    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "isSecureKeyguard":Z
    :cond_3f
    const/16 v26, 0x3fa

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_41

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v26

    if-eqz v26, :cond_40

    if-nez v10, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v26

    if-nez v26, :cond_1d

    const-string v26, "SamsungWindowManager"

    const-string v27, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v26, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v26, 0x1

    goto/16 :goto_1

    .end local v14    # "intent":Landroid/content/Intent;
    :cond_40
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v26

    if-eqz v26, :cond_1d

    if-nez v10, :cond_1d

    const-string v26, "SamsungWindowManager"

    const-string v27, "KEYCODE_DTV_ANT_CLOSE"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v26, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v26, 0x1

    goto/16 :goto_1

    .end local v14    # "intent":Landroid/content/Intent;
    :cond_41
    const/16 v26, 0x3eb

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_43

    if-eqz v10, :cond_1d

    if-nez v19, :cond_1d

    if-nez v21, :cond_1d

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v22

    .local v22, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v22, :cond_42

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v22    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_42
    :goto_b
    const/16 v26, 0x1

    goto/16 :goto_1

    :catch_4
    move-exception v12

    .restart local v12    # "ex":Landroid/os/RemoteException;
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_b

    .end local v12    # "ex":Landroid/os/RemoteException;
    :cond_43
    const/16 v26, 0x428

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_45

    if-nez v10, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    :cond_44
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_45
    const/16 v26, 0x3ec

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_46

    if-nez v10, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v26

    if-eqz v26, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v26

    if-eqz v26, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v26

    if-eqz v26, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$11;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$11;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_46
    const/16 v26, 0x425

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_49

    if-nez v10, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v26

    if-eqz v26, :cond_47

    if-nez v19, :cond_47

    const-string v26, "SamsungWindowManager"

    const-string v27, "KEYCODE_MULTI_WINDOW key input"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->handleLongPressOnRecent()Z

    move-result v26

    if-nez v26, :cond_47

    const-string v26, "SamsungWindowManager"

    const-string v27, "KEYCODE_MULTI_WINDOW key is blocked"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_c
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/policy/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v26

    if-nez v26, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;->toggleMultiWindowTray()Z

    goto :goto_c

    :cond_49
    const/16 v26, 0x41a

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_1d

    const/16 v26, 0x1a

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v26

    if-eqz v26, :cond_1d

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_1d

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_4a
    const/16 v26, 0x3f7

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x1040b6a

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_4b
    if-eqz v10, :cond_4d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v26

    if-eqz v26, :cond_1d

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_4c

    const-string v26, "SamsungWindowManager"

    const-string v27, "User key longpress - Do longpress"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v26

    if-eqz v26, :cond_1d

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_4d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isUserKeyConsumed()Z

    move-result v26

    if-eqz v26, :cond_4f

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_4e

    const-string v26, "SamsungWindowManager"

    const-string v27, "User key up after long press - ignore up key"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_4f
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v26

    if-eqz v26, :cond_1d

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_50
    const/16 v26, 0x417

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_56

    const-string v26, "SamsungWindowManager"

    const-string v27, "KeyEvent.KEYCODE_NETWORK_SEL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v26

    if-nez v26, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_52

    :cond_51
    const-string v26, "SamsungWindowManager"

    const-string v27, "Network selection key - no action in factory mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_52
    if-nez v19, :cond_53

    if-eqz v10, :cond_54

    and-int/lit16 v0, v13, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_54

    const-string v26, "SamsungWindowManager"

    const-string v27, "Network selection long press action"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v26, "ACTION_NETWORK_LONGPRESS_KEY"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    .end local v14    # "intent":Landroid/content/Intent;
    :cond_53
    :goto_d
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_54
    if-nez v10, :cond_53

    if-nez v21, :cond_53

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    move/from16 v26, v0

    if-nez v26, :cond_55

    const-string v26, "SamsungWindowManager"

    const-string v27, "Network selection short press action"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v26, "ACTION_NETWORK_KEY"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_d

    .end local v14    # "intent":Landroid/content/Intent;
    :cond_55
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    goto :goto_d

    :cond_56
    const/16 v26, 0x40c

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_59

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v26

    if-nez v26, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_58

    :cond_57
    const-string v26, "SamsungWindowManager"

    const-string v27, "Data key - no action in factory mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_58
    if-nez v10, :cond_1d

    if-nez v21, :cond_1d

    const-string v26, "SamsungWindowManager"

    const-string v27, "3G key action"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/content/Intent;

    const-string v26, "android.settings.DATA_NETWORK_KEY_PRESSED"

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_6

    .end local v14    # "intent":Landroid/content/Intent;
    :cond_59
    const/16 v26, 0x1b

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_5c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v26

    if-nez v26, :cond_5a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v26

    if-nez v26, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1d

    :cond_5a
    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_5b

    const-string v26, "SamsungWindowManager"

    const-string v27, "Key was blocked by sim or carrier status"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_5c
    const/16 v26, 0x431

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1d

    sget-boolean v26, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v26, :cond_5d

    const-string v26, "SamsungWindowManager"

    const-string v27, "Key was blocked by carrier status"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    const/16 v26, 0x1

    goto/16 :goto_1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .locals 28
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/high16 v24, 0x20000000

    and-int v24, v24, p2

    if-eqz v24, :cond_1

    const/16 v18, 0x1

    .local v18, "interactive":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_2

    const/4 v11, 0x1

    .local v11, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v20

    .local v20, "keyCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/PhoneWindowManager;->getLockTaskMode()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/16 v24, 0xbb

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    :cond_0
    const-string v24, "SamsungWindowManager"

    const-string v25, "Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    :goto_2
    return v24

    .end local v11    # "down":Z
    .end local v18    # "interactive":Z
    .end local v20    # "keyCode":I
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .restart local v18    # "interactive":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .restart local v11    # "down":Z
    .restart local v20    # "keyCode":I
    :cond_3
    const/16 v24, 0x19

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v24

    if-eqz v24, :cond_5

    const-string v24, "SamsungWindowManager"

    const-string v25, "Volume key was blocked by MirrorLink"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->broadcastHardKeyIntent(Landroid/view/KeyEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_9

    const/16 v19, 0x1

    .local v19, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v24

    if-eqz v24, :cond_7

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    const/16 v19, 0x1

    :cond_6
    :goto_3
    if-nez v19, :cond_9

    const-string v24, "SamsungWindowManager"

    const-string v25, "MDM: key is blocked"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    goto :goto_3

    :cond_8
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    goto :goto_3

    .end local v19    # "isAllowed":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v24

    if-eqz v24, :cond_b

    sget-boolean v24, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v24, :cond_a

    const-string v24, "SamsungWindowManager"

    const-string v25, "interceptKeyTq : Key was blocked by access control"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v24, 0x1

    goto/16 :goto_2

    :cond_b
    const/16 v24, 0x1a

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v24

    if-eqz v24, :cond_c

    const-string v24, "SamsungWindowManager"

    const-string v25, "isMirrorLinkEnabled() true"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v24

    if-eqz v24, :cond_15

    const/16 v24, 0x1

    goto/16 :goto_2

    :cond_d
    const/16 v24, 0x427

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    if-nez v11, :cond_f

    const-string v24, "SamsungWindowManager"

    const-string v25, "launch voice LPSD"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x1388

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string v5, "com.samsung.android.app.sounddetector.VOICE_WAKEUP"

    .local v5, "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v5    # "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_f
    const/16 v24, 0x1

    goto/16 :goto_2

    :cond_10
    const/16 v24, 0x426

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    if-nez v11, :cond_12

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v24

    if-nez v24, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_13

    :cond_11
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v24, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v26, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .end local v17    # "intent":Landroid/content/Intent;
    :cond_12
    :goto_4
    const/16 v24, 0x1

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    const-string v24, "SamsungWindowManager"

    const-string v25, "launch drivelink"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v24, "com.sec.android.automotive.drivelink.ACTION_VOICE_WAKEUP"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4

    .end local v17    # "intent":Landroid/content/Intent;
    :cond_14
    const-string v24, "SamsungWindowManager"

    const-string v25, "launch voice command"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.samsung.alwaysmicon.alwaysmiconservice.ACTION_VOICE_WAKEUP"

    .local v4, "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4

    .end local v4    # "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v24

    if-eqz v24, :cond_16

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v24

    if-eqz v24, :cond_16

    const-string v24, "SamsungWindowManager"

    const-string v25, "interceptKeyTq : Key was blocked by sidesync."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v24

    if-eqz v24, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v24

    if-eqz v24, :cond_26

    if-eqz v11, :cond_26

    const/16 v24, 0x19

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_17

    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_26

    :cond_17
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: Volume Key app switching starting"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v7

    .local v7, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_18

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_1a

    :cond_18
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: no apps in list"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_5
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: Volume Key app switching done"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_2

    :cond_1a
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " apps in list"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "activity"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .local v6, "activityManager":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .local v22, "pm":Landroid/content/pm/PackageManager;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "availableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "appListItem":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .local v9, "appStartIntent":Landroid/content/Intent;
    if-eqz v9, :cond_1b

    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " available"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1b
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not available"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v8    # "appListItem":Ljava/lang/String;
    .end local v9    # "appStartIntent":Landroid/content/Intent;
    :cond_1c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_1d

    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: no available apps"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1d
    const v24, 0x7fffffff

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v23

    .local v23, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, "foregroundApp":Ljava/lang/String;
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " in foreground"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    .local v14, "foregroundAppIndex":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v15, v0, :cond_1f

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1e

    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " found at index "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v15

    :cond_1e
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_1f
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_20

    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not found in list; use first"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move-object/from16 v21, v13

    .local v21, "newApp":Ljava/lang/String;
    const/16 v24, 0x19

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    if-lez v14, :cond_22

    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    :cond_21
    :goto_8
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_25

    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " already in foreground"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_22
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_8

    :cond_23
    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v14, v0, :cond_24

    add-int/lit8 v24, v14, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_8

    :cond_24
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_8

    :cond_25
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .restart local v9    # "appStartIntent":Landroid/content/Intent;
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: switching to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_19

    const/high16 v24, 0x10400000

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v12

    .local v12, "e":Landroid/content/ActivityNotFoundException;
    const-string v24, "SamsungWindowManager"

    const-string v25, "No activity to launch Knox Custom switching."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .end local v6    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "appStartIntent":Landroid/content/Intent;
    .end local v10    # "availableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "e":Landroid/content/ActivityNotFoundException;
    .end local v13    # "foregroundApp":Ljava/lang/String;
    .end local v14    # "foregroundAppIndex":I
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "newApp":Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_26
    const/16 v24, 0x0

    goto/16 :goto_2
.end method

.method public isActivitiesAvailable(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAnyKeyMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "isAnyKeyMode":Z
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anykey_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAppLockRunning()Z
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, "isAppLockRunning":Z
    if-eqz v0, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .local v2, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "topPackageName":Ljava/lang/String;
    const-string v4, "com.samsung.android.applock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .end local v2    # "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "topPackageName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .local v0, "down":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    return v3

    .end local v0    # "down":Z
    :cond_0
    move v0, v4

    goto :goto_0

    .restart local v0    # "down":Z
    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public isBlockedPowerKeyByKeyTest(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungWindowManager"

    const-string v1, "Skip power key behavior by FactoryTest application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCarrierLocked()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v0

    return v0
.end method

.method public isCombinationKeyTriggered()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/CombinationKeyManager;->isCombinationKeyTriggered()Z

    move-result v0

    return v0
.end method

.method public isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isCurrentUserSetupComplete()Z
    .locals 1

    .prologue
    sget v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

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

.method public isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDockHomeEnabled(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .local v0, "resDeskHomeEnabled":Z
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    if-nez v1, :cond_0

    :cond_0
    return v0
.end method

.method public isDoubleTapOnHomeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SamsungWindowManager"

    const-string v3, "Home Double Tap block when Verizon Setup Wizard Running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "service.camera.running"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isCameraRunning":Z
    iget v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEnableAccessControl(I)Z
    .locals 8
    .param p1, "event"    # I

    .prologue
    const/4 v7, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_power_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .local v1, "mAccessPower":I
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_volume_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .local v2, "mAccessVolume":I
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_keyboard_block"

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "mAccessKeyboard":I
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    if-lt p1, v5, :cond_2

    const/16 v5, 0x12

    if-gt p1, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    goto :goto_0

    :sswitch_0
    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    goto :goto_0

    :sswitch_1
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_3

    if-nez v1, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    :sswitch_2
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_4

    if-nez v2, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public isHMTSupportAndConnected()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isKidsModeEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    return v0
.end method

.method public isLiveDemo()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsLiveDemo:Z

    return v0
.end method

.method public isMenuConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMirrorLinkEnabled()Z
    .locals 2

    .prologue
    const-string v0, "1"

    const-string v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOneTouchReportEnabled()Z
    .locals 17

    .prologue
    const-string v15, "go.police.report"

    .local v15, "oneTouchReportPackageName":Ljava/lang/String;
    const-string v14, "com.android.vending"

    .local v14, "oneTouchReportInstaller":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "installerPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v9, "content://go.police.provider.report"

    .local v9, "customerAgreementPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_3

    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .local v8, "customerAgreementColumn":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .local v10, "customerAgreementValue":I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_4

    const/4 v12, 0x1

    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    move v2, v12

    goto :goto_0

    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "customerAgreementColumn":I
    .restart local v10    # "customerAgreementValue":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isPowerSave()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSave:Z

    return v0
.end method

.method public isRecentAppStart()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressMode()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->startCustomApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecentConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRingingOrOffhook()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method public isSFinderLaunchable()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isSafetyAssuranceEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    return v0
.end method

.method public isScreenOffOnLongPressHome()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowOrHideRecentAppsAllowedByKNOX()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isSideSyncPresentationRunning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isSimLocked()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    return v0
.end method

.method public isSupportActiveDouble()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_press_app"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "launch_app":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportBCM()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEM:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportBatteryConversingMode()Z

    move-result v0

    return v0
.end method

.method public isTphoneRelaxMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSktTphoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "skt_phone20_relax_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isTripleTapOnHomeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupWizardRunning(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SamsungWindowManager"

    const-string v2, "Home Triple Tap block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUseAccessControl()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    return v0
.end method

.method public isUvsOrientationRequested()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "LGT"

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isVoIPRinging()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "isVoIPRinging":Z
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_0
    return v1

    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_0
    const-string v3, "SamsungWindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVolumeKeyAppsEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWakeupPreventionPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchDoubleTapOnHomeCommand()V
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendHomeDoubleClickBR()V

    iget v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->hasCustomDoubleTapHomeCommand()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchVoiceCommand()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "SamsungWindowManager"

    const-string v4, "launch double tap command"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v2

    .local v2, "isSecureLock":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v4, "isSecure"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_3
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add cleartask flag by policy: isShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isScreenOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const v4, 0x24001000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    goto/16 :goto_0

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "isSecureLock":Z
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .restart local v2    # "isSecureLock":Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "No activity to launch double tap command."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "isSecureLock":Z
    :cond_8
    const-string v3, "SamsungWindowManager"

    const-string v4, "Device is not available double tap command or setting"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHome()V

    goto/16 :goto_0

    :cond_9
    const-string v3, "SamsungWindowManager"

    const-string v4, "Device is not provisioned"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v2    # "isSecureLock":Z
    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public launchFingerPrint()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    const-string v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SamsungWindowManager"

    const-string v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v1, "SamsungWindowManager"

    const-string v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchFixedTask()V
    .locals 5

    .prologue
    const-string v1, "SamsungWindowManager"

    const-string v2, "launch Fixed Task for DualScreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getFixedTaskId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public launchHomeDuringVzwSetup()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.sys.enablehomekey"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "isHomeKeyEnabled":Z
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard Running, launch home key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "isHomeKeyEnabled":Z
    :cond_0
    return v0
.end method

.method public launchPremiumWatch(Z)V
    .locals 6
    .param p1, "resetLaunchingFlag"    # Z

    .prologue
    :try_start_0
    const-string v2, "SamsungWindowManager"

    const-string v3, "Premium watch on"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.START_WATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Fail to launch premium watch"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchSFinderIfPossible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z
    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$1200(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchSReminder()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string v3, "assist"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.app.sreminder"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v2, "FROM"

    const-string v3, "HOMEKEY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchSReminder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch SReminder."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public launchSamsungHome()V
    .locals 6

    .prologue
    const-string v3, "SamsungWindowManager"

    const-string v4, "launch Samsung Home for DualScreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.dualscreen.intent.category.SAMSUNG_HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "left_home"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "defaultValue":I
    if-gez v0, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.dailydigest"

    const-string v5, "com.sec.android.app.dailydigest.activities.DailyDigestActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    const-string v3, "com.samsung.android.app.headlines"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "No activity to launch Samsung Home."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public launchVoiceCommand()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SamsungWindowManager"

    const-string v4, "launch voicecommand"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    .local v1, "isSecureLock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "AUTO_LISTEN"

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "isSecureLock":Z
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    .restart local v1    # "isSecureLock":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "isSecureLock":Z
    :cond_2
    const-string v2, "SamsungWindowManager"

    const-string v3, "Device is not provisioned or not available voice command."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public launchingGamekey(Z)Z
    .locals 9
    .param p1, "keyguardOn"    # Z

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->endCallByGamekey()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-nez p1, :cond_0

    const-string v1, "com.sec.game.sga"

    .local v1, "gamePkg":Ljava/lang/String;
    const-string v4, "com.sec.android.app.samsungapps"

    .local v4, "samsungAppsPkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "samsungapps://ProductDetail/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "pkgUri":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->startSGA(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "SamsungWindowManager"

    const-string v7, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->downloadForSGA(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "SamsungWindowManager"

    const-string v7, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto/16 :goto_0
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.daynote"

    const-string v3, "com.sec.android.daynote.DayNoteActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch daynote activity."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyLidSwitchChangedForFolder(JZ)V
    .locals 4
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performCPUBoost()V

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->changeLidState(Z)V

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    const-string v2, "flipOpen"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flip Folder open = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , broadcasted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    .local v0, "soundPath":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder open/close soundPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V

    .end local v0    # "soundPath":Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 15
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    if-eqz p3, :cond_2

    const/4 v3, 0x1

    .local v3, "newPenState":I
    :goto_0
    const/4 v4, 0x1

    .local v4, "playSound":Z
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v5

    .local v5, "screenOn":Z
    sget-boolean v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newPenState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPenState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    if-ne v3, v8, :cond_3

    :cond_1
    :goto_1
    return-void

    .end local v3    # "newPenState":I
    .end local v4    # "playSound":Z
    .end local v5    # "screenOn":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "newPenState":I
    .restart local v4    # "playSound":Z
    .restart local v5    # "screenOn":Z
    :cond_3
    iget v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    const/4 v4, 0x0

    :cond_4
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "spen_feedback_sound"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_5

    const/4 v4, 0x0

    :cond_5
    sget-boolean v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playSound : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", screenOn : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_detachment_notification"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .local v6, "sound":Ljava/lang/String;
    if-eqz v6, :cond_a

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "soundPath":[Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "action_memo_on_off_screen"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_b

    const/4 v2, 0x1

    .local v2, "enableBlackMemo":Z
    :goto_3
    if-eqz p3, :cond_c

    if-eqz v4, :cond_7

    if-eqz v6, :cond_7

    :try_start_0
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_7

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-direct {p0, v8}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    :goto_4
    iget-boolean v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v9, 0xc36d

    const/4 v10, -0x1

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    :cond_8
    :goto_5
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "penInsert"

    move/from16 v0, p3

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isScreenOn"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isKeyguardLocked"

    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v10, "isBoot"

    const-wide/16 v12, 0x0

    cmp-long v8, p1, v12

    if-nez v8, :cond_11

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , broadcasted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eqz v2, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-eqz v8, :cond_1

    if-nez p3, :cond_1

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlackMemoIntent:Landroid/content/Intent;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .end local v2    # "enableBlackMemo":Z
    .end local v7    # "soundPath":[Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_2

    .restart local v7    # "soundPath":[Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    .restart local v2    # "enableBlackMemo":Z
    :cond_c
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v8

    if-eqz v8, :cond_f

    if-nez v2, :cond_d

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x4

    invoke-virtual {v8, v10, v11, v9}, Landroid/os/PowerManager;->wakeUp(JI)V

    :cond_d
    :goto_7
    if-eqz v4, :cond_e

    if-eqz v6, :cond_e

    :try_start_1
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_e

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-direct {p0, v8}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    :goto_8
    iget-boolean v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    goto/16 :goto_5

    :cond_f
    if-eqz v5, :cond_10

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v11, v9}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_7

    :cond_10
    if-nez v2, :cond_d

    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x4

    invoke-virtual {v8, v10, v11, v9}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto :goto_7

    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v8

    goto :goto_8

    :catch_1
    move-exception v8

    goto/16 :goto_4
.end method

.method public performCPUBoost()V
    .locals 9

    .prologue
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "Device_wakeup"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_CORE_BOOSTER"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_2

    array-length v0, v6

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->WAKEUP_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .end local v6    # "coreNumTable":[I
    :cond_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    :try_start_3
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 16
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    const/4 v5, 0x0

    .local v5, "hapticsDisabledByPowerSavingMode":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "haptic_feedback_enabled"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_6

    const/4 v4, 0x1

    .local v4, "hapticsDisabled":Z
    :goto_1
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isPowerSavingMode()Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "psm_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "powersaving_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    const/4 v9, 0x1

    .local v9, "powerSavingModeEnabled":Z
    :goto_2
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "psm_haptic_feedback"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    const/4 v10, 0x1

    .local v10, "turnOffHapticFeedbackEnabled":Z
    :goto_3
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "psm_auto_turn_on"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    const/4 v8, 0x1

    .local v8, "powerSavingAutoModeEnabled":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "isLowLevel"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v6, 0x1

    .local v6, "isLowLevelBattery":Z
    :goto_5
    sget-boolean v11, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Check haptic disabled policy : powerSavingAutoModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isLowLevelBattery = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v8, :cond_d

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    .end local v6    # "isLowLevelBattery":Z
    .end local v8    # "powerSavingAutoModeEnabled":Z
    .end local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_2
    :goto_6
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "emergency_mode"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    const/4 v3, 0x1

    .local v3, "emergencyModeEnabled":Z
    :goto_7
    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "f.b. a = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " psme = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hdpsm = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hd = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " lpm = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLowPowerMode:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " eme = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ksno = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ps = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSave:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_10

    if-eqz v9, :cond_4

    if-nez v5, :cond_5

    :cond_4
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLowPowerMode:Z

    if-nez v11, :cond_5

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerSave:Z

    if-eqz v11, :cond_10

    :cond_5
    const-string v11, "SamsungWindowManager"

    const-string v12, "haptic disabled by policy"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v3    # "emergencyModeEnabled":Z
    .end local v4    # "hapticsDisabled":Z
    .end local v9    # "powerSavingModeEnabled":Z
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .restart local v4    # "hapticsDisabled":Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "psm_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v9, 0x1

    .restart local v9    # "powerSavingModeEnabled":Z
    :goto_8
    goto/16 :goto_2

    .end local v9    # "powerSavingModeEnabled":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_8

    .restart local v9    # "powerSavingModeEnabled":Z
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .restart local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_4

    .restart local v8    # "powerSavingAutoModeEnabled":Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_5

    .restart local v6    # "isLowLevelBattery":Z
    :cond_d
    const/4 v5, 0x1

    goto/16 :goto_6

    .end local v6    # "isLowLevelBattery":Z
    .end local v8    # "powerSavingAutoModeEnabled":Z
    .end local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "emergencyModeEnabled":Z
    goto/16 :goto_7

    :cond_10
    sget-boolean v11, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v11, :cond_11

    if-eqz p1, :cond_11

    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "haptic feedback for : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v11

    if-eqz v11, :cond_13

    sparse-switch p2, :sswitch_data_0

    invoke-static/range {p2 .. p2}, Landroid/view/HapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v11

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v12, -0x1

    const/4 v13, 0x0

    sget-object v14, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    move/from16 v0, p2

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v12, 0xc369

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v12, 0xc36a

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v12, 0xc36b

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x0

    .local v2, "duration":I
    sparse-switch p2, :sswitch_data_1

    const/4 v11, 0x0

    goto/16 :goto_0

    :sswitch_3
    const/16 v2, 0x32

    :goto_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long v12, v2

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate(J)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_4
    const/16 v2, 0x32

    goto :goto_9

    :sswitch_5
    const/16 v2, 0x64

    goto :goto_9

    :sswitch_6
    const/16 v2, 0x1f4

    goto :goto_9

    :sswitch_7
    const/16 v2, 0x5dc

    goto :goto_9

    :sswitch_8
    const/16 v2, 0xfa

    goto :goto_9

    :sswitch_9
    const/4 v11, 0x4

    new-array v7, v11, [J

    fill-array-data v7, :array_0

    .local v7, "pattern":[J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v12, -0x1

    invoke-virtual {v11, v7, v12}, Landroid/os/Vibrator;->vibrate([JI)V

    const/4 v11, 0x1

    goto/16 :goto_0

    .end local v7    # "pattern":[J
    :sswitch_a
    const/16 v2, 0x32

    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0xc35a -> :sswitch_2
        0xc35e -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x3 -> :sswitch_3
        0xc359 -> :sswitch_4
        0xc35a -> :sswitch_5
        0xc35c -> :sswitch_6
        0xc35d -> :sswitch_7
        0xc35e -> :sswitch_a
        0xc360 -> :sswitch_8
        0xc361 -> :sswitch_9
        0xc362 -> :sswitch_7
    .end sparse-switch

    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const v3, 0xc35e

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_1
    const-string v0, "sec_touchkey"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x1b -> :sswitch_3
        0x52 -> :sswitch_1
        0x54 -> :sswitch_2
        0xbb -> :sswitch_1
        0xcf -> :sswitch_3
        0x3e9 -> :sswitch_1
        0x430 -> :sswitch_3
        0x431 -> :sswitch_3
    .end sparse-switch
.end method

.method public processTorchlight(IZZ)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "interactive"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public sendBroadcastForAccessibility()V
    .locals 4

    .prologue
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastForSafetyAssurance()V
    .locals 3

    .prologue
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForSafetyAssurance() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "safetyMessage":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "SamsungWindowManager"

    const-string v2, "Safety mesage broadcasted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "safetyMessage":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sidesync.source"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppLockedStatus()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearAppLockedUnLockedApp()V

    :cond_0
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    sput p1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    return-void
.end method

.method public setFingerPrintPending()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    return-void
.end method

.method public setMultiPhoneWindowManager(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    return-void
.end method

.method public setProKioskReEnableVolumeUpKey(Z)V
    .locals 0
    .param p1, "proKioskReEnableVolumeUpKey"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    return-void
.end method

.method public setRotationLw(I)V
    .locals 7
    .param p1, "rotation"    # I

    .prologue
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotationLw() : rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public showBottomKeyPanel(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    return-void
.end method

.method public showRecentApps(Z)Z
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAodService(I)Z
    .locals 4
    .param p1, "aodStartState"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_mode"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_night_mode"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAodStartState:I

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$24;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$24;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public stopEasyOneHandervice(I)V
    .locals 2
    .param p1, "stopReason"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$17;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$17;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public systemBooted()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    const-string v2, "SamsungWindowManager"

    const-string v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 2
    .param p1, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/CombinationKeyManager;->onSystemReady()V

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$9;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    return-void
.end method

.method public takeScreenshot(I)V
    .locals 18
    .param p1, "event"    # I

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v13

    if-nez v13, :cond_1

    sget-boolean v13, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "SamsungWindowManager"

    const-string v14, "can not takescreenshot"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    sget-boolean v13, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v13, :cond_2

    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "takeScreenshot : event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mPerformEditAfterScreenCapture = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mServiceConnectionMap.size() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .local v4, "curr":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v12

    .local v12, "versionInfo":Landroid/os/Bundle;
    const-string v13, "2.0"

    const-string v15, "version"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v15, "persona"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .local v9, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v9}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v6

    .local v6, "currUser":I
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "screenshot: current active user is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v15, "user"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .local v5, "currInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v4, Landroid/os/UserHandle;

    .end local v4    # "curr":Landroid/os/UserHandle;
    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v4    # "curr":Landroid/os/UserHandle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    .local v8, "isKioskContainer":Z
    if-eqz v8, :cond_4

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v16, 0x1040b6a

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    monitor-exit v14

    goto/16 :goto_0

    .end local v4    # "curr":Landroid/os/UserHandle;
    .end local v5    # "currInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "currUser":I
    .end local v8    # "isKioskContainer":Z
    .end local v9    # "pm":Landroid/os/PersonaManager;
    .end local v11    # "um":Landroid/os/UserManager;
    .end local v12    # "versionInfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .restart local v4    # "curr":Landroid/os/UserHandle;
    .restart local v12    # "versionInfo":Landroid/os/Bundle;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    if-eqz v13, :cond_6

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .local v7, "intent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v7, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_5
    :goto_1
    monitor-exit v14

    goto/16 :goto_0

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    const/4 v15, 0x3

    if-lt v13, v15, :cond_7

    monitor-exit v14

    goto/16 :goto_0

    :cond_7
    new-instance v2, Landroid/content/ComponentName;

    const-string v13, "com.android.systemui"

    const-string v15, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v2, v13, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "cn":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    .local v3, "conn":Landroid/content/ServiceConnection;
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " screenshot is taken for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v3, v15, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v10, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    .local v10, "runnable":Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v13, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateBottomKeyPanelState(ZZ)V
    .locals 0
    .param p1, "init"    # Z
    .param p2, "maximize"    # Z

    .prologue
    return-void
.end method

.method public updateEasyOneHandState(ZZZ)V
    .locals 0
    .param p1, "isLeftHand"    # Z
    .param p2, "isShow"    # Z
    .param p3, "isHomeKey"    # Z

    .prologue
    return-void
.end method

.method public updateSettings()V
    .locals 29

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .local v21, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    :try_start_0
    const-string v24, "double_tab_launch_component"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "componentNameOfDoubleTapOnHomeCommandIntent":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v24, "/"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .local v22, "titles":[Ljava/lang/String;
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    const/16 v26, 0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    new-instance v19, Landroid/content/ComponentName;

    const/16 v24, 0x0

    aget-object v24, v22, v24

    const/16 v26, 0x1

    aget-object v26, v22, v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v19, "newComponentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    .end local v19    # "newComponentName":Landroid/content/ComponentName;
    .end local v22    # "titles":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    const-string v24, "double_tab_launch"

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .local v6, "doubleTapOnHomeBehavior":I
    const-string v24, "SamsungWindowManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "updateSettings(). settings changed. doubleTapOnHomeBehavior : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ". mDoubleTapOnHomeBehavior : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ". mDoubleTapHomeUser "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v6, :cond_1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v26, "direct_access"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v23

    .local v23, "tripleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    :cond_2
    const-string v24, "lcd_curtain"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    const-string v24, "accessibility_enabled"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    const/16 v24, 0x1

    :goto_0
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    const-string v24, "edit_after_screen_capture"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_13

    const/16 v20, 0x1

    .local v20, "performEditAfterScreenCapture":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    :cond_3
    const-string v24, "send_emergency_message"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_14

    const/4 v14, 0x1

    .local v14, "isSafetyAssuranceEnabled":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v14, :cond_4

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    :cond_4
    const-string v24, "access_control_use"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_15

    const/16 v17, 0x1

    .local v17, "isUseAccessControl":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    :cond_5
    const-string v24, "access_control_enabled"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_16

    const/4 v11, 0x1

    .local v11, "isEnabledAccessControl":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v11, :cond_6

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    :cond_6
    const-string v24, "kids_home_mode"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_17

    const/4 v12, 0x1

    .local v12, "isKidsMode":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v12, :cond_7

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    :cond_7
    const-string v24, "easy_mode_switch"

    const/16 v26, 0x1

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-nez v24, :cond_18

    const/4 v10, 0x1

    .local v10, "isEasyMode":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v10, :cond_8

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    :cond_8
    const-string v24, "desk_home_screen_display"

    const/16 v26, 0x1

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_19

    const/4 v9, 0x1

    .local v9, "isDockHomeEnabled":Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v9, :cond_9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    :cond_9
    const-string v24, "torchlight_enable"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_1a

    const/16 v16, 0x1

    .local v16, "isTorchlightEnabled":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v16

    if-eq v0, v1, :cond_a

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    :cond_a
    const-string v24, "car_mode_on"

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_1b

    const/4 v7, 0x1

    .local v7, "isCheckDrivingMode":Z
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v7, :cond_b

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    :cond_b
    const-string v24, "car_mode_blocking_system_key"

    const/16 v26, 0x0

    const/16 v27, -0x3

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_1c

    const/4 v4, 0x1

    .local v4, "blockKeyForDrivingMode":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v4, :cond_c

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    :cond_c
    const-string v24, "sidesync_source_presentation"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_1d

    const/4 v15, 0x1

    .local v15, "isSideSyncSourcePresentationActived":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v15, :cond_d

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    :cond_d
    const-string v24, "pen_attach_detach_vibration"

    const/16 v26, 0x1

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_1e

    const/4 v13, 0x1

    .local v13, "isPenNotifyVibrationChecked":Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v13, :cond_e

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    const-string v24, "cover_note"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_1f

    const/4 v8, 0x1

    .local v8, "isCoverNote":Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v8, :cond_f

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    .end local v8    # "isCoverNote":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_11

    const-string v24, "folder_sounds_enabled"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    if-eqz v24, :cond_20

    const/16 v18, 0x1

    .local v18, "mFolderSound":Z
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    :cond_10
    const-string v24, "folder_open_sound"

    const/16 v26, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    const-string v24, "folder_close_sound"

    const/16 v26, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    .end local v18    # "mFolderSound":Z
    :cond_11
    monitor-exit v25

    return-void

    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v7    # "isCheckDrivingMode":Z
    .end local v9    # "isDockHomeEnabled":Z
    .end local v10    # "isEasyMode":Z
    .end local v11    # "isEnabledAccessControl":Z
    .end local v12    # "isKidsMode":Z
    .end local v13    # "isPenNotifyVibrationChecked":Z
    .end local v14    # "isSafetyAssuranceEnabled":Z
    .end local v15    # "isSideSyncSourcePresentationActived":Z
    .end local v16    # "isTorchlightEnabled":Z
    .end local v17    # "isUseAccessControl":Z
    .end local v20    # "performEditAfterScreenCapture":Z
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_1

    .restart local v20    # "performEditAfterScreenCapture":Z
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_2

    .restart local v14    # "isSafetyAssuranceEnabled":Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_3

    .restart local v17    # "isUseAccessControl":Z
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_4

    .restart local v11    # "isEnabledAccessControl":Z
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_5

    .restart local v12    # "isKidsMode":Z
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_6

    .restart local v10    # "isEasyMode":Z
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_7

    .restart local v9    # "isDockHomeEnabled":Z
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_8

    .restart local v16    # "isTorchlightEnabled":Z
    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_9

    .restart local v7    # "isCheckDrivingMode":Z
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_a

    .restart local v4    # "blockKeyForDrivingMode":Z
    :cond_1d
    const/4 v15, 0x0

    goto/16 :goto_b

    .restart local v15    # "isSideSyncSourcePresentationActived":Z
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_c

    .restart local v13    # "isPenNotifyVibrationChecked":Z
    :cond_1f
    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_20
    const/16 v18, 0x0

    goto :goto_e

    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v5    # "componentNameOfDoubleTapOnHomeCommandIntent":Ljava/lang/String;
    .end local v6    # "doubleTapOnHomeBehavior":I
    .end local v7    # "isCheckDrivingMode":Z
    .end local v9    # "isDockHomeEnabled":Z
    .end local v10    # "isEasyMode":Z
    .end local v11    # "isEnabledAccessControl":Z
    .end local v12    # "isKidsMode":Z
    .end local v13    # "isPenNotifyVibrationChecked":Z
    .end local v14    # "isSafetyAssuranceEnabled":Z
    .end local v15    # "isSideSyncSourcePresentationActived":Z
    .end local v16    # "isTorchlightEnabled":Z
    .end local v17    # "isUseAccessControl":Z
    .end local v20    # "performEditAfterScreenCapture":Z
    .end local v23    # "tripleTapOnHomeBehavior":I
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24
.end method

.method public updateSideKeyPanelState(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    return-void
.end method

.method public updateWakeupPrevention()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v3, "wakeup_prevention"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v1, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .local v0, "isWakeupPrevention":Z
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    if-eq v3, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    const-string v3, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWakeupPrevention = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "wakeup_prevention_packages"

    const/4 v5, -0x2

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "wakeupPreventionPackages":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWakeupPreventionPackages(Ljava/lang/String;)V

    monitor-exit v4

    return-void

    .end local v0    # "isWakeupPrevention":Z
    .end local v2    # "wakeupPreventionPackages":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
