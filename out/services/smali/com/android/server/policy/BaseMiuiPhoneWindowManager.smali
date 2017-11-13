.class public abstract Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;
    }
.end annotation


# static fields
.field private static final BTN_MOUSE:I = 0x110

.field private static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field private static final DOUBLE_TAP_HOME_RECENT_PANEL:I = 0x1

.field private static final ENABLE_HOME_KEY_DOUBLE_TAP_INTERVAL:I = 0x12c

.field private static final ENABLE_HOME_KEY_PRESS_INTERVAL:I = 0x12c

.field private static final ENABLE_VOLUME_KEY_PRESS_COUNTS:I = 0x2

.field private static final ENABLE_VOLUME_KEY_PRESS_INTERVAL:I = 0x12c

.field static final HIDDEN_NAV_CONSUMER_LAYER:I = 0x1a

.field protected static final INTERCEPT_EXPECTED_RESULT_GO_TO_SLEEP:I = -0x1

.field protected static final INTERCEPT_EXPECTED_RESULT_NONE:I = 0x0

.field protected static final INTERCEPT_EXPECTED_RESULT_WAKE_UP:I = 0x1

.field private static LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I = 0x0

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_NONE:I = 0x0

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_PAY:I = 0x2

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_STREET_SNAP:I = 0x1

.field private static final LONG_PRESS_VOLUME_TIME:I = 0x3e8

.field private static final PERMISSION_INTERNAL_GENERAL_API:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final SCREEN_KEY_LONG_PRESS_VOLUME_DOWN:Ljava/lang/String; = "screen_key_long_press_volume_down"

.field private static final SHORTCUT_ENABLE_SCREEN_BUTTONS:I

.field private static final SHORTCUT_MAX_BRIGHTNESS:I

.field private static final SHORTCUT_SCREENSHOT_ANDROID:I

.field private static final SHORTCUT_SCREENSHOT_MIUI:I

.field private static final SHORTCUT_SCREENSHOT_SINGLE_KEY:I

.field private static final SHORTCUT_UNLOCK:I

.field private static final SYSTEM_SETTINGS_VR_MODE:Ljava/lang/String; = "vr_mode"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

.field private mBinder:Landroid/os/Binder;

.field private mBootProgress:Landroid/widget/ProgressBar;

.field private mBootText:[Ljava/lang/String;

.field private mBootTextView:Landroid/widget/TextView;

.field private mCameraIntent:Landroid/content/Intent;

.field mCameraKeyWakeScreen:Z

.field private mCurrentUserId:I

.field private mDoubleTapOnHomeBehavior:I

.field mDpadCenterDown:Z

.field protected mFpNavEventNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFrontFingerprintSensor:Z

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHasCameraFlash:Z

.field mHaveBankCard:Z

.field mHaveTranksCard:Z

.field mHideNavBar:Z

.field mHomeConsumed:Z

.field mHomeDoubleClickPending:Z

.field private final mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeDownAfterDpCenter:Z

.field private mIgnoreAppSwitch:Z

.field private mInputMethodWindowVisibleHeight:I

.field protected mIsStatusBarVisibleInFullscreen:Z

.field private mIsVRMode:Z

.field private mKeyPressed:I

.field private mKeyPressing:I

.field mKeyguardOnWhenHomeDown:Z

.field private mLongPressVolumeDownBehavior:I

.field private mMiuiBootMsgDialog:Landroid/app/Dialog;

.field protected mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

.field mNavBarHeight:I

.field mNavBarHeightLand:I

.field mNavBarWidth:I

.field private mNeedResetTimeout:Z

.field private mNfcIntent:Landroid/content/Intent;

.field mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

.field mPowerLongPressOriginal:Ljava/lang/Runnable;

.field private mPressToAppSwitch:Z

.field private mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

.field private final mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private mRequestShowMenu:Z

.field private mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

.field protected mScreenOffReason:I

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

.field private mShortcutPressing:I

.field private mShortcutTriggered:Z

.field protected mShowNavBarGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

.field mSingleKeyUse:Z

.field private mSmartCoverLidOpen:Z

.field private mSoftKeyboardWinToken:Landroid/os/IBinder;

.field private mStatusBarDisableToken:Landroid/os/Binder;

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarVisible:Z

.field private mSuperWaitingKey:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTestModeEnabled:Z

.field private mTorchEnabled:Z

.field private mTorchIsJustTurnedOn:Z

.field mTrackballWakeScreen:Z

.field private final mTurnOffTorch:Ljava/lang/Runnable;

.field private mVolumeButtonPrePressedTime:J

.field private mVolumeButtonPressedCount:J

.field mVolumeKeyLaunchCamera:Z

.field private mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mVolumeKeyWakeScreen:Z

.field private mWifiOnly:Z

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWindowFlagBinder:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x52

    const/16 v5, 0x1a

    const/16 v4, 0x18

    const/4 v3, 0x3

    const/16 v2, 0x19

    .line 135
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    .line 137
    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    .line 139
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    .line 141
    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    .line 143
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    .line 145
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_SINGLE_KEY:I

    .line 205
    const/16 v0, 0x3a98

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I

    .line 504
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 175
    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 179
    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    .line 194
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getPowerLongPress()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    .line 448
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 741
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    .line 750
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    .line 767
    iput-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    .line 768
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 786
    iput-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    .line 787
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    .line 1143
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    .line 1181
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    .line 1182
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    .line 1229
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    .line 1231
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1301
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 1310
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1330
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .line 2096
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2106
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isNfcEnable(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/util/ProximitySensorWrapper;)Lmiui/util/ProximitySensorWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Lmiui/util/ProximitySensorWrapper;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    return-object v0
.end method

.method private canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 331
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_0

    move v1, v3

    .line 333
    .local v1, "notFocusable":Z
    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v0, v3

    .line 335
    .local v0, "altFocusableIm":Z
    :goto_1
    xor-int v2, v1, v0

    .line 336
    .local v2, "notFocusableForIm":Z
    if-nez v2, :cond_2

    :goto_2
    return v3

    .end local v0    # "altFocusableIm":Z
    .end local v1    # "notFocusable":Z
    .end local v2    # "notFocusableForIm":Z
    :cond_0
    move v1, v4

    .line 331
    goto :goto_0

    .restart local v1    # "notFocusable":Z
    :cond_1
    move v0, v4

    .line 333
    goto :goto_1

    .restart local v0    # "altFocusableIm":Z
    .restart local v2    # "notFocusableForIm":Z
    :cond_2
    move v3, v4

    .line 336
    goto :goto_2
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2219
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 2220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    .line 2221
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2222
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "ShowCameraWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2223
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2224
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2225
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2227
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private static getKeyBitmask(I)I
    .locals 1
    .param p0, "keycode"    # I

    .prologue
    .line 116
    sparse-switch p0, :sswitch_data_0

    .line 131
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 119
    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 121
    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 123
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 125
    :sswitch_3
    const/16 v0, 0x10

    goto :goto_0

    .line 127
    :sswitch_4
    const/16 v0, 0x20

    goto :goto_0

    .line 129
    :sswitch_5
    const/16 v0, 0x40

    goto :goto_0

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method private getNfcIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 2210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    .line 2211
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2212
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2213
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const-string v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2215
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static getWindownManagerService()Landroid/view/IWindowManager;
    .locals 3

    .prologue
    .line 1935
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1937
    .local v0, "service":Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    .line 1938
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IWindowManager interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_0
    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2116
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v0, v1, :cond_0

    .line 2117
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    .line 2118
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z

    .line 2120
    :cond_0
    return-void
.end method

.method private handleKeyCombination()Z
    .locals 4

    .prologue
    .line 655
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 696
    :cond_1
    :goto_0
    return v0

    .line 657
    :cond_2
    const/4 v0, 0x0

    .line 658
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 659
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 661
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_4

    .line 662
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    .line 663
    const/4 v0, 0x1

    .line 693
    :cond_4
    :goto_1
    if-eqz v0, :cond_1

    .line 694
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    goto :goto_0

    .line 667
    :cond_5
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    if-ne v1, v2, :cond_6

    .line 668
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->stopLockTaskMode()Z

    move-result v0

    .line 669
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-virtual {v1}, Lmiui/util/AutoDisableScreenButtonsManager;->isScreenButtonsDisabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 670
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 671
    const/4 v0, 0x1

    goto :goto_1

    .line 674
    :cond_6
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    if-ne v1, v2, :cond_7

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_7

    .line 675
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setMaxTemporaryScreenBrightness()V

    .line 676
    const/4 v0, 0x1

    goto :goto_1

    .line 678
    :cond_7
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    if-ne v1, v2, :cond_8

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_8

    .line 682
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 683
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "screenshot"

    const-string v3, "menu_power"

    invoke-static {v1, v2, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/4 v0, 0x1

    goto :goto_1

    .line 687
    :cond_8
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_SINGLE_KEY:I

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v1, :cond_4

    .line 688
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 689
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private inFingerprintEnrolling()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1131
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1133
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, "topClassName":Ljava/lang/String;
    const-string v3, "com.android.settings.NewFingerprintInternalActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 1140
    .end local v2    # "topClassName":Ljava/lang/String;
    :goto_0
    return v3

    .line 1137
    :catch_0
    move-exception v1

    .line 1138
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "WindowManager"

    const-string v4, "Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v5

    .line 1140
    goto :goto_0
.end method

.method private isAudioActive()Z
    .locals 6

    .prologue
    .line 2231
    const/4 v0, 0x0

    .line 2232
    .local v0, "active":Z
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 2233
    .local v3, "mode":I
    if-lez v3, :cond_0

    const/4 v5, 0x4

    if-ge v3, v5, :cond_0

    .line 2234
    const/4 v0, 0x1

    move v1, v0

    .line 2248
    .end local v0    # "active":Z
    .local v1, "active":I
    :goto_0
    return v1

    .line 2237
    .end local v1    # "active":I
    .restart local v0    # "active":Z
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    .line 2238
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 2239
    const/4 v5, 0x1

    if-ne v5, v2, :cond_2

    .line 2238
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2243
    :cond_2
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 2244
    if-eqz v0, :cond_1

    :cond_3
    move v1, v0

    .line 2248
    .restart local v1    # "active":I
    goto :goto_0
.end method

.method private isInCallScreenShowing()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 633
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 635
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "runningActivity":Ljava/lang/String;
    const-string v2, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private isNfcEnable(Z)Z
    .locals 4
    .param p1, "ishomeclick"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2123
    if-eqz p1, :cond_2

    .line 2124
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2126
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 717
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 719
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 720
    return-object v0
.end method

.method private markShortcutTriggered()V
    .locals 2

    .prologue
    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 649
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 650
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callInterceptPowerKeyUp(Z)V

    .line 652
    return-void
.end method

.method private originalCanHideNavigationBar()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playSoundEffect()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1666
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1667
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 1671
    :goto_0
    return v1

    .line 1670
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1671
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private releaseScreenOnProximitySensor()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->release()Z

    .line 502
    :cond_0
    return-void
.end method

.method private resetKeyStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 732
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 733
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 734
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 735
    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    .line 736
    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    .line 737
    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 738
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 739
    return-void
.end method

.method private saveWindowTypeLayer(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 341
    .local v3, "typeLayers":Lorg/json/JSONObject;
    const/16 v2, 0x7d0

    .local v2, "type":I
    :goto_0
    const/16 v4, 0xbb7

    if-gt v2, v4, :cond_1

    .line 342
    invoke-virtual {p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    .line 343
    .local v1, "layer":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 345
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "ex":Lorg/json/JSONException;
    const-string v4, "WindowManager"

    const-string v5, "JSONException"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 351
    .end local v0    # "ex":Lorg/json/JSONException;
    .end local v1    # "layer":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_type_layer"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 352
    return-void
.end method

.method public static sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 700
    const-string v5, "count_event"

    .line 701
    .local v5, "STAT_TYPE_COUNT_EVENT":Ljava/lang/String;
    const-string v4, "com.miui.gallery"

    .line 702
    .local v4, "GALLERY_PKG_NAME":Ljava/lang/String;
    const-string v0, "com.miui.gallery.intent.action.SEND_STAT"

    .line 703
    .local v0, "ACTION_SEND_STAT":Ljava/lang/String;
    const-string v3, "stat_type"

    .line 704
    .local v3, "EXTRA_STAT_TYPE":Ljava/lang/String;
    const-string v1, "category"

    .line 705
    .local v1, "EXTRA_CATEGORY":Ljava/lang/String;
    const-string v2, "event"

    .line 707
    .local v2, "EXTRA_EVENT":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.gallery.intent.action.SEND_STAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.miui.gallery"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v7, "stat_type"

    const-string v8, "count_event"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v7, "category"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v7, "event"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 713
    return-void
.end method

.method private setStatusBarInFullscreen(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1238
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    .line 1240
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1241
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    .line 1242
    if-eqz p1, :cond_0

    const/high16 v2, -0x80000000

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string v4, "android"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1259
    :goto_1
    return-void

    .line 1247
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1250
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .line 1256
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1257
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setTorch(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1320
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1327
    :goto_0
    return v1

    .line 1322
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 1323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1325
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1327
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startCameraProcess()V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.action.CAMERA_EMPTY_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "cameraIntent":Landroid/content/Intent;
    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 440
    return-void
.end method


# virtual methods
.method protected abstract callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1967
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1968
    const/4 v0, 0x0

    .line 1970
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method protected canHideNavigationBar()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkProcessRunning(Ljava/lang/String;)Z
    .locals 7
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1944
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1945
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 1961
    :cond_0
    :goto_0
    return v4

    .line 1949
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1951
    .local v3, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_0

    .line 1955
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1956
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1957
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2258
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2259
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "BaseMiuiPhoneWindowManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2261
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInputMethodWindowVisibleHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrontFingerprintSensor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2263
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSmartCoverLidOpen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2264
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOffReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2265
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsStatusBarVisibleInFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2267
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasCameraFlash="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2268
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTorchEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2269
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTorchIsJustTurnedOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2270
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWifiOnly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2271
    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyPress"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2272
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2273
    const-string v0, " mKeyPressing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2274
    const-string v0, " mShortcutPressing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_MENU KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x52

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_APP_SWITCH KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xbb

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_HOME KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_BACK KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2279
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_POWER KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_VOLUME_DOWN KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_VOLUME_UP KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2282
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ElSE KEYCODE KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_ENABLE_SCREEN_BUTTONS="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_MAX_BRIGHTNESS="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_SCREENSHOT_ANDROID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_SCREENSHOT_MIUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_UNLOCK="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShortcutTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2289
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDpadCenterDown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDpadCenterDown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2290
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHomeDownAfterDpCenter="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2291
    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyResponseSetting"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2292
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentUserId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2293
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPressToAppSwitch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2294
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCameraKeyWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2295
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTrackballWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2296
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeKeyWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2297
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeKeyLaunchCamera="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenButtonsDisabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-virtual {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->isScreenButtonsDisabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2299
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeButtonPrePressedTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2300
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeButtonPressedCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2301
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveBankCard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2302
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveTranksCard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2303
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressVolumeDownBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2304
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRequestShowMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2305
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIgnoreAppSwitch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2306
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsVRMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2307
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2050
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreenAfterBoot()V

    .line 2051
    const-string v4, "ro.radio.noril"

    invoke-static {v4, v6}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    .line 2054
    const-string v1, "persist.sys.smartcover_enabled"

    .line 2055
    .local v1, "legacySmartcoverModeKey":Ljava/lang/String;
    const-string v4, "persist.sys.smartcover_enabled"

    invoke-static {v4, v6}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2056
    const-string v4, "persist.sys.smartcover_enabled"

    invoke-static {v4, v6}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Z)V

    .line 2057
    const-string v4, "persist.sys.smartcover_mode"

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    .line 2060
    :cond_0
    const-string v4, "persist.sys.smartcover_mode"

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2062
    .local v3, "smartcoverMode":I
    if-ne v5, v3, :cond_1

    .line 2063
    const-string v4, "support_multiple_small_win_cover"

    invoke-static {v4, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2064
    .local v2, "multi":Z
    if-nez v2, :cond_3

    move v4, v5

    :goto_0
    invoke-static {v4}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    .line 2067
    .end local v2    # "multi":Z
    :cond_1
    const/4 v0, 0x0

    .line 2068
    .local v0, "inSmallWindowMode":Z
    const-string v4, "persist.sys.smartcover_mode"

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2070
    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 2071
    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    .line 2072
    iget v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    if-nez v4, :cond_4

    move v0, v5

    .line 2074
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "is_small_window"

    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v4, v5, v0, v6}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 2076
    return-void

    .end local v0    # "inSmallWindowMode":Z
    .restart local v2    # "multi":Z
    :cond_3
    move v4, v6

    .line 2064
    goto :goto_0

    .end local v2    # "multi":Z
    .restart local v0    # "inSmallWindowMode":Z
    :cond_4
    move v0, v6

    .line 2072
    goto :goto_1
.end method

.method protected abstract finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public finishLayoutLw()V
    .locals 5

    .prologue
    .line 2080
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishLayoutLw()V

    .line 2081
    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockBottom:I

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurBottom:I

    sub-int v0, v2, v3

    .line 2082
    .local v0, "inputMethodHeight":I
    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    if-eq v2, v0, :cond_0

    .line 2083
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    .line 2084
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input method visible height changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2086
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "miui.intent.extra.input_method_visible_height"

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2088
    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2090
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 6

    .prologue
    .line 1184
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v0

    .line 1185
    .local v0, "changes":I
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1186
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    .line 1187
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    iget-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    invoke-virtual {v3, v4}, Lmiui/util/AutoDisableScreenButtonsManager;->onStatusBarVisibilityChange(Z)V

    .line 1189
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 1190
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 1191
    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    const-string v5, "system"

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_1
    return v0

    .line 1191
    .restart local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    const/16 v3, 0x100

    goto :goto_0

    .line 1197
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v1

    .line 1198
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException when disable status bar visible"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1200
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method protected finishPostLayoutPolicyLwInternalAfter()V
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-nez v0, :cond_0

    .line 1219
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->registerStatusBarInputEventReceiver()V

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->unregisterStatusBarInputEventReceiver()V

    goto :goto_0
.end method

.method protected finishPostLayoutPolicyLwInternalBefore()V
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1208
    .local v0, "statusBar":Landroid/view/WindowManagerPolicy$WindowState;
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v1, :cond_0

    .line 1209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1210
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1211
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 1214
    :cond_0
    return-void
.end method

.method protected forceShowNavigationBar()Z
    .locals 1

    .prologue
    .line 2093
    invoke-static {}, Lmiui/util/CustomizeUtil;->needChangeSize()Z

    move-result v0

    return v0
.end method

.method protected abstract forceStopPackage(Ljava/lang/String;I)V
.end method

.method getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    .line 1151
    .local v2, "keyguard":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHideLockScreen:Z

    if-nez v4, :cond_1

    move-object v3, v2

    .line 1153
    .local v3, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    const/4 v1, 0x0

    .line 1154
    .local v1, "flags":I
    if-eqz v3, :cond_0

    .line 1155
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/2addr v1, v4

    .line 1156
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1157
    or-int/lit8 v1, v1, 0x1

    .line 1161
    :cond_0
    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->getDisabledFlags(I)I

    move-result v0

    .line 1162
    .local v0, "disabledFlag":I
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;

    invoke-direct {v5, p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1178
    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->getSystemUIVisibilityFlags(I)I

    move-result v4

    return v4

    .line 1151
    .end local v0    # "disabledFlag":I
    .end local v1    # "flags":I
    .end local v3    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method protected abstract getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public getSoftKeyboardToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSoftKeyboardWinToken:Landroid/os/IBinder;

    return-object v0
.end method

.method protected abstract getWakePolicyFlag()I
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1932
    return-void
.end method

.method protected initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 215
    .local v6, "res":Landroid/content/res/Resources;
    const v0, 0x105001a

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarWidth:I

    .line 216
    const v0, 0x1050018

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarHeight:I

    .line 217
    const v0, 0x1050019

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarHeightLand:I

    .line 218
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    .line 219
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    .line 221
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setPowerLongPress(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mVolumeKeyWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 230
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 234
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v0, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 246
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, v7}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 247
    new-instance v0, Lmiui/util/AutoDisableScreenButtonsManager;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lmiui/util/AutoDisableScreenButtonsManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "persist.camera.snap.enable"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "persist.camera.snap.enable"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    if-nez v0, :cond_1

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_long_press_volume_down"

    const-string v2, "Street-snap"

    iget v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 260
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->saveWindowTypeLayer(Landroid/content/Context;)V

    .line 263
    new-instance v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    new-instance v1, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;

    invoke-direct {v1, p1, p0}, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;-><init>(Landroid/content/Context;Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShowNavBarGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 265
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShowNavBarGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    const-string v2, "immersive.preconfirms=*"

    const/4 v4, -0x2

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 270
    return-void

    .line 255
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_long_press_volume_down"

    const-string v2, "none"

    iget v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "expectedResult"    # I

    .prologue
    .line 756
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 757
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 760
    .local v0, "down":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 762
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    .line 764
    :cond_0
    return p4

    .line 757
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected interceptHomeKeyStartNfc(Landroid/view/KeyEvent;IZ)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2134
    const/4 v2, 0x0

    .line 2135
    .local v2, "intercept":Z
    invoke-direct {p0, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isNfcEnable(Z)Z

    move-result v8

    if-nez v8, :cond_0

    move v3, v2

    .line 2165
    .end local v2    # "intercept":Z
    .local v3, "intercept":I
    :goto_0
    return v3

    .line 2138
    .end local v3    # "intercept":I
    .restart local v2    # "intercept":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_2

    move v0, v6

    .line 2139
    .local v0, "down":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 2142
    .local v5, "keyCode":I
    const/high16 v8, 0x1000000

    and-int/2addr v8, p2

    if-eqz v8, :cond_3

    move v4, v6

    .line 2143
    .local v4, "isInjected":Z
    :goto_2
    if-eqz p3, :cond_4

    if-nez v4, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_1
    move v3, v2

    .line 2144
    .restart local v3    # "intercept":I
    goto :goto_0

    .end local v0    # "down":Z
    .end local v3    # "intercept":I
    .end local v4    # "isInjected":Z
    .end local v5    # "keyCode":I
    :cond_2
    move v0, v7

    .line 2138
    goto :goto_1

    .restart local v0    # "down":Z
    .restart local v5    # "keyCode":I
    :cond_3
    move v4, v7

    .line 2142
    goto :goto_2

    .line 2147
    .restart local v4    # "isInjected":Z
    :cond_4
    const/4 v7, 0x3

    if-ne v5, v7, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_5

    .line 2148
    iget-boolean v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    if-eqz v7, :cond_6

    .line 2149
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getNfcIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    .line 2151
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2152
    const/4 v2, 0x1

    .line 2153
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    .line 2154
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    .line 2155
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->OnDoubleClickHome()V

    .line 2156
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    move v3, v2

    .line 2165
    .restart local v3    # "intercept":I
    goto :goto_0

    .line 2157
    .end local v3    # "intercept":I
    :catch_0
    move-exception v1

    .line 2158
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "WindowManager"

    const-string v7, "mNfcIntent problem"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2161
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    .line 2162
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 18
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    .line 517
    .local v8, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_2

    const/4 v4, 0x1

    .line 518
    .local v4, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    .line 519
    .local v3, "canceled":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v13}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v7, 0x1

    .line 521
    .local v7, "keyguardActive":Z
    :goto_1
    if-eqz v4, :cond_0

    if-nez v8, :cond_0

    .line 522
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 525
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 526
    .local v6, "keyCode":I
    const/16 v13, 0x52

    if-ne v6, v13, :cond_1

    const/16 v6, 0xbb

    .line 528
    :cond_1
    const/16 v13, 0xbb

    if-ne v6, v13, :cond_a

    .line 529
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v13, :cond_4

    .line 530
    const-string v13, "BaseMiuiPhoneWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring MENU because mTestModeEnabled = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-wide/16 v14, 0x0

    .line 629
    :goto_2
    return-wide v14

    .line 517
    .end local v3    # "canceled":Z
    .end local v4    # "down":Z
    .end local v6    # "keyCode":I
    .end local v7    # "keyguardActive":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 519
    .restart local v3    # "canceled":Z
    .restart local v4    # "down":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 534
    .restart local v6    # "keyCode":I
    .restart local v7    # "keyguardActive":Z
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    if-eqz v13, :cond_8

    .line 535
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    if-nez v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->keyguardOn()Z

    move-result v13

    if-nez v13, :cond_5

    .line 536
    if-eqz v4, :cond_6

    .line 537
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->preloadRecentApps()V
    invoke-static {v13}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)V

    .line 542
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    if-eqz v13, :cond_7

    .line 543
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    .line 545
    const-wide/16 v14, 0x0

    goto :goto_2

    .line 539
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z
    invoke-static {v13}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z

    goto :goto_3

    .line 547
    :cond_7
    const-wide/16 v14, -0x1

    goto :goto_2

    .line 549
    :cond_8
    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->showMenu()Z
    invoke-static {v13}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 550
    const-wide/16 v14, -0x1

    goto :goto_2

    .line 552
    :cond_9
    const-wide/16 v14, 0x0

    goto :goto_2

    .line 556
    :cond_a
    const/4 v13, 0x3

    if-ne v6, v13, :cond_1a

    .line 557
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v13, :cond_b

    .line 558
    const-string v13, "BaseMiuiPhoneWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring HOME because mTestModeEnabled = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-wide/16 v14, 0x0

    goto :goto_2

    .line 562
    :cond_b
    if-nez v4, :cond_14

    .line 563
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    if-eqz v13, :cond_c

    .line 564
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    .line 565
    const-wide/16 v14, -0x1

    goto/16 :goto_2

    .line 567
    :cond_c
    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v13, :cond_13

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v10

    .line 569
    .local v10, "telecomManager":Landroid/telecom/TelecomManager;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    if-nez v13, :cond_f

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 572
    const-string v13, "WindowManager"

    const-string v14, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v10    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_d
    :goto_4
    if-nez v8, :cond_e

    .line 618
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v13, :cond_19

    .line 619
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 620
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleDoubleTapOnHome()V

    .line 626
    :cond_e
    :goto_5
    const-wide/16 v14, -0x1

    goto/16 :goto_2

    .line 575
    .restart local v10    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v13}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v14, "statusbar"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    .line 578
    .local v9, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v9}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 580
    .end local v9    # "sbm":Landroid/app/StatusBarManager;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    if-nez v13, :cond_12

    .line 581
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v13, :cond_11

    if-nez v7, :cond_11

    .line 582
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 583
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 584
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    const-wide/16 v14, -0x1

    goto/16 :goto_2

    .line 587
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_4

    .line 589
    :cond_12
    const-string v13, "WindowManager"

    const-string v14, "Ignoring HOME; keyguard is on when first Home down"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 593
    .end local v10    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_13
    const-string v13, "WindowManager"

    const-string v14, "Ignoring HOME; event canceled."

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 599
    :cond_14
    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 600
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_6
    if-eqz v2, :cond_d

    .line 601
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 602
    .local v11, "type":I
    const/16 v13, 0x7d4

    if-eq v11, v13, :cond_15

    const/16 v13, 0x7d9

    if-ne v11, v13, :cond_17

    .line 605
    :cond_15
    const-wide/16 v14, 0x0

    goto/16 :goto_2

    .line 599
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "type":I
    :cond_16
    const/4 v2, 0x0

    goto :goto_6

    .line 607
    .restart local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v11    # "type":I
    :cond_17
    sget-object v13, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v12, v13

    .line 608
    .local v12, "typeCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    if-ge v5, v12, :cond_d

    .line 609
    sget-object v13, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v13, v13, v5

    if-ne v11, v13, :cond_18

    .line 611
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v13}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 608
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 622
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "i":I
    .end local v11    # "type":I
    .end local v12    # "typeCount":I
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->preloadRecentApps()V
    invoke-static {v13}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)V

    goto/16 :goto_5

    .line 629
    :cond_1a
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v14

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I
    .locals 29
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 789
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemBooted:Z

    if-nez v4, :cond_0

    .line 791
    const/4 v4, 0x0

    .line 1125
    :goto_0
    return v4

    .line 794
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v6, 0x1

    .line 795
    .local v6, "down":Z
    :goto_1
    const/high16 v4, 0x1000000

    and-int v4, v4, p2

    if-eqz v4, :cond_2

    const/16 v16, 0x1

    .line 797
    .local v16, "isInjected":Z
    :goto_2
    const-string v4, "BaseMiuiPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " down:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " policyFlags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " deviceId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isScreenOn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    if-eqz v4, :cond_3

    .line 803
    const-string v4, "WindowManager"

    const-string v7, "VR mode drop all keys."

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 794
    .end local v6    # "down":Z
    .end local v16    # "isInjected":Z
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 795
    .restart local v6    # "down":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 807
    .restart local v16    # "isInjected":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 808
    .local v5, "keyCode":I
    const/16 v4, 0x52

    if-ne v5, v4, :cond_4

    const/16 v5, 0xbb

    .line 810
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v22

    .line 811
    .local v22, "mode":I
    const/16 v4, 0xe0

    if-ne v5, v4, :cond_5

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ge v0, v4, :cond_5

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 823
    :cond_5
    const-string v4, "sys.in_shutdown_progress"

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_6

    .line 825
    const-string v4, "WindowManager"

    const-string v7, "this device is being shut down, ignore key event."

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 828
    :cond_6
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_7

    .line 829
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v4, :cond_7

    .line 830
    const-string v4, "BaseMiuiPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring POWER because mTestModeEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 835
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    if-nez v4, :cond_8

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 839
    :cond_8
    const/4 v4, 0x3

    if-ne v5, v4, :cond_9

    if-eqz v6, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_9

    .line 840
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v4

    if-nez v4, :cond_a

    .line 841
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    .line 845
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDpadCenterDown:Z

    if-eqz v4, :cond_9

    .line 846
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    .line 850
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isFingerPrintKey(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 851
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->processFingerprintNavigationEvent(Landroid/view/KeyEvent;)I

    move-result v4

    goto/16 :goto_0

    .line 843
    :cond_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    goto :goto_3

    .line 854
    :cond_b
    const/4 v4, 0x3

    if-ne v5, v4, :cond_c

    if-nez v6, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    if-eqz v4, :cond_c

    .line 855
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    .line 856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 859
    :cond_c
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_d

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    if-eqz v4, :cond_d

    .line 860
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v4, :cond_f

    .line 861
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 870
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_13

    const-string v4, "synaptics_dsx_edge"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "atmel-maxtouch-edge"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 873
    :cond_e
    const/16 v4, 0x78

    if-ne v4, v5, :cond_11

    .line 874
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 865
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    .line 866
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 865
    :cond_10
    const/4 v4, 0x0

    goto :goto_4

    .line 877
    :cond_11
    const/16 v4, 0x1c

    if-ne v4, v5, :cond_12

    .line 878
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 881
    :cond_12
    const/4 v4, 0x4

    if-ne v4, v5, :cond_13

    .line 883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "edge_handgrip_back"

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v4, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_13

    .line 885
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 890
    :cond_13
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v18

    .line 891
    .local v18, "keyBitMask":I
    if-eqz v6, :cond_14

    .line 892
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    or-int v4, v4, v18

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 893
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    or-int v4, v4, v18

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 899
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleKeyCombination()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 900
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 896
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    xor-int/lit8 v7, v18, -0x1

    and-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    goto :goto_5

    .line 903
    :cond_15
    const/16 v4, 0x1a

    if-eq v4, v5, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v4}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->forceShow()V

    .line 906
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 909
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-nez v8, :cond_17

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    if-nez v8, :cond_17

    const/4 v8, 0x1

    :goto_6
    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lmiui/util/AutoDisableScreenButtonsManager;->handleDisableButtons(IZZZLandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 912
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 909
    :cond_17
    const/4 v8, 0x0

    goto :goto_6

    .line 915
    :cond_18
    if-nez v6, :cond_1a

    .line 916
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 926
    :cond_19
    :goto_7
    const/4 v4, 0x3

    if-ne v5, v4, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v4, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->inFingerprintEnrolling()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 927
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 917
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_19

    .line 918
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v7

    if-ne v4, v7, :cond_1b

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v4, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->send(I)V

    goto :goto_7

    .line 922
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    goto :goto_7

    .line 932
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    and-int v4, v4, v18

    if-eqz v4, :cond_1d

    if-nez v6, :cond_1d

    .line 933
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    xor-int/lit8 v7, v18, -0x1

    and-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 934
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 937
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    if-nez v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_20

    if-nez p3, :cond_20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_20

    .line 940
    const/16 v19, 0x0

    .line 941
    .local v19, "keyIntent":Landroid/content/Intent;
    const/16 v4, 0x18

    if-eq v5, v4, :cond_1e

    const/16 v4, 0x19

    if-ne v5, v4, :cond_21

    .line 944
    :cond_1e
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "keyIntent":Landroid/content/Intent;
    const-string v4, "miui.intent.action.CAMERA_KEY_BUTTON"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .restart local v19    # "keyIntent":Landroid/content/Intent;
    :cond_1f
    :goto_8
    if-eqz v19, :cond_20

    .line 951
    const-string v4, "com.android.camera"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    const-string v4, "key_code"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 953
    const-string v4, "key_action"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 954
    const-string v4, "key_event_time"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 960
    .end local v19    # "keyIntent":Landroid/content/Intent;
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    if-eqz v4, :cond_22

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptVoluemeKeyStartCamera(Landroid/view/KeyEvent;IZ)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 961
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 945
    .restart local v19    # "keyIntent":Landroid/content/Intent;
    :cond_21
    if-eqz v6, :cond_1f

    const/16 v4, 0x1a

    if-ne v5, v4, :cond_1f

    .line 947
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "keyIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.KEYCODE_POWER_UP"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v19    # "keyIntent":Landroid/content/Intent;
    goto :goto_8

    .line 963
    .end local v19    # "keyIntent":Landroid/content/Intent;
    :cond_22
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptHomeKeyStartNfc(Landroid/view/KeyEvent;IZ)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 964
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 967
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-nez v4, :cond_25

    const/16 v20, 0x0

    .line 970
    .local v20, "keyguardActive":Z
    :goto_9
    const-string v4, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyguardActive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    if-nez p3, :cond_24

    if-eqz v16, :cond_27

    .line 973
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    if-eqz v4, :cond_2c

    if-eqz v20, :cond_2c

    const/16 v4, 0x1b

    if-ne v5, v4, :cond_2c

    if-nez v6, :cond_2c

    .line 974
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 967
    .end local v20    # "keyguardActive":Z
    :cond_25
    if-eqz p3, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v20

    goto :goto_9

    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v20

    goto :goto_9

    .line 977
    .restart local v20    # "keyguardActive":Z
    :cond_27
    const/16 v17, 0x1

    .line 978
    .local v17, "isWakeKey":Z
    const/4 v10, 0x0

    .line 981
    .local v10, "allowToWake":Z
    sparse-switch v5, :sswitch_data_0

    .line 1002
    const/16 v17, 0x0

    .line 1005
    :cond_28
    :goto_a
    if-eqz v17, :cond_2c

    .line 1006
    if-eqz v10, :cond_2b

    .line 1007
    if-eqz v6, :cond_29

    .line 1009
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 983
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 984
    goto :goto_a

    .line 987
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 988
    goto :goto_a

    .line 992
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 996
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->screenOffBecauseOfProxSensor()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 997
    const/4 v10, 0x0

    goto :goto_a

    .line 1012
    :cond_29
    if-eqz v20, :cond_2a

    .line 1013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    const/16 v7, 0x1a

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 1015
    :cond_2a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 1018
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getWakePolicyFlag()I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    and-int p2, p2, v4

    .line 1022
    .end local v10    # "allowToWake":Z
    .end local v17    # "isWakeKey":Z
    :cond_2c
    const/16 v4, 0x4f

    if-ne v5, v4, :cond_2f

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "enable_mikey_mode"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v4, v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v14, 0x1

    .line 1028
    .local v14, "enabled":Z
    :goto_b
    if-eqz v14, :cond_2f

    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2d

    .line 1030
    new-instance v21, Landroid/content/Intent;

    const-string v4, "miui.intent.action.MIKEY_BUTTON"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v21, "mikeyIntent":Landroid/content/Intent;
    const-string v4, "com.xiaomi.miclick"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const-string v4, "key_action"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1033
    const-string v4, "key_event_time"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1034
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1037
    .end local v21    # "mikeyIntent":Landroid/content/Intent;
    :cond_2d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 1023
    .end local v14    # "enabled":Z
    :cond_2e
    const/4 v14, 0x0

    goto :goto_b

    .line 1041
    :cond_2f
    if-eqz v6, :cond_3c

    .line 1045
    if-eqz p3, :cond_31

    if-nez v20, :cond_31

    const/16 v4, 0x1a

    if-eq v5, v4, :cond_30

    const/16 v4, 0x19

    if-eq v5, v4, :cond_30

    const/16 v4, 0x18

    if-eq v5, v4, :cond_30

    const/16 v4, 0xa4

    if-eq v5, v4, :cond_30

    const/16 v4, 0x4f

    if-ne v5, v4, :cond_31

    .line 1050
    :cond_30
    new-instance v15, Landroid/content/Intent;

    const-string v4, "miui.intent.action.KEYCODE_EXTERNAL"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v15, "i":Landroid/content/Intent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1052
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1053
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 1056
    .end local v15    # "i":Landroid/content/Intent;
    :cond_31
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_36

    const/16 v27, 0x1

    .line 1057
    .local v27, "stopNotification":Z
    :goto_c
    if-nez v27, :cond_33

    .line 1058
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getWindownManagerService()Landroid/view/IWindowManager;

    move-result-object v28

    .line 1059
    .local v28, "wm":Landroid/view/IWindowManager;
    if-eqz v28, :cond_33

    invoke-interface/range {v28 .. v28}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1060
    const/16 v4, 0x19

    if-eq v5, v4, :cond_32

    const/16 v4, 0x18

    if-eq v5, v4, :cond_32

    const/16 v4, 0xa4

    if-ne v5, v4, :cond_33

    .line 1063
    :cond_32
    const/16 v27, 0x1

    .line 1068
    .end local v28    # "wm":Landroid/view/IWindowManager;
    :cond_33
    if-eqz v27, :cond_34

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v4, :cond_34

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v26

    .line 1070
    .local v26, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v26, :cond_34

    .line 1071
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1075
    .end local v26    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_34
    const/16 v4, 0x19

    if-eq v5, v4, :cond_35

    const/16 v4, 0x18

    if-ne v5, v4, :cond_38

    .line 1077
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1078
    .local v11, "cr":Landroid/content/ContentResolver;
    const-string v4, "remote_control_proc_name"

    invoke-static {v11, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1079
    .local v24, "proc":Ljava/lang/String;
    const-string v4, "remote_control_pkg_name"

    invoke-static {v11, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1081
    .local v23, "pkg":Ljava/lang/String;
    if-eqz v24, :cond_38

    if-eqz v23, :cond_38

    .line 1082
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1083
    .local v12, "c":J
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->checkProcessRunning(Ljava/lang/String;)Z

    move-result v25

    .line 1087
    .local v25, "running":Z
    if-eqz v25, :cond_37

    .line 1088
    new-instance v15, Landroid/content/Intent;

    const-string v4, "miui.intent.action.REMOTE_CONTROL"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    .restart local v15    # "i":Landroid/content/Intent;
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1091
    const-string v4, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1092
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 1093
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v4

    goto/16 :goto_0

    .line 1056
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "c":J
    .end local v15    # "i":Landroid/content/Intent;
    .end local v23    # "pkg":Ljava/lang/String;
    .end local v24    # "proc":Ljava/lang/String;
    .end local v25    # "running":Z
    .end local v27    # "stopNotification":Z
    :cond_36
    const/16 v27, 0x0

    goto/16 :goto_c

    .line 1095
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    .restart local v12    # "c":J
    .restart local v23    # "pkg":Ljava/lang/String;
    .restart local v24    # "proc":Ljava/lang/String;
    .restart local v25    # "running":Z
    .restart local v27    # "stopNotification":Z
    :cond_37
    const-string v4, "remote_control_proc_name"

    const/4 v7, 0x0

    invoke-static {v11, v4, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1096
    const-string v4, "remote_control_pkg_name"

    const/4 v7, 0x0

    invoke-static {v11, v4, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "c":J
    .end local v23    # "pkg":Ljava/lang/String;
    .end local v24    # "proc":Ljava/lang/String;
    .end local v25    # "running":Z
    .end local v27    # "stopNotification":Z
    :cond_38
    :goto_d
    if-eqz v6, :cond_3a

    const/16 v4, 0x18

    if-eq v4, v5, :cond_39

    const/16 v4, 0x19

    if-ne v4, v5, :cond_3a

    .line 1109
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1111
    :cond_3a
    if-eqz v6, :cond_3b

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1114
    sparse-switch v5, :sswitch_data_1

    .line 1125
    :cond_3b
    :goto_e
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v4

    goto/16 :goto_0

    .line 1103
    :cond_3c
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_38

    .line 1104
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    goto :goto_d

    .line 1120
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->playSoundEffect()Z

    goto :goto_e

    .line 1100
    .restart local v27    # "stopNotification":Z
    :catch_0
    move-exception v4

    goto :goto_d

    .line 981
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x110 -> :sswitch_0
    .end sparse-switch

    .line 1114
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x52 -> :sswitch_3
        0x54 -> :sswitch_3
        0xbb -> :sswitch_3
    .end sparse-switch
.end method

.method protected interceptVoluemeKeyStartCamera(Landroid/view/KeyEvent;IZ)Z
    .locals 14
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 2172
    const/4 v3, 0x0

    .line 2173
    .local v3, "intercept":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v1, 0x1

    .line 2174
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 2179
    .local v6, "keyCode":I
    const/high16 v7, 0x1000000

    and-int v7, v7, p2

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    .line 2180
    .local v5, "isInjected":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v0, 0x1

    .line 2181
    .local v0, "KeyguardNotActive":Z
    :goto_2
    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isAudioActive()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    move v4, v3

    .line 2205
    .end local v3    # "intercept":Z
    .local v4, "intercept":I
    :goto_3
    return v4

    .line 2173
    .end local v0    # "KeyguardNotActive":Z
    .end local v1    # "down":Z
    .end local v4    # "intercept":I
    .end local v5    # "isInjected":Z
    .end local v6    # "keyCode":I
    .restart local v3    # "intercept":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2179
    .restart local v1    # "down":Z
    .restart local v6    # "keyCode":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 2180
    .restart local v5    # "isInjected":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 2185
    .restart local v0    # "KeyguardNotActive":Z
    :cond_5
    const/16 v7, 0x19

    if-ne v6, v7, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_6

    .line 2187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2188
    .local v8, "now":J
    iget-wide v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0x12c

    cmp-long v7, v10, v12

    if-gez v7, :cond_7

    .line 2189
    iget-wide v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    .line 2194
    :goto_4
    iget-wide v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    const-wide/16 v12, 0x2

    cmp-long v7, v10, v12

    if-ltz v7, :cond_6

    .line 2195
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    .line 2197
    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2198
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v10, v11}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    const/4 v3, 0x1

    .end local v8    # "now":J
    :cond_6
    :goto_5
    move v4, v3

    .line 2205
    .restart local v4    # "intercept":I
    goto :goto_3

    .line 2191
    .end local v4    # "intercept":I
    .restart local v8    # "now":J
    :cond_7
    const-wide/16 v10, 0x1

    iput-wide v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    .line 2192
    iput-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    goto :goto_4

    .line 2200
    :catch_0
    move-exception v2

    .line 2201
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "WindowManager"

    const-string v10, "mCameraIntent problem"

    invoke-static {v7, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method isAutoBrightnessMode()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2018
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    iget v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected isFingerPrintKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2252
    const/4 v0, 0x0

    return v0
.end method

.method protected isInLockTaskMode()Z
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method isPhoneOffhook()Z
    .locals 4

    .prologue
    .line 1974
    const/4 v0, 0x0

    .line 1975
    .local v0, "isOffhook":Z
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1976
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 1977
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v0

    .line 1980
    :cond_0
    return v0
.end method

.method protected abstract isScreenOnInternal()Z
.end method

.method protected abstract launchAssistActionInternal(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected abstract launchRecentPanelInternal()V
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 274
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_2

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    sget-object v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 279
    .local v1, "pf":Landroid/graphics/Rect;
    sget-object v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 280
    .local v2, "df":Landroid/graphics/Rect;
    sget-object v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 281
    .local v3, "of":Landroid/graphics/Rect;
    sget-object v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 282
    .local v4, "cf":Landroid/graphics/Rect;
    sget-object v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 283
    .local v5, "vf":Landroid/graphics/Rect;
    sget-object v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 284
    .local v6, "dcf":Landroid/graphics/Rect;
    sget-object v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 285
    .local v7, "sf":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 287
    .local v8, "osf":Landroid/graphics/Rect;
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 288
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {p1, v9}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 289
    .local v10, "fl":I
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v12

    .line 290
    .local v12, "sysUiFl":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v11

    .line 291
    .local v11, "isDefaultDisplay":Z
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-eq v0, v13, :cond_3

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d9

    if-ne v0, v13, :cond_1

    :cond_3
    if-eqz v11, :cond_1

    const v0, 0x10100

    and-int/2addr v0, v10

    const v13, 0x10100

    if-ne v0, v13, :cond_1

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->originalCanHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit16 v0, v12, 0x200

    if-eqz v0, :cond_1

    .line 302
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenLeft:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 303
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenTop:I

    iput v0, v2, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 304
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenLeft:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v0, v13

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 305
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenTop:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v0, v13

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 309
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 310
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 311
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v0, v13

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 312
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v0, v13

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 314
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v0, v13

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 315
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v0, v13

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    move-object v0, p1

    .line 316
    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 11
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 452
    const-string v2, "persist.sys.smartcover_mode"

    invoke-static {v2, v3}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 454
    .local v1, "smartcoverMode":I
    if-nez v1, :cond_0

    .line 455
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 456
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    .line 498
    :goto_0
    return-void

    .line 460
    :cond_0
    iput-boolean p3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 463
    const-wide/32 v6, 0x7fffffff

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_off_timeout"

    sget v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I

    int-to-long v8, v8

    invoke-static {v2, v5, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    move v0, v3

    .line 465
    .local v0, "isTimeoutMax":Z
    :goto_1
    if-eqz v0, :cond_6

    if-nez p3, :cond_6

    .line 466
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_off_timeout"

    sget v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNeedResetTimeout:Z

    .line 473
    :cond_1
    :goto_2
    if-nez p3, :cond_2

    .line 474
    const-string v2, "sys.keyguard.screen_off_by_lid"

    const-string v5, "true"

    invoke-static {v2, v5}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemBooted:Z

    if-eqz v2, :cond_3

    .line 478
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "miui.intent.action.SMART_COVER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "is_smart_cover_open"

    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 482
    :cond_3
    const/4 v2, 0x2

    if-gt v2, v1, :cond_4

    .line 483
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "is_small_window"

    if-nez p3, :cond_7

    move v2, v3

    :goto_3
    iget v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v5, v6, v2, v7}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 485
    if-nez p3, :cond_8

    .line 486
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v5, 0x3

    invoke-virtual {v2, v6, v7, v5, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 495
    :cond_4
    :goto_4
    if-ne v3, v1, :cond_9

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    .line 497
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    goto :goto_0

    .end local v0    # "isTimeoutMax":Z
    :cond_5
    move v0, v4

    .line 463
    goto :goto_1

    .line 468
    .restart local v0    # "isTimeoutMax":Z
    :cond_6
    if-eqz p3, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNeedResetTimeout:Z

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_off_timeout"

    const v6, 0x7fffffff

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    iput-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNeedResetTimeout:Z

    goto :goto_2

    :cond_7
    move v2, v4

    .line 483
    goto :goto_3

    .line 490
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->restoreScreenBrightnessByLid()V

    .line 491
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string v5, "lid switch open"

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    goto :goto_4

    :cond_9
    move v3, v4

    .line 495
    goto :goto_5
.end method

.method protected abstract onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 1676
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isPhoneOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    const/4 v0, 0x0

    .line 1685
    :goto_0
    return v0

    .line 1681
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1682
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0

    .line 1685
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract preloadRecentAppsInternal()V
.end method

.method protected processFingerprintNavigationEvent(Landroid/view/KeyEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 783
    const/4 v0, -0x1

    return v0
.end method

.method protected registerStatusBarInputEventReceiver()V
    .locals 0

    .prologue
    .line 1261
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_window_loaded"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 362
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 363
    return-void
.end method

.method restoreScreenBrightnessByLid()V
    .locals 8

    .prologue
    .line 1998
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1999
    .local v1, "power":Landroid/os/IPowerManager;
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2001
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isAutoBrightnessMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2002
    const-string v5, "screen_auto_brightness_adj"

    const/high16 v6, 0x7fc00000    # NaNf

    const/4 v7, -0x2

    invoke-static {v2, v5, v6, v7}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3

    .line 2005
    .local v3, "screenAutoBrightnessAdjustmentSetting":F
    invoke-interface {v1, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 2015
    .end local v3    # "screenAutoBrightnessAdjustmentSetting":F
    :goto_0
    return-void

    .line 2007
    :cond_0
    const-string v5, "screen_brightness"

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    const/4 v7, -0x2

    invoke-static {v2, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 2010
    .local v4, "screenBrightnessSetting":I
    invoke-interface {v1, v4}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2012
    .end local v4    # "screenBrightnessSetting":I
    :catch_0
    move-exception v0

    .line 2013
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract screenOffBecauseOfProxSensor()Z
.end method

.method public screenTurnedOff()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff()V

    .line 432
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->startCameraProcess()V

    .line 433
    return-void
.end method

.method protected screenTurnedOffInternal(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 444
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    .line 445
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    .line 446
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 6
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v4, -0x1

    .line 391
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 392
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->onScreenTurnedOnWithoutListener()V

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_screen_on_proximity_sensor"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 400
    .local v0, "pSensorEnableInt":I
    if-ne v0, v4, :cond_4

    .line 401
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_screen_on_proximity_sensor"

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11090013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 404
    .local v1, "proximitySensorEnableSettings":Z
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_screen_on_proximity_sensor"

    invoke-static {v2, v3, v1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 411
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    if-nez v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v2}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->aquire()V

    .line 420
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setMaxTemporaryScreenBrightness()V

    .line 424
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-eqz v2, :cond_3

    .line 425
    const-string v2, "sys.keyguard.screen_off_by_lid"

    const-string v3, "false"

    invoke-static {v2, v3}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_3
    return-void

    .line 408
    .end local v1    # "proximitySensorEnableSettings":Z
    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "proximitySensorEnableSettings":Z
    :goto_1
    goto :goto_0

    .end local v1    # "proximitySensorEnableSettings":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method sendAsyncBroadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2025
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2033
    :cond_0
    return-void
.end method

.method sendAsyncBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 2036
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2037
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2044
    :cond_0
    return-void
.end method

.method public setCurrentUserLw(I)V
    .locals 4
    .param p1, "newUserId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1811
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setCurrentUserLw(I)V

    .line 1812
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    .line 1813
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-virtual {v1, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->onUserSwitch(I)V

    .line 1814
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 1816
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_small_window"

    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1818
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 1801
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->setInitialDisplaySize(Landroid/view/Display;III)V

    .line 1802
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 1803
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->updateNavBar()V

    .line 1805
    :cond_0
    return-void
.end method

.method setMaxTemporaryScreenBrightness()V
    .locals 5

    .prologue
    .line 1984
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1986
    .local v2, "power":Landroid/os/IPowerManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isAutoBrightnessMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1987
    const/high16 v0, 0x3f000000    # 0.5f

    .line 1988
    .local v0, "autoBrightnessAdjustment":F
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 1995
    .end local v0    # "autoBrightnessAdjustment":F
    :goto_0
    return-void

    .line 1990
    :cond_0
    const/16 v3, 0xff

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1992
    :catch_0
    move-exception v1

    .line 1993
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "WindowManager"

    const-string v4, "Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1917
    return-void
.end method

.method protected stopLockTaskMode()Z
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method protected systemReadyInternal()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 366
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 367
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    const-string v6, "android.hardware.sensor.proximity"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 368
    new-instance v6, Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-direct {v6, v7, v8}, Lcom/android/server/policy/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;)V

    iput-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .line 371
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "torch_state"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_test_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    iput-boolean v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    .line 375
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vr_mode"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 376
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6, v10}, Lmiui/core/SdkManager;->initialize(Landroid/app/Application;Ljava/util/Map;)I

    .line 377
    invoke-static {v10}, Lmiui/core/SdkManager;->start(Ljava/util/Map;)I

    .line 378
    const-string v6, "front_fingerprint_sensor"

    invoke-static {v6, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    .line 380
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    .line 381
    const-string v6, "fp_nav_event_name_list"

    invoke-static {v6}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "strArray":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 383
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 384
    .local v4, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected unregisterStatusBarInputEventReceiver()V
    .locals 0

    .prologue
    .line 1262
    return-void
.end method

.method protected abstract updateNavBar()V
.end method
