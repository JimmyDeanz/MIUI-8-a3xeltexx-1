.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;,
        Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;,
        Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;,
        Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;,
        Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;,
        Lcom/android/server/InputMethodManagerService$CarModeReceiver;,
        Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;,
        Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;,
        Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/InputMethodManagerService$KeyboardDetect;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$SessionState;
    }
.end annotation


# static fields
.field private static final ACTION_KMS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.KMS_KEYBOARD"

.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final ACTION_PSS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.PSS_KEYBOARD"

.field private static final ACTION_SUBTYPE_EVENT:Ljava/lang/String; = "com.sec.android.inputmethod.Subtype"

.field private static final ACTION_VZW_RESET_SETTING:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"

.field private static final CHINESE_KEYPAD:Ljava/lang/String; = "com.samsung.inputmethod/.SamsungIME"

.field private static COUNTRY_CODE:Ljava/lang/String; = null

.field static final DEBUG:Z = false

.field static final DEBUG_RESTORE:Z = false

.field private static final EXTRA_KMS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_PSS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_SIP_SUBTYPE:Ljava/lang/String; = "SamsungIME.Subtype"

.field public static final IMS_MASK_HW_KEYBOARD:I = 0xf

.field private static final INPUT_METHOD_SEPARATOR:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATOR:C = ';'

.field private static final JAPANESE_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_BIND_METHOD:I = 0xbc2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_MINIMIZE_SOFT_INPUT:I = 0x400

.field static final MSG_RESTART_INPUT:I = 0x7da

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SET_SPELL_CHECKER:I = 0xbf4

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0xbe0

.field static final MSG_SHOW_AGAIN_IM_PICKER:I = 0x3ff

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field static final MSG_UNBIND_METHOD:I = 0xbb8

.field static final MSG_UNDO_MINIMIZE_SOFT_INPUT:I = 0x401

.field static final MSG_UPDATE_FLOATING_STATE:I = 0x3fe

.field static final MSG_UPDATE_WACOM_STATE:I = 0x3fd

.field static final NOTI_TAG:Ljava/lang/String; = "InputMethodManagerService_Noti"

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L

.field public static final UNIVERSAL_SWITCH_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field private static keyboardState:I

.field private static mAccessControlEnable:Z

.field private static mAccessControlKeyboardBlockEnable:Z

.field private static mBTKeyboardCount:I

.field private static mDefaultSIP:Ljava/lang/String;

.field private static mDeviceDefaultThemeType:Ljava/lang/String;

.field private static mEnabledKCMFeatureForHWKeyboard:Z

.field private static mFloatingForMultiWindow:Z

.field private static mUSBKeyboardCount:I

.field private static mbWACOMPen:Z

.field private static prevAutoMode:I


# instance fields
.field private final DEBUG_HARDWARE_KEYBOARD:Z

.field private final HID_BT:I

.field private final KEYBOARD_BT:I

.field private final KEYBOARD_DOCK:I

.field private final KEYBOARD_EXTERNAL:I

.field private final KEYBOARD_KMS:I

.field private final KEYBOARD_PSS:I

.field private final KEYBOARD_UNDEFINED:I

.field private final KEYBOARD_USB:I

.field private curImeId_for_menu:Ljava/lang/String;

.field private isKnoxKeypadUsed:Z

.field kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

.field private knoxV2Enabled:Z

.field private mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

.field private mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBackDisposition:I

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurUserActionNotificationSequenceNumber:I

.field private mCurrentFocusedUserId:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field private mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

.field private mForcedtoSecureKeypad:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private final mImeSelectedOnBoot:Z

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInputShown:Z

.field final mIsFolderModel:Z

.field mIsInteractive:Z

.field private mIsPersona:Z

.field mIsScreenPinnedState:Z

.field private mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

.field private mKeyboardDialog:Landroid/app/AlertDialog;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field private mLastSystemLocale:Ljava/util/Locale;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

.field public mMobilekeyboardCheckedItem:I

.field private mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

.field private mMobilekeyboardSubtypeIds:[I

.field private final mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

.field private mNeedToExplicitallyCall:Z

.field final mNoBinding:Lcom/android/internal/view/InputBindResult;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPrevInputMethodForCarMode:Ljava/lang/String;

.field private mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

.field final mRes:Landroid/content/res/Resources;

.field private mSecureKeypadEnabled:Z

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field private final mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private final mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field mSystemReady:Z

.field private mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private notificationcontrol_lock:Z

.field private notificationcontrol_release:Z

.field private switchingFromVoice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    const-string/jumbo v0, "none"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    .line 328
    sput v1, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    .line 329
    sput v1, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    .line 335
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    .line 394
    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    .line 397
    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    .line 398
    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 429
    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z

    .line 432
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->DEBUG_HARDWARE_KEYBOARD:Z

    .line 298
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_UNDEFINED:I

    .line 320
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_EXTERNAL:I

    .line 321
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_DOCK:I

    .line 322
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_BT:I

    .line 323
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_USB:I

    .line 324
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->HID_BT:I

    .line 325
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_PSS:I

    .line 326
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_KMS:I

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    .line 355
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 360
    new-instance v0, Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 390
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    .line 500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    .line 567
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 716
    new-instance v0, Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    .line 718
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 720
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 753
    new-instance v0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    .line 6135
    new-instance v0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    .line 6214
    new-instance v0, Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    .line 6260
    new-instance v0, Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    .line 6278
    new-instance v0, Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    .line 1425
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1426
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1427
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1428
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1430
    new-instance v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    .line 1431
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1433
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/InputMethodManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1439
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 1440
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1441
    new-instance v0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    .line 1442
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.input_methods"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHasFeature:Z

    .line 1445
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    .line 1452
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108049a

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "sys"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 1468
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1469
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1471
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1476
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1477
    .local v6, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1478
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1479
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    const-string v0, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1481
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    const-string v0, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    .line 1487
    const/4 v5, 0x0

    .line 1490
    .local v5, "userId":I
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mForcedtoSecureKeypad:Z

    .line 1491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    .line 1492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->curImeId_for_menu:Ljava/lang/String;

    .line 1493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->switchingFromVoice:Z

    .line 1494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->isKnoxKeypadUsed:Z

    .line 1495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->notificationcontrol_lock:Z

    .line 1496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->notificationcontrol_release:Z

    .line 1498
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v12

    .line 1499
    .local v12, "versionInfo":Landroid/os/Bundle;
    if-eqz v12, :cond_0

    const-string v0, "2.0"

    const-string/jumbo v1, "version"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    .line 1505
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1533
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    :goto_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1541
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1543
    const/4 v0, 0x0

    sput v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->registerSamsungAdditionalReceviers()V

    .line 1550
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1555
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageManagerInternal;

    .line 1557
    .local v11, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v0, Lcom/android/server/InputMethodManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManagerInternal;->setImePackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 1584
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1585
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1586
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1587
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1589
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1592
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 1596
    .local v7, "defaultImiId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    .line 1598
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1599
    :try_start_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 1601
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1602
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->enableAllIMEsIfThereIsNoEnabledIME()V

    .line 1604
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v0, :cond_1

    .line 1605
    const-string v0, "InputMethodManagerService"

    const-string v1, "No IME selected. Choose the most applicable IME."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1607
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1608
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1611
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1612
    :try_start_4
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, v5}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1613
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1614
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1618
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1619
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1630
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    new-instance v1, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1632
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_keyboard_block"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    sput-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 1634
    return-void

    .line 1534
    .end local v7    # "defaultImiId":Ljava/lang/String;
    .end local v9    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_0
    move-exception v8

    .line 1535
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "InputMethodManagerService"

    const-string v1, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1589
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v11    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1596
    .restart local v7    # "defaultImiId":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1599
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1601
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 1608
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 1614
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 1632
    .restart local v9    # "filter":Landroid/content/IntentFilter;
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 209
    sput-boolean p0, Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/ContentResolver;

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->hideImeNotification()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/InputMethodManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/InputMethodManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetStateIfCurrentLocaleChangedLocked()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/InputMethodManagerService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/InputMethodManagerService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$3002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 209
    sput p0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return p0
.end method

.method static synthetic access$3006()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$3008()I
    .locals 2

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$3102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 209
    sput p0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return p0
.end method

.method static synthetic access$3106()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$3108()I
    .locals 2

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$372(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/2addr v0, p0

    sput v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method static synthetic access$376(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    or-int/2addr v0, p0

    sput v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 209
    sput p0, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    return p0
.end method

.method private addShortcutInputMethodAndSubtypes(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 5186
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5187
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5193
    :goto_0
    return-void

    .line 5189
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5190
    .local v0, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5191
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 2023
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2024
    :cond_0
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    const/4 v0, 0x0

    .line 2027
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    goto :goto_0
.end method

.method static buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 930
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 932
    .local v2, "imeMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 933
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 934
    .local v3, "imeName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 935
    .local v4, "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 936
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 937
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 939
    :cond_0
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 941
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "imeName":Ljava/lang/String;
    .end local v4    # "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsSettingString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private calledFromValidUser()Z
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    const/4 v2, 0x1

    .line 1963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1964
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1974
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1975
    const-string v3, "InputMethodManagerService"

    const-string v4, "calledFromValidUser - Knox case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1977
    if-eq v0, v5, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    if-eq v4, v1, :cond_0

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    if-ne v4, v1, :cond_2

    .line 1978
    :cond_0
    monitor-exit v3

    .line 2005
    :cond_1
    :goto_0
    return v2

    .line 1980
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1994
    :cond_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2003
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- IPC called from background users. Ignore. \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodUtils;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    const/4 v2, 0x0

    goto :goto_0

    .line 1980
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1984
    :cond_4
    if-eq v0, v5, :cond_1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2015
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_1

    .line 2016
    :cond_0
    const/4 v0, 0x0

    .line 2018
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private chooseNewDefaultIMELocked()Z
    .locals 2

    .prologue
    .line 4316
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 4318
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    .line 4322
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4323
    const/4 v1, 0x1

    .line 4326
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;
    .locals 14
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5053
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    .line 5054
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v6, 0x0

    .line 5055
    .local v6, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v7, 0x0

    .line 5056
    .local v7, "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v1, 0x0

    .line 5059
    .local v1, "foundInSystemIME":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5060
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 5061
    .local v4, "imiId":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 5064
    :cond_1
    const/4 v9, 0x0

    .line 5065
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v3, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 5068
    .local v0, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_2

    .line 5069
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5074
    :cond_2
    if-nez v9, :cond_3

    .line 5075
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5078
    :cond_3
    invoke-static {v3, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 5080
    .local v8, "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v10

    .line 5085
    .local v10, "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_1
    if-nez v9, :cond_4

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_4

    .line 5086
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5091
    :cond_4
    if-nez v9, :cond_5

    .line 5092
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 5095
    :cond_5
    if-eqz v9, :cond_0

    .line 5096
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 5098
    move-object v6, v3

    .line 5099
    move-object v7, v9

    .line 5123
    .end local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-eqz v6, :cond_9

    .line 5124
    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5127
    :goto_2
    return-object v11

    .restart local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v4    # "imiId":Ljava/lang/String;
    .restart local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    move-object v10, v8

    .line 5080
    goto :goto_1

    .line 5101
    .restart local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_8
    if-nez v1, :cond_0

    .line 5103
    move-object v6, v3

    .line 5104
    move-object v7, v9

    .line 5105
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 5107
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 5127
    .end local v0    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imiId":Ljava/lang/String;
    .end local v8    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_9
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 5
    .param p1, "sessionState"    # Lcom/android/server/InputMethodManagerService$SessionState;

    .prologue
    const/4 v4, 0x0

    .line 2479
    if-eqz p1, :cond_1

    .line 2480
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    .line 2482
    :try_start_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2487
    :goto_0
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2489
    :cond_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    .line 2490
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 2491
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 2494
    :cond_1
    return-void

    .line 2483
    :catch_0
    move-exception v0

    .line 2484
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManagerService"

    const-string v2, "Session failed to close due to remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2485
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    goto :goto_0
.end method

.method private getAppShowFlags()I
    .locals 2

    .prologue
    .line 2155
    const/4 v0, 0x0

    .line 2156
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_1

    .line 2157
    or-int/lit8 v0, v0, 0x2

    .line 2161
    :cond_0
    :goto_0
    return v0

    .line 2158
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_0

    .line 2159
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 6002
    if-nez p2, :cond_1

    .line 6003
    const/4 v0, 0x0

    .line 6026
    :cond_0
    :goto_0
    return-object v0

    .line 6005
    :cond_1
    const/4 v0, 0x0

    .line 6006
    .local v0, "inputMethodId":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 6008
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6020
    :goto_1
    const-string v1, "DCM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.sevenknowledge.sevennotesproduct.samsung/com.sevenknowledge.mazec.MazecIms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6023
    const-string v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    goto :goto_0

    .line 6012
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 5146
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 5181
    :cond_0
    :goto_0
    return-object v4

    .line 5149
    :cond_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v3

    .line 5150
    .local v3, "subtypeIsSelected":Z
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5151
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    if-eqz v5, :cond_0

    .line 5154
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5156
    :cond_2
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    .line 5157
    .local v2, "subtypeId":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_5

    .line 5161
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 5165
    .local v0, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 5166
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5181
    .end local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "subtypeId":I
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 5167
    .restart local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v2    # "subtypeId":I
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_3

    .line 5168
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v6, "keyboard"

    invoke-static {v5, v0, v6, v4, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5171
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v5, :cond_3

    .line 5172
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v5, v0, v4, v4, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_1

    .line 5178
    .end local v0    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_1
.end method

.method private getDeviceThemeFromSystemProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    const-string/jumbo v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImeShowFlags()I
    .locals 2

    .prologue
    .line 2144
    const/4 v0, 0x0

    .line 2145
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_1

    .line 2146
    or-int/lit8 v0, v0, 0x3

    .line 2151
    :cond_0
    :goto_0
    return v0

    .line 2148
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_0

    .line 2149
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPersonaService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 4287
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 4288
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 4290
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getSecureDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;
    .locals 4

    .prologue
    .line 4229
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    .line 4230
    .local v0, "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    if-eqz v3, :cond_2

    .line 4231
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 4232
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4233
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4234
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4243
    .end local v1    # "i":I
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    :goto_1
    return-object v2

    .line 4237
    .restart local v1    # "i":I
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4243
    .end local v1    # "i":I
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleSetInteractive(Z)V
    .locals 6
    .param p1, "interactive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4215
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4216
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 4217
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    :goto_0
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 4220
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_1

    .line 4221
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbcc

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4224
    :cond_1
    monitor-exit v2

    .line 4225
    return-void

    :cond_2
    move v1, v0

    .line 4217
    goto :goto_0

    .line 4224
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideImeNotification()V
    .locals 4

    .prologue
    .line 2636
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2638
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "InputMethodManagerService_Noti"

    const v2, 0x10403f9

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    .line 2643
    :cond_0
    return-void
.end method

.method private isChineseRegion()Z
    .locals 2

    .prologue
    .line 5955
    const-string/jumbo v0, "none"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5956
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    .line 5958
    :cond_0
    const-string v0, "CHINA"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HONG KONG"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TAIWAN"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5961
    :cond_1
    const/4 v0, 0x1

    .line 5963
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceBlackTheme()Z
    .locals 2

    .prologue
    .line 435
    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    const-string v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x1

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHWAccessoryKeyboard()Z
    .locals 1

    .prologue
    .line 5995
    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInstalledInputMethod(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5925
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    .line 5926
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 5927
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 5928
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5929
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5930
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5931
    const/4 v4, 0x1

    .line 5935
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v4

    .line 5928
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5935
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isJapaneseRegion()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 5947
    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5948
    .local v0, "cscCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "JP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 5951
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKnoxId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 3248
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    .line 3250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKoreaRegion()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 5939
    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5940
    .local v0, "cscCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "KOREA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 5943
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 4
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1786
    if-nez p1, :cond_1

    .line 1797
    :cond_0
    :goto_0
    return v1

    .line 1789
    :cond_1
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1790
    .local v0, "imiId":Ljava/lang/String;
    const-string v3, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1791
    goto :goto_0

    .line 1792
    :cond_2
    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 1793
    goto :goto_0

    .line 1794
    :cond_3
    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 1795
    goto :goto_0
.end method

.method private isScreenLocked()Z
    .locals 1

    .prologue
    .line 4474
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 9
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4264
    if-nez p1, :cond_1

    .line 4283
    :cond_0
    :goto_0
    return v4

    .line 4267
    :cond_1
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 4268
    goto :goto_0

    .line 4270
    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Landroid/os/PersonaManager;

    move-result-object v3

    .line 4271
    .local v3, "mPersona":Landroid/os/PersonaManager;
    if-eqz v3, :cond_0

    .line 4274
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Landroid/os/PersonaManager;

    move-result-object v6

    sget-object v7, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/PersonaManager;->getAppListForPersona(Landroid/os/PersonaManager$AppType;I)Ljava/util/List;

    move-result-object v2

    .line 4276
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4277
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4278
    .local v1, "imiId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 4279
    goto :goto_0
.end method

.method private isSecureIMEKnox(Ljava/lang/String;)Z
    .locals 5
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 4247
    if-nez p1, :cond_0

    .line 4248
    const/4 v4, 0x0

    .line 4260
    :goto_0
    return v4

    .line 4250
    :cond_0
    const/4 v1, 0x0

    .line 4251
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v3

    .line 4252
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4253
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4254
    .local v2, "item":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4255
    move-object v1, v2

    .line 4260
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    goto :goto_0
.end method

.method static parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 8
    .param p0, "inputMethodsAndSubtypesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 947
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 949
    .local v3, "imeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 968
    :cond_0
    return-object v3

    .line 953
    :cond_1
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 955
    .local v6, "typeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3b

    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 957
    .local v4, "subtypeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static {p0, v6, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object v0

    .line 961
    .local v0, "allImeSettings":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 962
    .local v2, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 963
    .local v5, "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 964
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 966
    :cond_2
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private refreshImeWindowVis()V
    .locals 13

    .prologue
    .line 1911
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1912
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v10, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    const/4 v2, 0x1

    .line 1914
    .local v2, "haveHardKeyboard":Z
    :goto_0
    if-eqz v2, :cond_7

    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    const/4 v1, 0x1

    .line 1921
    .local v1, "hardKeyShown":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKoreaRegion()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    if-eqz v10, :cond_2

    .line 1922
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    .line 1923
    .local v6, "isFolderPhone":Z
    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v5, 0x1

    .line 1924
    .local v5, "isFolderOpen":Z
    :goto_2
    if-eqz v1, :cond_9

    if-eqz v6, :cond_1

    if-nez v5, :cond_9

    :cond_1
    const/4 v1, 0x1

    .line 1926
    :goto_3
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HARDWARE_KEYBOARD] (refreshImeWindowVis) isChineseRegion = true, isFolderPhone= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isFolderOpen = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hardKeyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    .end local v5    # "isFolderOpen":Z
    .end local v6    # "isFolderPhone":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v7

    .line 1933
    .local v7, "isScreenLocked":Z
    if-nez v7, :cond_a

    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v10, :cond_3

    if-eqz v1, :cond_a

    :cond_3
    const/4 v3, 0x1

    .line 1934
    .local v3, "inputActive":Z
    :goto_4
    if-eqz v7, :cond_b

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v10}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v8, 0x1

    .line 1937
    .local v8, "isScreenSecurelyLocked":Z
    :goto_5
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    .line 1938
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "universal_switch_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1940
    .local v9, "universalSwitchState":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 1941
    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v10, :cond_4

    if-eqz v1, :cond_c

    :cond_4
    const/4 v3, 0x1

    .line 1946
    .end local v9    # "universalSwitchState":I
    :cond_5
    :goto_6
    if-eqz v3, :cond_d

    if-nez v1, :cond_d

    const/4 v4, 0x1

    .line 1947
    .local v4, "inputVisible":Z
    :goto_7
    if-eqz v3, :cond_e

    const/4 v10, 0x1

    move v11, v10

    :goto_8
    if-eqz v4, :cond_f

    const/4 v10, 0x2

    :goto_9
    or-int/2addr v10, v11

    iput v10, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 1951
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HARDWARE_KEYBOARD] (refreshImeWindowVis) mImeWindowVis= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " inputVisible = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "haveHardKeyboard = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hardKeyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    return-void

    .line 1912
    .end local v1    # "hardKeyShown":Z
    .end local v2    # "haveHardKeyboard":Z
    .end local v3    # "inputActive":Z
    .end local v4    # "inputVisible":Z
    .end local v7    # "isScreenLocked":Z
    .end local v8    # "isScreenSecurelyLocked":Z
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1914
    .restart local v2    # "haveHardKeyboard":Z
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1923
    .restart local v1    # "hardKeyShown":Z
    .restart local v6    # "isFolderPhone":Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1924
    .restart local v5    # "isFolderOpen":Z
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1933
    .end local v5    # "isFolderOpen":Z
    .end local v6    # "isFolderPhone":Z
    .restart local v7    # "isScreenLocked":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 1934
    .restart local v3    # "inputActive":Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    .line 1941
    .restart local v8    # "isScreenSecurelyLocked":Z
    .restart local v9    # "universalSwitchState":I
    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    .line 1946
    .end local v9    # "universalSwitchState":I
    :cond_d
    const/4 v4, 0x0

    goto :goto_7

    .line 1947
    .restart local v4    # "inputVisible":Z
    :cond_e
    const/4 v10, 0x0

    move v11, v10

    goto :goto_8

    :cond_f
    const/4 v10, 0x0

    goto :goto_9
.end method

.method private resetAllInternalStateLocked(ZZ)V
    .locals 6
    .param p1, "updateOnlyWhenLocaleChanged"    # Z
    .param p2, "resetDefaultEnabledIme"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1675
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_1

    .line 1715
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1680
    .local v1, "newLocale":Ljava/util/Locale;
    if-eqz p1, :cond_2

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1682
    :cond_2
    if-nez p1, :cond_3

    .line 1683
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1684
    invoke-virtual {p0, v5, v4}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    .line 1689
    :cond_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 1690
    if-nez p1, :cond_4

    .line 1691
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 1692
    .local v2, "selectedImiId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1695
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1705
    .end local v2    # "selectedImiId":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1706
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;

    .line 1707
    if-nez p1, :cond_0

    .line 1709
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "InputMethodManagerService"

    const-string v4, "Unexpected exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1638
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1671
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    const/4 v6, 0x0

    .line 1644
    .local v6, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1646
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v6, v0

    .line 1649
    :cond_3
    if-nez v6, :cond_2

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v1, :cond_2

    .line 1650
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1651
    .local v3, "systemLocale":Ljava/util/Locale;
    const/4 v2, 0x1

    sget-object v5, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1654
    move-object v6, v0

    .line 1655
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected default: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1659
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "systemLocale":Ljava/util/Locale;
    :cond_4
    if-nez v6, :cond_5

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1660
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v6

    .line 1662
    if-eqz v6, :cond_6

    .line 1663
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default found, using "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_5
    :goto_2
    if-eqz v6, :cond_0

    .line 1669
    const/4 v1, -0x1

    invoke-direct {p0, v6, v1, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    goto/16 :goto_0

    .line 1665
    :cond_6
    const-string v1, "InputMethodManagerService"

    const-string v2, "No default found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 7
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    .prologue
    .line 5033
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5034
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, -0x1

    .line 5036
    .local v2, "lastSubtypeId":I
    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5037
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5038
    .local v3, "subtypeHashCode":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 5040
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 5047
    .end local v3    # "subtypeHashCode":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 5048
    return-void

    .line 5042
    .restart local v3    # "subtypeHashCode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5043
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HashCode for subtype looks broken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetStateIfCurrentLocaleChangedLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1718
    invoke-direct {p0, v0, v0}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    .line 1720
    return-void
.end method

.method static restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 903
    invoke-static {p1}, Lcom/android/server/InputMethodManagerService;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 904
    .local v5, "prevMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p2}, Lcom/android/server/InputMethodManagerService;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v4

    .line 907
    .local v4, "newMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 908
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 909
    .local v2, "imeId":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 910
    .local v6, "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 911
    new-instance v6, Landroid/util/ArraySet;

    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    .line 912
    .restart local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 917
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "imeId":Ljava/lang/String;
    .end local v6    # "prevSubtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v3

    .line 922
    .local v3, "mergedImesAndSubtypesString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "enabled_input_methods"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 924
    return-void
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .prologue
    .line 3875
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3876
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3877
    monitor-exit v1

    .line 3878
    return-void

    .line 3877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .prologue
    .line 3881
    if-nez p1, :cond_0

    .line 3882
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 3885
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3889
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_1

    .line 3890
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring setInputMethod of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    :goto_0
    return-void

    .line 3895
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3897
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3899
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .locals 7
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"    # I
    .param p3, "setSubtypeOnly"    # Z

    .prologue
    const/4 v6, -0x1

    .line 4986
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4988
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 4995
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_0

    .line 4996
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbe0

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 5002
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_3

    .line 5003
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5004
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5026
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    .line 5028
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5030
    :cond_2
    return-void

    .line 5006
    :cond_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_4

    .line 5007
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 5008
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5009
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 5011
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5013
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 5028
    :cond_5
    const-string v1, ""

    goto :goto_1
.end method

.method private setSpellCheckerEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4437
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    .line 4439
    .local v0, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    if-eqz v0, :cond_0

    .line 4441
    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 4443
    :cond_0
    return-void
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .locals 15
    .param p1, "visibility"    # I

    .prologue
    .line 2574
    iget-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-nez v12, :cond_0

    const/4 v12, 0x0

    .line 2628
    :goto_0
    return v12

    .line 2575
    :cond_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 2576
    :cond_1
    iget-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-nez v12, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    .line 2577
    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    .line 2578
    :cond_3
    and-int/lit8 v12, p1, 0x1

    if-nez v12, :cond_4

    const/4 v12, 0x0

    goto :goto_0

    .line 2579
    :cond_4
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardAvailable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2584
    const/4 v12, 0x1

    goto :goto_0

    .line 2586
    :cond_5
    and-int/lit8 v12, p1, 0x2

    if-nez v12, :cond_6

    const/4 v12, 0x0

    goto :goto_0

    .line 2588
    :cond_6
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v12}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    .line 2589
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 2590
    .local v0, "N":I
    const/4 v12, 0x2

    if-le v0, v12, :cond_7

    const/4 v12, 0x1

    goto :goto_0

    .line 2591
    :cond_7
    const/4 v12, 0x1

    if-ge v0, v12, :cond_8

    const/4 v12, 0x0

    goto :goto_0

    .line 2592
    :cond_8
    const/4 v7, 0x0

    .line 2593
    .local v7, "nonAuxCount":I
    const/4 v1, 0x0

    .line 2594
    .local v1, "auxCount":I
    const/4 v8, 0x0

    .line 2595
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 2596
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_c

    .line 2597
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 2598
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v4, v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 2600
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 2601
    .local v10, "subtypeCount":I
    if-nez v10, :cond_a

    .line 2602
    add-int/lit8 v7, v7, 0x1

    .line 2596
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2604
    :cond_a
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v10, :cond_9

    .line 2605
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2606
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_b

    .line 2607
    add-int/lit8 v7, v7, 0x1

    .line 2608
    move-object v8, v9

    .line 2604
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2610
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 2611
    move-object v2, v9

    goto :goto_3

    .line 2616
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "j":I
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_c
    const/4 v12, 0x1

    if-gt v7, v12, :cond_d

    const/4 v12, 0x1

    if-le v1, v12, :cond_e

    .line 2617
    :cond_d
    const/4 v12, 0x1

    goto :goto_0

    .line 2618
    :cond_e
    const/4 v12, 0x1

    if-ne v7, v12, :cond_11

    const/4 v12, 0x1

    if-ne v1, v12, :cond_11

    .line 2619
    if-eqz v8, :cond_10

    if-eqz v2, :cond_10

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_10

    :cond_f
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2624
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2626
    :cond_10
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2628
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private showConfigureInputMethods()V
    .locals 5

    .prologue
    .line 4466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4467
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4470
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4471
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 4455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4456
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4460
    const-string/jumbo v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4462
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4463
    return-void
.end method

.method private showInputMethodMenu()V
    .locals 1

    .prologue
    .line 4447
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V

    .line 4448
    return-void
.end method

.method private showInputMethodMenu(Z)V
    .locals 46
    .param p1, "showAuxSubtypes"    # Z

    .prologue
    .line 4515
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4516
    .local v11, "context":Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v27

    .line 4518
    .local v27, "isScreenLocked":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v31

    .line 4519
    .local v31, "lastInputMethodId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v32

    .line 4522
    .local v32, "lastInputMethodSubtypeId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    monitor-enter v42

    .line 4523
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v24

    .line 4526
    .local v24, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v41

    if-nez v41, :cond_1

    .line 4527
    :cond_0
    monitor-exit v42

    .line 4789
    :goto_0
    return-void

    .line 4530
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 4532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v41, v0

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    move/from16 v2, p1

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;

    move-result-object v22

    .line 4536
    .local v22, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/16 v41, -0x1

    move/from16 v0, v32

    move/from16 v1, v41

    if-ne v0, v1, :cond_2

    .line 4537
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v14

    .line 4538
    .local v14, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v14, :cond_2

    .line 4539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 4540
    .local v13, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v41

    move/from16 v0, v41

    invoke-static {v13, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v32

    .line 4547
    .end local v13    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    const-string v41, "InputMethodManagerService"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "showInputMethodMenuInternal : mSecureKeypadEnabled: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_4

    .line 4549
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    move/from16 v41, v0

    if-eqz v41, :cond_4

    .line 4550
    if-eqz v22, :cond_4

    .line 4551
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 4552
    .local v23, "imiIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_3
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_4

    .line 4553
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4554
    .local v28, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v41

    if-nez v41, :cond_3

    .line 4555
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 4788
    .end local v22    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v23    # "imiIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v24    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v41

    monitor-exit v42
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v41

    .line 4562
    .restart local v22    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .restart local v24    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_4
    const/4 v12, 0x0

    .line 4563
    .local v12, "currentImePackage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4564
    .local v8, "checkedItem":I
    if-eqz v22, :cond_9

    .line 4565
    :try_start_1
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    .line 4566
    .local v5, "N":I
    new-array v0, v5, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4567
    new-array v0, v5, [I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    .line 4568
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v5, :cond_9

    .line 4569
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4570
    .restart local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v43, v0

    aput-object v43, v41, v21

    .line 4571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v43, v0

    aput v43, v41, v21

    .line 4572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    aget-object v41, v41, v21

    invoke-virtual/range {v41 .. v41}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 4573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    aget-object v41, v41, v21

    invoke-virtual/range {v41 .. v41}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 4574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move-object/from16 v41, v0

    aget v37, v41, v21

    .line 4575
    .local v37, "subtypeId":I
    const/16 v41, -0x1

    move/from16 v0, v37

    move/from16 v1, v41

    if-eq v0, v1, :cond_6

    const/16 v41, -0x1

    move/from16 v0, v32

    move/from16 v1, v41

    if-ne v0, v1, :cond_5

    if-eqz v37, :cond_6

    :cond_5
    move/from16 v0, v37

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 4578
    :cond_6
    move/from16 v8, v21

    .line 4568
    .end local v37    # "subtypeId":I
    :cond_7
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 4579
    .restart local v37    # "subtypeId":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    aget-object v41, v41, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 4580
    move/from16 v8, v21

    goto :goto_3

    .line 4586
    .end local v5    # "N":I
    .end local v21    # "i":I
    .end local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v37    # "subtypeId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    move/from16 v41, v0

    const/16 v43, 0x1

    move/from16 v0, v41

    move/from16 v1, v43

    if-ne v0, v1, :cond_e

    .line 4587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    move/from16 v43, v0

    move-object/from16 v0, v41

    move/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;

    move-result-object v29

    .line 4590
    .local v29, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    if-eqz v29, :cond_d

    if-eqz v22, :cond_d

    .line 4591
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 4592
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v5

    .line 4593
    .restart local v5    # "N":I
    new-array v0, v5, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v33, v0

    .line 4594
    .local v33, "mIms":[Landroid/view/inputmethod/InputMethodInfo;
    new-array v0, v5, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4595
    new-array v0, v5, [I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    .line 4596
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 4597
    .local v34, "mPackageName":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 4598
    .local v9, "checkitem":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v5, :cond_d

    .line 4599
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4600
    .restart local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    aput-object v41, v33, v21

    .line 4601
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v41

    aput-object v41, v34, v21

    .line 4602
    aget-object v41, v34, v21

    const-string v43, "com.sec.android.inputmethod"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_a

    aget-object v41, v34, v21

    const-string v43, "com.google.android.googlequicksearchbox"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 4603
    :cond_a
    const-string v41, "InputMethodManagerService"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "IMMS: showInputMethodMenuInternal() -checkitem : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v43, v0

    aput-object v43, v41, v9

    .line 4606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v43, v0

    aput v43, v41, v9

    .line 4607
    move/from16 v0, v21

    if-ne v8, v0, :cond_b

    .line 4608
    const-string v41, "InputMethodManagerService"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "IMMS: showInputMethodMenuInternal() checkedItem==i -checkitem : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " i =  "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    .line 4611
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 4598
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .line 4615
    .end local v5    # "N":I
    .end local v9    # "checkitem":I
    .end local v21    # "i":I
    .end local v28    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v33    # "mIms":[Landroid/view/inputmethod/InputMethodInfo;
    .end local v34    # "mPackageName":[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    .line 4620
    .end local v29    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v41

    const/16 v43, 0x64

    move/from16 v0, v41

    move/from16 v1, v43

    if-lt v0, v1, :cond_12

    .line 4621
    move-object/from16 v30, v11

    .line 4623
    .local v30, "knoxContext":Landroid/content/Context;
    const/16 v41, 0x0

    :try_start_2
    new-instance v43, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v44

    invoke-direct/range {v43 .. v44}, Landroid/os/UserHandle;-><init>(I)V

    move/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v11, v12, v0, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v30

    .line 4627
    :goto_5
    :try_start_3
    new-instance v36, Landroid/view/ContextThemeWrapper;

    const v41, 0x1030223

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4632
    .end local v30    # "knoxContext":Landroid/content/Context;
    .local v36, "settingsContext":Landroid/content/Context;
    :goto_6
    new-instance v41, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    new-instance v43, Lcom/android/server/InputMethodManagerService$8;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$8;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 4641
    .local v15, "dialogContext":Landroid/content/Context;
    const/16 v41, 0x0

    sget-object v43, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v44, 0x101005d

    const/16 v45, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 4644
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v41, 0x2

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 4646
    .local v16, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 4648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 4650
    const-string/jumbo v41, "layout_inflater"

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/LayoutInflater;

    .line 4652
    .local v25, "inflater":Landroid/view/LayoutInflater;
    const v41, 0x1090080

    const/16 v43, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v41

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v40

    .line 4654
    .local v40, "tv":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4657
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v26

    .line 4658
    .local v26, "isDisplayedHardKeySwitch":Z
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 4659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v41, v0

    const v43, 0x1020360

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 4660
    .local v39, "textView":Landroid/widget/TextView;
    const v4, 0x3f99999a    # 1.2f

    .line 4661
    .local v4, "MAX_FONT_SCALE":F
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v18, v0

    .line 4662
    .local v18, "fontScale":F
    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getTextSize()F

    move-result v41

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v43, v0

    div-float v19, v41, v43

    .line 4664
    .local v19, "fontsize":F
    cmpl-float v41, v18, v4

    if-lez v41, :cond_f

    .line 4665
    move/from16 v18, v4

    .line 4667
    :cond_f
    const/16 v41, 0x1

    mul-float v43, v19, v18

    move-object/from16 v0, v39

    move/from16 v1, v41

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v41, v0

    const v43, 0x10203e3

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v41

    if-eqz v41, :cond_13

    const/16 v41, 0x0

    :goto_7
    move-object/from16 v0, v43

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v41, v0

    const v43, 0x10203e4

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Switch;

    .line 4673
    .local v20, "hardKeySwitch":Landroid/widget/Switch;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v41

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4674
    new-instance v41, Lcom/android/server/InputMethodManagerService$9;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$9;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4689
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Switch;->isChecked()Z

    move-result v41

    if-nez v41, :cond_14

    if-eqz v26, :cond_14

    .line 4690
    const v38, 0x1090082

    .line 4695
    .local v38, "textResourceId":I
    :goto_8
    new-instance v7, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move/from16 v0, v38

    move-object/from16 v1, v22

    invoke-direct {v7, v15, v0, v1, v8}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    .line 4698
    .local v7, "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v10, Lcom/android/server/InputMethodManagerService$10;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v7}, Lcom/android/server/InputMethodManagerService$10;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V

    .line 4731
    .local v10, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4733
    if-nez v27, :cond_10

    .line 4734
    new-instance v35, Lcom/android/server/InputMethodManagerService$11;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$11;-><init>(Lcom/android/server/InputMethodManagerService;)V

    .line 4741
    .local v35, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    const v43, 0x10403fa

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4744
    .end local v35    # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    new-instance v43, Lcom/android/server/InputMethodManagerService$12;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/InputMethodManagerService$12;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4762
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Switch;->isChecked()Z

    move-result v41

    if-nez v41, :cond_11

    if-eqz v26, :cond_11

    .line 4763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v41

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 4765
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4768
    if-eqz v27, :cond_15

    .line 4769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v43, 0x837

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 4780
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v43, v0

    or-int/lit8 v43, v43, 0x10

    move/from16 v0, v43

    move-object/from16 v1, v41

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    const-string v43, "Select input method"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUi(Landroid/os/IBinder;II)V

    .line 4784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->show()V

    .line 4786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    new-instance v43, Landroid/content/Intent;

    const-string v44, "ACTION_SWITCHING_DIALOG_SHOWN"

    invoke-direct/range {v43 .. v44}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4788
    monitor-exit v42

    goto/16 :goto_0

    .line 4624
    .end local v4    # "MAX_FONT_SCALE":F
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v10    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v15    # "dialogContext":Landroid/content/Context;
    .end local v16    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "fontScale":F
    .end local v19    # "fontsize":F
    .end local v20    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v25    # "inflater":Landroid/view/LayoutInflater;
    .end local v26    # "isDisplayedHardKeySwitch":Z
    .end local v36    # "settingsContext":Landroid/content/Context;
    .end local v38    # "textResourceId":I
    .end local v39    # "textView":Landroid/widget/TextView;
    .end local v40    # "tv":Landroid/view/View;
    .restart local v30    # "knoxContext":Landroid/content/Context;
    :catch_0
    move-exception v17

    .line 4625
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 4629
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v30    # "knoxContext":Landroid/content/Context;
    :cond_12
    new-instance v36, Landroid/view/ContextThemeWrapper;

    const v41, 0x1030223

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-direct {v0, v11, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v36    # "settingsContext":Landroid/content/Context;
    goto/16 :goto_6

    .line 4668
    .restart local v4    # "MAX_FONT_SCALE":F
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "dialogContext":Landroid/content/Context;
    .restart local v16    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "fontScale":F
    .restart local v19    # "fontsize":F
    .restart local v25    # "inflater":Landroid/view/LayoutInflater;
    .restart local v26    # "isDisplayedHardKeySwitch":Z
    .restart local v39    # "textView":Landroid/widget/TextView;
    .restart local v40    # "tv":Landroid/view/View;
    :cond_13
    const/16 v41, 0x8

    goto/16 :goto_7

    .line 4693
    .restart local v20    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_14
    const v38, 0x1090081

    .restart local v38    # "textResourceId":I
    goto/16 :goto_8

    .line 4773
    .restart local v7    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .restart local v10    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v43, 0x7d8

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_9
.end method

.method private showInputMethodMenuInternal(Z)V
    .locals 0
    .param p1, "showSubtypes"    # Z

    .prologue
    .line 4480
    return-void
.end method

.method private showInputMethodSubtypeMenu()V
    .locals 1

    .prologue
    .line 4451
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V

    .line 4452
    return-void
.end method

.method private startWritingBuddyService()V
    .locals 0

    .prologue
    .line 6100
    .line 6101
    return-void
.end method

.method private switchSpellChecker(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3256
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    .line 3257
    .local v0, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    if-eqz v0, :cond_0

    .line 3258
    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->switchUserForKnox(I)V

    .line 3260
    :cond_0
    return-void
.end method

.method private switchUserLocked(I)V
    .locals 10
    .param p1, "newUserId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1727
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v7, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1728
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentUserId(I)V

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1731
    new-instance v7, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v7, v8, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1732
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 1742
    .local v0, "defaultImiId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1743
    .local v2, "initialUserSwitch":Z
    invoke-direct {p0, v6, v2}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(ZZ)V

    .line 1745
    if-eqz v2, :cond_0

    .line 1746
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, p1, v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1755
    :cond_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Landroid/os/PersonaManager;

    move-result-object v5

    .line 1756
    .local v5, "mPersona":Landroid/os/PersonaManager;
    if-eqz v5, :cond_1

    .line 1757
    invoke-virtual {v5, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    .line 1762
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "access_control_enabled"

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v3, v4

    .line 1764
    .local v3, "isAccessControlEnable":Z
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->setAccessControlEnable(Z)V

    .line 1766
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "access_control_keyboard_block"

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    .line 1769
    .local v4, "isAccessControlKeyboardBlockEnable":Z
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->setisAccessControlKeyboardBlockEnable(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1773
    .end local v3    # "isAccessControlEnable":Z
    .end local v4    # "isAccessControlKeyboardBlockEnable":Z
    :goto_2
    return-void

    :cond_2
    move v3, v6

    .line 1762
    goto :goto_0

    .restart local v3    # "isAccessControlEnable":Z
    :cond_3
    move v4, v6

    .line 1766
    goto :goto_1

    .line 1770
    .end local v3    # "isAccessControlEnable":Z
    :catch_0
    move-exception v1

    .line 1771
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "InputMethodManagerService"

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateSystemUi(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 2663
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2664
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2665
    monitor-exit v1

    .line 2666
    return-void

    .line 2665
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSystemUiLocked(Landroid/os/IBinder;II)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 2670
    invoke-direct/range {p0 .. p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2672
    .local v11, "uid":I
    const-string v12, "InputMethodManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring updateSystemUiLocked due to an invalid token. uid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " token:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    .end local v11    # "uid":I
    :goto_0
    return-void

    .line 2679
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2682
    .local v4, "ident":J
    if-eqz p2, :cond_1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    if-nez v12, :cond_1

    .line 2683
    const/16 p2, 0x0

    .line 2686
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v8

    .line 2687
    .local v8, "needsToShowImeSwitcher":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v12, :cond_2

    .line 2688
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2, v8}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 2691
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 2692
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v6, :cond_5

    if-eqz v8, :cond_5

    .line 2694
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v7

    .line 2695
    .local v7, "isDisplayedHardKeySwitch":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v13, 0x10403f9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2697
    .local v10, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v12}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v12

    if-nez v12, :cond_4

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v13, 0x1040859

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2701
    .local v9, "summary":Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v12, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2704
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v12

    if-nez v12, :cond_3

    .line 2709
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v13, "InputMethodManagerService_Noti"

    const v14, 0x10403f9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v12 .. v16}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2712
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2725
    .end local v7    # "isDisplayedHardKeySwitch":Z
    .end local v9    # "summary":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_3
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2697
    .restart local v7    # "isDisplayedHardKeySwitch":Z
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v12, v6, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_1

    .line 2715
    .end local v7    # "isDisplayedHardKeySwitch":Z
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v12, :cond_3

    .line 2719
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v13, "InputMethodManagerService_Noti"

    const v14, 0x10403f9

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v13, v14, v15}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2721
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2725
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "needsToShowImeSwitcher":Z
    :catchall_0
    move-exception v12

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 2089
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2096
    :goto_0
    return-void

    .line 2092
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2093
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;
    .locals 7
    .param p1, "initial"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2165
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-nez v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3f2

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 2170
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2171
    .local v6, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    if-eqz p1, :cond_3

    .line 2172
    iget-object v0, v6, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7d0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2178
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v0, :cond_1

    .line 2180
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 2182
    :cond_1
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v1, v6, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, v6, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_2

    iget-object v2, v6, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    .line 2175
    :cond_3
    iget-object v0, v6, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7da

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    goto :goto_0
.end method

.method buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V
    .locals 22
    .param p3, "resetDefaultEnabledIme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4335
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 4336
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 4339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 4340
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getDisabledSystemInputMethods()Ljava/lang/String;

    move-result-object v8

    .line 4341
    .local v8, "disabledSysImes":Ljava/lang/String;
    if-nez v8, :cond_0

    const-string v8, ""

    .line 4343
    :cond_0
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.view.InputMethod"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v20, 0x8080

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v17

    .line 4348
    .local v17, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    move-result-object v3

    .line 4350
    .local v3, "additionalSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_7

    .line 4351
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 4352
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .line 4353
    .local v18, "si":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4354
    .local v4, "compName":Landroid/content/ComponentName;
    const-string v19, "android.permission.BIND_INPUT_METHOD"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 4356
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Skipping input method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": it does not require the permission "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4365
    :cond_2
    :try_start_0
    new-instance v14, Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1, v3}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V

    .line 4366
    .local v14, "p":Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4367
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    .line 4368
    .local v12, "id":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/4 v10, 0x1

    .line 4375
    .local v10, "haveHardKeyboard":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 4376
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4390
    .end local v10    # "haveHardKeyboard":Z
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v9

    .line 4391
    .local v9, "e":Ljava/lang/Exception;
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to load input method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4371
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "id":Ljava/lang/String;
    .restart local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 4379
    .restart local v10    # "haveHardKeyboard":Z
    :cond_4
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "com.nttdocomo.android.voiceeditor/.standardcommon.IWnnLanguageSwitcher"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 4380
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 4381
    :cond_5
    const-string v19, "com.sec.android.indiainputmethod/.SamsungIndiaKeypad"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 4382
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 4383
    :cond_6
    const-string v19, "com.samsung.android.svoiceime/.SamsungVoiceReco"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 4384
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 4395
    .end local v4    # "compName":Landroid/content/ComponentName;
    .end local v10    # "haveHardKeyboard":Z
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "p":Landroid/view/inputmethod/InputMethodInfo;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    :cond_7
    if-eqz p3, :cond_9

    .line 4396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 4398
    .local v6, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_9

    .line 4399
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 4404
    .local v13, "imi":Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    .line 4406
    .local v5, "def_ime":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_8

    const-string v19, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 4398
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 4410
    :cond_8
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_4

    .line 4414
    .end local v5    # "def_ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v13    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 4415
    .local v7, "defaultImiId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 4416
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 4417
    const-string v19, "InputMethodManagerService"

    const-string v20, "Default IME is uninstalled. Choose new default IME."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 4419
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 4430
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 4431
    return-void

    .line 4423
    :cond_b
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_5
.end method

.method public changeFullInputMethod(Z)V
    .locals 1
    .param p1, "fullmode"    # Z

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->changeFullInputMethod(Z)V

    .line 420
    return-void
.end method

.method changeKeyboard()V
    .locals 3

    .prologue
    .line 5827
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5829
    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    sget-object v2, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5833
    :cond_0
    :goto_0
    return-void

    .line 5831
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method changeKeyboardForVZWResetSetting()V
    .locals 3

    .prologue
    .line 5839
    :try_start_0
    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5840
    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    sget-object v2, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5844
    :cond_0
    :goto_0
    return-void

    .line 5842
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 1
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    .prologue
    .line 2473
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2474
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2475
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2476
    return-void
.end method

.method clearCurMethodLocked()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2497
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_1

    .line 2498
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2499
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    goto :goto_0

    .line 2502
    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2503
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2504
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2506
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v2, :cond_2

    .line 2507
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v3, "ime"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2509
    :cond_2
    return-void
.end method

.method public dismissAndShowAgainInputMethodPicker()V
    .locals 2

    .prologue
    .line 3601
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3609
    :goto_0
    return-void

    .line 3605
    :cond_0
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "showAgainInputMehtodPicker"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5467
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 5470
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5544
    :goto_0
    return-void

    .line 5479
    :cond_0
    new-instance v8, Landroid/util/PrintWriterPrinter;

    invoke-direct {v8, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 5481
    .local v8, "p":Landroid/util/Printer;
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 5482
    :try_start_0
    const-string v9, "Current Input Method Manager state:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5483
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5484
    .local v0, "N":I
    const-string v9, "  Input Methods:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5485
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 5486
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 5487
    .local v6, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  InputMethod #"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5488
    const-string v9, "    "

    invoke-virtual {v6, v8, v9}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5485
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5490
    .end local v6    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const-string v9, "  Clients:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5491
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 5492
    .local v1, "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Client "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5493
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    client="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5494
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    inputContext="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5495
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    sessionRequested="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5496
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    curSession="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5519
    .end local v0    # "N":I
    .end local v1    # "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 5498
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurMethodId="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5499
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 5500
    .local v2, "client":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurClient="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mCurSeq="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5501
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurFocusedWindow="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5502
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurId="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mHaveConnect="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mBoundToMethod="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5504
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurToken="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5505
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurIntent="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5506
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 5507
    .local v7, "method":Lcom/android/internal/view/IInputMethod;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurMethod="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5508
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mEnabledSession="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5509
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mShowRequested="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mShowExplicitlyRequested="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mShowForced="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mInputShown="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5513
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurUserActionNotificationSequenceNumber="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5515
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSystemReady="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mInteractive="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5516
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mSettingsObserver="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5517
    const-string v9, "  mSwitchingController:"

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5518
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v9, v8}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 5519
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5521
    const-string v9, " "

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5522
    if-eqz v2, :cond_3

    .line 5523
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5525
    :try_start_2
    iget-object v9, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v9}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v9, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5533
    :goto_3
    const-string v9, " "

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5534
    if-eqz v7, :cond_4

    .line 5535
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5537
    :try_start_3
    invoke-interface {v7}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v9, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 5538
    :catch_0
    move-exception v3

    .line 5539
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Input method service dead: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5526
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 5527
    .restart local v3    # "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Input method client dead: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5530
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v9, "No input method client."

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5542
    :cond_4
    const-string v9, "No input method service."

    invoke-interface {v8, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IInterface;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 2112
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2118
    :goto_0
    return-void

    .line 2115
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 2116
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    goto :goto_0
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 2378
    return-void
.end method

.method public getCurrentFocusDisplayID()I
    .locals 1

    .prologue
    .line 6209
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getInputMethodTargetWindowDisplayId()I

    move-result v0

    return v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .prologue
    .line 5137
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5138
    const/4 v0, 0x0

    .line 5141
    :goto_0
    return-object v0

    .line 5140
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5141
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 5142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2052
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2053
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2056
    :goto_0
    return-object v0

    .line 2055
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2056
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 2057
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2068
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2069
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2081
    :goto_0
    return-object v1

    .line 2071
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2073
    if-nez p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2074
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2078
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    if-nez v0, :cond_2

    .line 2079
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 2083
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2076
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_1

    .line 2081
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2035
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: UserHandle.getCallingUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: mSettings.getCurrentUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList: mCurrentFocusedUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2042
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2045
    :goto_0
    return-object v0

    .line 2044
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2045
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_0

    .line 2046
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 1

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 3786
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v6

    .line 3805
    :goto_0
    return-object v5

    .line 3789
    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 3790
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 3792
    .local v1, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3793
    :cond_1
    monitor-exit v7

    move-object v5, v6

    goto :goto_0

    .line 3794
    :cond_2
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3795
    .local v2, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 3797
    :cond_3
    :try_start_1
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3798
    .local v3, "lastSubtypeHash":I
    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v4

    .line 3800
    .local v4, "lastSubtypeId":I
    if-ltz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-lt v4, v5, :cond_5

    .line 3801
    :cond_4
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 3803
    :cond_5
    :try_start_3
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    monitor-exit v7

    goto :goto_0

    .line 3807
    .end local v1    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "lastSubtypeHash":I
    .end local v4    # "lastSubtypeId":I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 3804
    .restart local v1    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v0

    .line 3805
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, v6

    goto :goto_0
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .locals 8

    .prologue
    .line 5199
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 5200
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5201
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 5205
    const-string/jumbo v6, "voice"

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 5208
    .local v3, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v3, :cond_0

    .line 5209
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5210
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5212
    :cond_0
    monitor-exit v7

    .line 5220
    .end local v3    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_0
    return-object v4

    .line 5214
    :cond_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 5215
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5216
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 5217
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5221
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5220
    .restart local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getWACOMPen()Z
    .locals 1

    .prologue
    .line 423
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    return v0
.end method

.method getsystemimeKnox(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6108
    const/4 v0, 0x0

    .line 6109
    .local v0, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6111
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 6112
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v4}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6113
    move-object v0, v4

    goto :goto_0

    .line 6122
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 6123
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6127
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6130
    return-object v0

    .line 6127
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3968
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    move v12, v11

    .line 4211
    :cond_0
    :goto_0
    return v12

    .line 3971
    :sswitch_0
    iget v10, p1, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_0

    .line 3985
    const-string v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown subtype picker mode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 3986
    goto :goto_0

    .line 3976
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 3988
    .local v9, "showAuxSubtypes":Z
    :goto_1
    invoke-direct {p0, v9}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V

    goto :goto_0

    .line 3979
    .end local v9    # "showAuxSubtypes":Z
    :pswitch_1
    const/4 v9, 0x1

    .line 3980
    .restart local v9    # "showAuxSubtypes":Z
    goto :goto_1

    .line 3982
    .end local v9    # "showAuxSubtypes":Z
    :pswitch_2
    const/4 v9, 0x0

    .line 3983
    .restart local v9    # "showAuxSubtypes":Z
    goto :goto_1

    .line 3993
    .end local v9    # "showAuxSubtypes":Z
    :sswitch_1
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3994
    const-string v10, "InputMethodManagerService"

    const-string v11, "MSG_SHOW_AGAIN_IM_PICKER"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 3999
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showInputMethodSubtypeMenu()V

    goto :goto_0

    .line 4005
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4006
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 4007
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 4011
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    goto :goto_0

    .line 4018
    :sswitch_4
    :try_start_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v10}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4019
    :catch_0
    move-exception v10

    goto :goto_0

    .line 4024
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4026
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_f

    .line 4029
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 4032
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4036
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v13, p1, Landroid/os/Message;->arg1:I

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/ResultReceiver;

    invoke-interface {v10, v13, v11}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_e

    .line 4039
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4044
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4049
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->updateWacomState(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_d

    .line 4052
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4061
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_8
    :try_start_4
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->updateFloatingState(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4062
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 4068
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4072
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    const/4 v13, 0x0

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/ResultReceiver;

    invoke-interface {v10, v13, v11}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_c

    .line 4075
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4083
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_a
    :try_start_6
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->minimizeSoftInput(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 4084
    :catch_2
    move-exception v4

    .line 4085
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4092
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_b
    :try_start_7
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v10}, Lcom/android/internal/view/IInputMethod;->undoMinimizeSoftInput()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 4093
    :catch_3
    move-exception v4

    .line 4094
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4100
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4103
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethod;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/IBinder;

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_b

    .line 4106
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4109
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4110
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/view/IInputMethod;

    .line 4111
    .local v5, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputChannel;

    .line 4113
    .local v1, "channel":Landroid/view/InputChannel;
    :try_start_9
    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v5, v1, v10}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4118
    if-eqz v1, :cond_1

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4119
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 4122
    :cond_1
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4114
    :catch_4
    move-exception v10

    .line 4118
    if-eqz v1, :cond_1

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4119
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    goto :goto_7

    .line 4118
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_2

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4119
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    :cond_2
    throw v10

    .line 4128
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "channel":Landroid/view/InputChannel;
    .end local v5    # "method":Lcom/android/internal/view/IInputMethod;
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4130
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 4131
    .local v8, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 4132
    iget-object v13, v8, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputContext;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v13, v10, v11}, Lcom/android/internal/view/IInputMethod;->startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    .line 4136
    .end local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_8
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4139
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4141
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 4142
    .restart local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 4143
    iget-object v13, v8, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputContext;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v13, v10, v11}, Lcom/android/internal/view/IInputMethod;->restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9

    .line 4147
    .end local v8    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_9
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4154
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_10
    :try_start_c
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/view/IInputMethodClient;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    .line 4155
    :catch_5
    move-exception v10

    goto/16 :goto_0

    .line 4160
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4161
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputMethodClient;

    .line 4162
    .local v2, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/view/InputBindResult;

    .line 4164
    .local v6, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_d
    invoke-interface {v2, v6}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 4170
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v10, :cond_3

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4171
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    .line 4174
    :cond_3
    :goto_a
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 4165
    :catch_6
    move-exception v4

    .line 4166
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Client died receiving input method "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 4170
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v10, :cond_3

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4171
    iget-object v10, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    goto :goto_a

    .line 4170
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v10

    iget-object v11, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v11, :cond_4

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4171
    iget-object v11, v6, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    :cond_4
    throw v10

    .line 4179
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v6    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_12
    :try_start_f
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v13, p1, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_5

    move v11, v12

    :cond_5
    invoke-interface {v10, v11}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_0

    .line 4180
    :catch_7
    move-exception v4

    .line 4181
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v11, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " uid "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v10, v10, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4187
    .end local v4    # "e":Landroid/os/RemoteException;
    :sswitch_13
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_6

    move v10, v12

    :goto_b
    invoke-direct {p0, v10}, Lcom/android/server/InputMethodManagerService;->handleSetInteractive(Z)V

    goto/16 :goto_0

    :cond_6
    move v10, v11

    goto :goto_b

    .line 4190
    :sswitch_14
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 4191
    .local v7, "sequenceNumber":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4193
    .local v3, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :try_start_10
    iget-object v10, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v10, v7}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    .line 4194
    :catch_8
    move-exception v4

    .line 4195
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ") notification to pid "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " uid "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4204
    .end local v3    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "sequenceNumber":I
    :sswitch_15
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v12, :cond_7

    move v11, v12

    :cond_7
    invoke-direct {p0, v11}, Lcom/android/server/InputMethodManagerService;->setSpellCheckerEnabled(Z)V

    goto/16 :goto_0

    .line 4208
    :sswitch_16
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    iget v13, p1, Landroid/os/Message;->arg1:I

    if-ne v13, v12, :cond_8

    move v11, v12

    :cond_8
    invoke-virtual {v10, v11}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    goto/16 :goto_0

    .line 4145
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :catch_9
    move-exception v10

    goto/16 :goto_9

    .line 4134
    :catch_a
    move-exception v10

    goto/16 :goto_8

    .line 4104
    :catch_b
    move-exception v10

    goto/16 :goto_6

    .line 4073
    :catch_c
    move-exception v10

    goto/16 :goto_5

    .line 4050
    :catch_d
    move-exception v10

    goto/16 :goto_4

    .line 4037
    :catch_e
    move-exception v10

    goto/16 :goto_3

    .line 4027
    :catch_f
    move-exception v10

    goto/16 :goto_2

    .line 3968
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x3f2 -> :sswitch_5
        0x3fc -> :sswitch_6
        0x3fd -> :sswitch_7
        0x3fe -> :sswitch_8
        0x3ff -> :sswitch_1
        0x400 -> :sswitch_a
        0x401 -> :sswitch_b
        0x406 -> :sswitch_9
        0x410 -> :sswitch_c
        0x41a -> :sswitch_d
        0x7d0 -> :sswitch_e
        0x7da -> :sswitch_f
        0xbb8 -> :sswitch_10
        0xbc2 -> :sswitch_11
        0xbcc -> :sswitch_12
        0xbd6 -> :sswitch_13
        0xbe0 -> :sswitch_14
        0xbf4 -> :sswitch_15
        0xfa0 -> :sswitch_16
    .end sparse-switch

    .line 3971
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideCurrentInput(ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 3142
    const/4 v0, 0x0

    return v0
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 10
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3149
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/InputMethodManagerService$7;

    invoke-direct {v6, p0}, Lcom/android/server/InputMethodManagerService$7;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3158
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3162
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v6, :cond_1

    :cond_0
    move v1, v4

    .line 3243
    :goto_0
    return v1

    .line 3167
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v6, :cond_2

    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_2

    move v1, v4

    .line 3169
    goto :goto_0

    .line 3180
    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    :cond_3
    move v2, v5

    .line 3183
    .local v2, "shouldHideSoftInput":Z
    :goto_1
    if-eqz v2, :cond_7

    .line 3188
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v8, 0x406

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v7, v8, v9, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3190
    const/4 v1, 0x1

    .line 3194
    .local v1, "res":Z
    :goto_2
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v6, :cond_4

    .line 3196
    :try_start_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3200
    :goto_3
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 3202
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 3203
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 3204
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3205
    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 3208
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v6, v5, :cond_8

    .line 3209
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardPerflockRelease()V

    .line 3210
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    .line 3241
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsToDisplayIfNeeded(ZZ)V

    goto :goto_0

    .end local v1    # "res":Z
    .end local v2    # "shouldHideSoftInput":Z
    :cond_6
    move v2, v4

    .line 3180
    goto :goto_1

    .line 3192
    .restart local v2    # "shouldHideSoftInput":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_2

    .line 3197
    :catch_0
    move-exception v0

    .line 3198
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "InputMethodManagerService"

    const-string/jumbo v7, "hideCurrentInputLocked: unbindService is failed due to IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3219
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_8
    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 3220
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v4}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    goto :goto_4
.end method

.method hideInputMethodMenu()V
    .locals 2

    .prologue
    .line 4898
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4899
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 4900
    monitor-exit v1

    .line 4901
    return-void

    .line 4900
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hideInputMethodMenuLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4906
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4907
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4908
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4911
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 4912
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4913
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4914
    return-void
.end method

.method hideKeyboardDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5817
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 5818
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5819
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    .line 5822
    :cond_0
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    .line 5823
    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 3905
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3922
    :goto_0
    return-void

    .line 3908
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3909
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3910
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3911
    .local v2, "uid":I
    const-string v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring hideInputMethod due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    monitor-exit v4

    goto :goto_0

    .line 3921
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3915
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 3917
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3919
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3921
    monitor-exit v4

    goto :goto_0

    .line 3919
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 8
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 3074
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3101
    :goto_0
    return v4

    .line 3077
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3078
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3080
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3081
    :try_start_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v6, :cond_1

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v6}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    if-eq v6, v7, :cond_2

    .line 3087
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 3090
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3101
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3092
    :catch_0
    move-exception v0

    .line 3093
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3101
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3098
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_5
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3101
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3099
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3101
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isAccessoryKeyboard()I
    .locals 1

    .prologue
    .line 5988
    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method public isCurrentInputMethodAsSamsungKeyboard()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6035
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 6037
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.samsung.inputmethod"

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6039
    const-string v3, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 6085
    :cond_1
    :goto_0
    return v1

    .line 6045
    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6046
    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 6047
    goto :goto_0

    .line 6052
    :cond_3
    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 6053
    goto :goto_0
.end method

.method public isInputMethodShown()Z
    .locals 2

    .prologue
    .line 3617
    const/4 v0, 0x0

    .line 3619
    .local v0, "isShown":Z
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->refreshImeWindowVis()V

    .line 3620
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 3621
    const/4 v0, 0x1

    .line 3624
    :cond_0
    return v0
.end method

.method public isKeyboardBlockedForInteractionControl()Z
    .locals 1

    .prologue
    .line 6306
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "height"    # I

    .prologue
    .line 3110
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_0

    .line 3111
    const/4 v0, 0x0

    .line 3115
    :goto_0
    return v0

    .line 3113
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x400

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 2747
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2774
    :goto_0
    return v6

    .line 2750
    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 2751
    :try_start_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v8, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 2753
    .local v5, "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_3

    .line 2754
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v4

    .line 2755
    .local v4, "suggestions":[Ljava/lang/String;
    if-ltz p3, :cond_1

    array-length v8, v4

    if-lt p3, v8, :cond_2

    :cond_1
    monitor-exit v7

    goto :goto_0

    .line 2773
    .end local v4    # "suggestions":[Ljava/lang/String;
    .end local v5    # "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2756
    .restart local v4    # "suggestions":[Ljava/lang/String;
    .restart local v5    # "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v0

    .line 2757
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2760
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2761
    const-string v6, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2762
    const-string v6, "before"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2763
    const-string v6, "after"

    aget-object v8, v4, p3

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2764
    const-string/jumbo v6, "hashcode"

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2765
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 2767
    .local v2, "ident":J
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2769
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2771
    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_0

    .line 2769
    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2773
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ident":J
    .end local v4    # "suggestions":[Ljava/lang/String;
    :cond_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyUserAction(I)V
    .locals 4
    .param p1, "sequenceNumber"    # I

    .prologue
    .line 3858
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3859
    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    if-eq v1, p1, :cond_0

    .line 3865
    monitor-exit v2

    .line 3872
    :goto_0
    return-void

    .line 3867
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3868
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1

    .line 3869
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3871
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2382
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2383
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2384
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2385
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 2386
    const-string v0, "InputMethodManagerService"

    const-string v2, "Service connected without a token!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    .line 2388
    monitor-exit v1

    .line 2399
    :goto_0
    return-void

    .line 2391
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x410

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2393
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    .line 2394
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2395
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2398
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2513
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2516
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2518
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 2522
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2524
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    .line 2525
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbb8

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2529
    :cond_0
    monitor-exit v1

    .line 2530
    return-void

    .line 2529
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .locals 6
    .param p1, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p2, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .prologue
    .line 2403
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2404
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 2406
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    .line 2407
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2408
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v3, Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/android/server/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2410
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 2411
    .local v0, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v1, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    .line 2412
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbc2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2415
    :cond_0
    monitor-exit v2

    .line 2422
    .end local v0    # "res":Lcom/android/internal/view/InputBindResult;
    :goto_0
    return-void

    .line 2418
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2421
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    goto :goto_0

    .line 2418
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1805
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1806
    :catch_0
    move-exception v0

    .line 1809
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 1810
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1812
    :cond_0
    throw v0
.end method

.method registerSamsungAdditionalReceviers()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 5557
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 5558
    .local v6, "USBkeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5559
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string v10, "android.permission.MANAGE_USB"

    invoke-virtual {v8, v9, v6, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5562
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5563
    .local v0, "BTKeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5564
    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5565
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5568
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 5569
    .local v4, "RangeModeFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5570
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5574
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 5575
    .local v1, "CarModeFilter":Landroid/content/IntentFilter;
    const-string v8, "com.samsung.android.app.mirrorlink.sip"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5576
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$CarModeReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$CarModeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5580
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 5581
    .local v5, "SubtypeFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.inputmethod.Subtype"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5582
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5586
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 5587
    .local v3, "PSSkeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5588
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string v10, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual {v8, v9, v3, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5589
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 5590
    .local v2, "KMSkeyboardFilter":Landroid/content/IntentFilter;
    const-string v8, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5591
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string v10, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual {v8, v9, v2, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5594
    const-string v8, "VZW"

    const-string/jumbo v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5595
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 5596
    .local v7, "VZWResetSettingFilter":Landroid/content/IntentFilter;
    const-string v8, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5597
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5600
    .end local v7    # "VZWResetSettingFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "universal_switch_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5606
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "mobile_keyboard"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5611
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5613
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_keyboard_block"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-virtual {v8, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5621
    return-void
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 6
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    .prologue
    .line 2731
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2743
    :goto_0
    return-void

    .line 2734
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2735
    :try_start_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2736
    .local v0, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 2737
    aget-object v2, p1, v1

    .line 2738
    .local v2, "ss":Landroid/text/style/SuggestionSpan;
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2739
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2736
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2742
    .end local v2    # "ss":Landroid/text/style/SuggestionSpan;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 2100
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2109
    :goto_0
    return-void

    .line 2103
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2105
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v0, :cond_1

    .line 2106
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2108
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 9
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    .prologue
    const/4 v5, 0x1

    .line 2462
    iget-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v1, :cond_0

    .line 2464
    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2465
    .local v0, "channels":[Landroid/view/InputChannel;
    iput-boolean v5, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2466
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x41a

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    aget-object v5, v0, v5

    new-instance v6, Lcom/android/server/InputMethodManagerService$MethodCallback;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2470
    .end local v0    # "channels":[Landroid/view/InputChannel;
    :cond_0
    return-void
.end method

.method public setAccessControlEnable(Z)V
    .locals 0
    .param p1, "enabledChanged"    # Z

    .prologue
    .line 6297
    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    .line 6298
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 11
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 3812
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3845
    :cond_0
    :goto_0
    return-void

    .line 3817
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_0

    array-length v7, p2

    if-eqz v7, :cond_0

    .line 3818
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3819
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 3820
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v4, :cond_2

    monitor-exit v8

    goto :goto_0

    .line 3844
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3823
    .restart local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-interface {v7, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 3828
    .local v5, "packageInfos":[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 3829
    :try_start_2
    array-length v6, v5

    .line 3830
    .local v6, "packageNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 3831
    aget-object v7, v5, v1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3832
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    invoke-virtual {v7, v4, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 3835
    .local v2, "ident":J
    :try_start_3
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3838
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3840
    monitor-exit v8

    goto :goto_0

    .line 3824
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v5    # "packageInfos":[Ljava/lang/String;
    .end local v6    # "packageNum":I
    :catch_0
    move-exception v0

    .line 3825
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "InputMethodManagerService"

    const-string v9, "Failed to get package infos"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    monitor-exit v8

    goto :goto_0

    .line 3838
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    .restart local v2    # "ident":J
    .restart local v5    # "packageInfos":[Ljava/lang/String;
    .restart local v6    # "packageNum":I
    :catchall_1
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 3830
    .end local v2    # "ident":J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3844
    .end local v1    # "i":I
    .end local v6    # "packageNum":I
    :cond_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 6
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v2, 0x0

    .line 5227
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5239
    :goto_0
    return v2

    .line 5230
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5231
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5232
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 5233
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 5234
    .local v1, "subtypeId":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 5235
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 5236
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 5240
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "subtypeId":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5239
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method setDefaultIMEForKeyboard()V
    .locals 6

    .prologue
    .line 5895
    sget-object v4, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5912
    :cond_0
    return-void

    .line 5897
    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    .line 5898
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 5899
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 5900
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5901
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5904
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5906
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    .line 5900
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method setDefaultIMEforChineseKeyboard()V
    .locals 1

    .prologue
    .line 5919
    const-string v0, "com.samsung.inputmethod/.SamsungIME"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    .line 5920
    return-void
.end method

.method setDefaultIMEforJapaneseKeyboard()V
    .locals 1

    .prologue
    .line 5915
    const-string v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    .line 5916
    return-void
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/InputMethodManagerService$SessionState;

    .prologue
    .line 3946
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_1

    .line 3947
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_0

    .line 3950
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3954
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3955
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_1

    .line 3958
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3963
    :cond_1
    :goto_1
    return-void

    .line 3959
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3951
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 2648
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2650
    .local v0, "uid":I
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring setImeWindowStatus due to an invalid token. uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    .end local v0    # "uid":I
    :goto_0
    return-void

    .line 2655
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2656
    :try_start_0
    iput p2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 2657
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 2658
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2659
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 3630
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3634
    :goto_0
    return-void

    .line 3633
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 3638
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3650
    :goto_0
    return-void

    .line 3641
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3642
    if-eqz p3, :cond_1

    .line 3643
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3649
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3647
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 4921
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4922
    const/4 v2, 0x0

    .line 4937
    :goto_0
    return v2

    .line 4924
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4925
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 4928
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4939
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4933
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4935
    .local v0, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 4937
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4944
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4945
    .local v3, "imm":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_0

    .line 4946
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4949
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v1

    .line 4952
    .local v1, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-eqz p2, :cond_3

    .line 4953
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 4954
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 4978
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_0
    return v6

    .line 4960
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, p1, v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    move v6, v8

    .line 4962
    goto :goto_0

    .line 4964
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4965
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4968
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 4969
    .local v5, "selId":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v6

    if-nez v6, :cond_4

    .line 4970
    const-string v6, "InputMethodManagerService"

    const-string v8, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4971
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    :cond_4
    move v6, v7

    .line 4974
    goto :goto_0

    .end local v5    # "selId":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 4978
    goto :goto_0
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .prologue
    const/4 v10, 0x1

    .line 2858
    iget-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 2859
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    .line 2862
    :cond_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 2863
    .local v1, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_1

    .line 2864
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2867
    :cond_1
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v8, :cond_3

    .line 2870
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getFixedImeApps()Landroid/util/ArraySet;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v9, v9, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2936
    :cond_2
    :goto_0
    return-void

    .line 2876
    :cond_3
    if-eqz p1, :cond_7

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2877
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    .line 2878
    .local v7, "subtypeCount":I
    if-lez v7, :cond_2

    .line 2881
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2883
    .local v6, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_5

    if-ge p2, v7, :cond_5

    .line 2884
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 2890
    .local v5, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    if-eqz v5, :cond_4

    if-nez v6, :cond_6

    .line 2891
    :cond_4
    const-string v8, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal subtype state: old subtype = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new subtype = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2888
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .restart local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_1

    .line 2895
    :cond_6
    if-eq v5, v6, :cond_2

    .line 2896
    invoke-direct {p0, v1, p2, v10}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2897
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v8, :cond_2

    .line 2899
    :try_start_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v9, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v10, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2900
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v8, v5}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2901
    :catch_0
    move-exception v0

    .line 2902
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "InputMethodManagerService"

    const-string v9, "Failed to call changeInputMethodSubtype"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2910
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeCount":I
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2914
    .local v2, "ident":J
    const/4 v8, 0x0

    :try_start_1
    invoke-direct {p0, v1, p2, v8}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2918
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2920
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2921
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2922
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2923
    const-string/jumbo v8, "input_method_id"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2924
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2926
    const-string v8, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v8, :cond_9

    .line 2927
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v10, 0xbf4

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2932
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2934
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public setScreenBrightness(I)V
    .locals 0
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5985
    return-void
.end method

.method public setWACOMPen(Z)V
    .locals 0
    .param p1, "bValue"    # Z

    .prologue
    .line 411
    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    .line 412
    return-void
.end method

.method public setisAccessControlKeyboardBlockEnable(Z)V
    .locals 0
    .param p1, "enabledChanged"    # Z

    .prologue
    .line 6301
    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 6302
    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 3765
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 3780
    :goto_0
    return v2

    .line 3768
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3769
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3771
    .local v1, "uid":I
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring shouldOfferSwitchingToNextInputMethod due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 3775
    .end local v1    # "uid":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5, v6, v2, v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    .line 3777
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_2

    .line 3778
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 3780
    :cond_2
    const/4 v2, 0x1

    monitor-exit v4

    goto :goto_0

    .line 3781
    .end local v0    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 11
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 2974
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->isKeyboardBlockedForInteractionControl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2975
    const-string v3, "InputMethodManagerService"

    const-string v4, "Interaction Control Keyboard block is enabled, so not show keyboard"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 3068
    :cond_0
    :goto_0
    return v1

    .line 2980
    :cond_1
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2981
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_2

    .line 2982
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2984
    :cond_2
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_3

    .line 2985
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2986
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 2991
    :cond_3
    const/4 v0, 0x0

    .line 2992
    .local v0, "currentShowExplicitlyRequested":Z
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    if-eqz v3, :cond_4

    .line 2993
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2994
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2998
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_5

    move v1, v2

    .line 2999
    goto :goto_0

    .line 3002
    :cond_5
    const/4 v1, 0x0

    .line 3003
    .local v1, "res":Z
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_9

    .line 3005
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x3fc

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3011
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    if-eqz v3, :cond_6

    .line 3012
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3013
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    .line 3017
    :cond_6
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 3018
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-nez v2, :cond_7

    .line 3019
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v4, 0xc000001

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3023
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 3027
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->getKeyboardState()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_8

    .line 3028
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->keyboardPerflockAcquire()V

    .line 3029
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->kb:Lcom/android/server/InputMethodManagerService$KeyboardDetect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v10}, Lcom/android/server/InputMethodManagerService$KeyboardDetect;->setKeyboardState(I)V

    .line 3032
    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    .line 3033
    :cond_9
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 3039
    const/16 v3, 0x7d00

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v10

    const/4 v2, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3041
    const-string v2, "InputMethodManagerService"

    const-string v3, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3043
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v3, 0x40000001    # 2.0000002f

    invoke-direct {p0, v2, p0, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 3655
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3666
    :goto_0
    return-void

    .line 3658
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3659
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 3661
    :cond_1
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodAndSubtypeEnablerFromClient of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3665
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .prologue
    .line 3569
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3597
    :goto_0
    return-void

    .line 3575
    :cond_0
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 3576
    .local v0, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3577
    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedInputMethodRestrictionState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3578
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input method restricted by Knox Customization"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3585
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3586
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v1, v3, :cond_3

    .line 3588
    :cond_2
    const-string v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    :cond_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3596
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method showKeyboardNotiDailog(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 5780
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040855

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$14;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/server/InputMethodManagerService$13;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$13;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    .line 5801
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5802
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1040854

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5807
    :goto_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    .line 5808
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 5810
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5812
    return-void

    .line 5804
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1040851

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 3926
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3943
    :goto_0
    return-void

    .line 3929
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3930
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3932
    .local v2, "uid":I
    const-string v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring showMySoftInput due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    monitor-exit v4

    goto :goto_0

    .line 3942
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3936
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 3938
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3940
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3942
    monitor-exit v4

    goto :goto_0

    .line 3940
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 9
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 2941
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2968
    :goto_0
    return v4

    .line 2944
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2945
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2947
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2948
    :try_start_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v6, :cond_2

    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v6}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 2965
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2955
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2956
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring showSoftInput of uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2957
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2959
    :catch_0
    move-exception v0

    .line 2960
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2966
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2968
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public showtoastkeyboardconnected()V
    .locals 5

    .prologue
    .line 5968
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5969
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 5971
    .local v1, "show_duration":I
    sget v3, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 5972
    const v2, 0x1040856

    .line 5977
    .local v2, "toast_msg_resId":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5979
    return-void

    .line 5974
    .end local v2    # "toast_msg_resId":I
    :cond_0
    const v2, 0x1040857

    .restart local v2    # "toast_msg_resId":I
    goto :goto_0
.end method

.method public startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    .line 2363
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2364
    const/4 v2, 0x0

    .line 2371
    :goto_0
    return-object v2

    .line 2366
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2367
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2369
    .local v0, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInputLocked(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 2371
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    goto :goto_0

    .line 2373
    .end local v0    # "ident":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2371
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 2313
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 2357
    :goto_0
    return-object v0

    .line 2317
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 2320
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto :goto_0

    .line 2324
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 2325
    .local v6, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v6, :cond_2

    .line 2326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2329
    :cond_2
    invoke-virtual {p0, v7, v8}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    .line 2331
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2332
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2333
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_label"

    const v3, 0x1040441

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2335
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_intent"

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2337
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x60000005

    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 2341
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 2342
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2343
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2345
    :try_start_0
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding window token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v3, 0x7db

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2350
    :goto_1
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 2353
    :cond_3
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2354
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure connecting to input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2357
    goto/16 :goto_0

    .line 2348
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method startInputLocked(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    .line 2190
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2191
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 2231
    :goto_0
    return-object v1

    .line 2194
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2195
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v0, :cond_1

    .line 2196
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2201
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2207
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting input on non-focused client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v1, v0, :cond_2

    .line 2222
    const-string v1, "InputMethodManagerService"

    const-string v2, " Starting startInputUncheckedLocked "

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2226
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2228
    :catch_0
    move-exception v1

    .line 2231
    :cond_3
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    goto/16 :goto_0
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 10
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 2308
    :goto_0
    return-object v0

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    iget-object v2, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2243
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    goto :goto_0

    .line 2248
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v0, p1, :cond_2

    .line 2250
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked()V

    .line 2258
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_2

    .line 2259
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2265
    :cond_2
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 2266
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 2267
    :cond_3
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2268
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 2269
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2272
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2273
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_6

    .line 2276
    and-int/lit16 v0, p4, 0x100

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    goto/16 :goto_0

    .line 2259
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 2276
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 2279
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_9

    .line 2280
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_7

    .line 2283
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2284
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 2286
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    .line 2295
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 2298
    :cond_8
    const/16 v0, 0x7d00

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2305
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 2306
    :catch_0
    move-exception v6

    .line 2307
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "InputMethodManagerService"

    const-string v1, "Unexpected exception."

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2308
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 22
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3670
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v17

    if-nez v17, :cond_0

    .line 3671
    const/16 v17, 0x0

    .line 3735
    :goto_0
    return v17

    .line 3673
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 3674
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v11

    .line 3676
    .local v11, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    .line 3677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 3681
    .local v12, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    const/16 v16, 0x0

    .line 3682
    .local v16, "targetLastImiId":Ljava/lang/String;
    const/4 v15, -0x1

    .line 3683
    .local v15, "subtypeId":I
    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    .line 3684
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3685
    .local v9, "imiIdIsSame":Z
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3686
    .local v13, "lastSubtypeHash":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    const/4 v5, -0x1

    .line 3690
    .local v5, "currentSubtypeHash":I
    :goto_2
    if-eqz v9, :cond_1

    if-eq v13, v5, :cond_2

    .line 3691
    :cond_1
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16    # "targetLastImiId":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 3692
    .restart local v16    # "targetLastImiId":Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    .line 3696
    .end local v5    # "currentSubtypeHash":I
    .end local v9    # "imiIdIsSame":Z
    .end local v13    # "lastSubtypeHash":I
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 3701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v6

    .line 3702
    .local v6, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v6, :cond_3

    .line 3703
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 3704
    .local v4, "N":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3707
    .local v14, "locale":Ljava/lang/String;
    :goto_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v4, :cond_3

    .line 3708
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 3709
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v17

    if-lez v17, :cond_7

    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v19

    const-string/jumbo v20, "keyboard"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v14, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 3714
    .local v10, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v10, :cond_7

    .line 3715
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v16

    .line 3716
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    .line 3718
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3727
    .end local v4    # "N":I
    .end local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v10    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v14    # "locale":Ljava/lang/String;
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 3732
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3733
    const/16 v17, 0x1

    monitor-exit v18

    goto/16 :goto_0

    .line 3737
    .end local v11    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v15    # "subtypeId":I
    .end local v16    # "targetLastImiId":Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 3679
    .restart local v11    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto/16 :goto_1

    .line 3686
    .restart local v9    # "imiIdIsSame":Z
    .restart local v13    # "lastSubtypeHash":I
    .restart local v15    # "subtypeId":I
    .restart local v16    # "targetLastImiId":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    goto/16 :goto_2

    .line 3704
    .end local v9    # "imiIdIsSame":Z
    .end local v13    # "lastSubtypeHash":I
    .restart local v4    # "N":I
    .restart local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 3707
    .restart local v7    # "i":I
    .restart local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v14    # "locale":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3735
    .end local v4    # "N":I
    .end local v6    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "locale":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3742
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 3759
    :goto_0
    return v2

    .line 3745
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3746
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3748
    .local v1, "uid":I
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring switchToNextInputMethod due to an invalid token. uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 3752
    .end local v1    # "uid":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5, p2, v2, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    .line 3754
    .local v0, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v0, :cond_2

    .line 3755
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 3757
    :cond_2
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3759
    const/4 v2, 0x1

    monitor-exit v4

    goto :goto_0

    .line 3760
    .end local v0    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 8
    .param p1, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1817
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1821
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v2, :cond_2

    .line 1822
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    .line 1823
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1825
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1827
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1828
    const-string/jumbo v2, "ime"

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1829
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 1830
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v6, 0x112000a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1832
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v2, :cond_0

    .line 1833
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowManagerService;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V

    .line 1836
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 1838
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v2, :cond_1

    .line 1839
    const-string v2, "InputMethodManagerService"

    const-string v3, "Reset the default IME as \"Resource\" is ready here."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetStateIfCurrentLocaleChangedLocked()V

    .line 1841
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1845
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;

    .line 1858
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getDeviceThemeFromSystemProperties()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    .line 1860
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Sip_SupportKcmForHwKeyboard"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    .line 1865
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Landroid/os/PersonaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1867
    .local v1, "mPersona":Landroid/os/PersonaManager;
    if-eqz v1, :cond_2

    .line 1868
    :try_start_1
    new-instance v2, Lcom/android/server/InputMethodManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 1904
    return-void

    :cond_3
    move v2, v4

    .line 1836
    goto :goto_0

    .line 1898
    .restart local v1    # "mPersona":Landroid/os/PersonaManager;
    :catch_0
    move-exception v0

    .line 1899
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1903
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method unbindCurrentClientLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2121
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    .line 2124
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v0, :cond_0

    .line 2125
    iput-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 2126
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2132
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbcc

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2134
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbb8

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2136
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2139
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 2141
    :cond_1
    return-void
.end method

.method unbindCurrentMethodLocked(ZZ)V
    .locals 4
    .param p1, "resetCurrentMethodAndClient"    # Z
    .param p2, "savePosition"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2425
    if-eqz p1, :cond_0

    .line 2426
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2429
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v0, :cond_1

    .line 2430
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2431
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 2434
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_2

    .line 2435
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2436
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 2439
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    .line 2442
    :try_start_0
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 2444
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->saveLastInputMethodWindowForTransition()V

    .line 2446
    :cond_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V

    .line 2447
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2450
    :goto_0
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2453
    :cond_4
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2454
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2456
    if-eqz p1, :cond_5

    .line 2457
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked()V

    .line 2459
    :cond_5
    return-void

    .line 2448
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public undoMinimizeSoftInput()V
    .locals 5

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_0

    .line 3128
    :goto_0
    return-void

    .line 3126
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x401

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    goto :goto_0
.end method

.method updateCurrentProfileIds()V
    .locals 5

    .prologue
    .line 1776
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1778
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [I

    .line 1779
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1780
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v0, v1

    .line 1779
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1782
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1783
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .locals 0
    .param p1, "enabledMayChange"    # Z

    .prologue
    .line 2778
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 2779
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    .line 2780
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .locals 14
    .param p1, "enabledMayChange"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2783
    if-eqz p1, :cond_1

    .line 2784
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v8

    .line 2785
    .local v8, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 2788
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 2790
    .local v11, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x8000

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 2793
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_0

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2799
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2785
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2812
    .end local v8    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v9    # "i":I
    .end local v11    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v10

    .line 2814
    .local v10, "id":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2815
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v10

    .line 2817
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2819
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2824
    :goto_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2833
    :goto_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 2835
    return-void

    .line 2820
    :catch_0
    move-exception v7

    .line 2821
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown input method from prefs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2822
    invoke-virtual {p0, v13, v12}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    goto :goto_2

    .line 2827
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-virtual {p0, v13, v12}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    goto :goto_3

    .line 2804
    .end local v10    # "id":Ljava/lang/String;
    .restart local v8    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v9    # "i":I
    .restart local v11    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public updateKeyboardFromSettingsLocked()V
    .locals 4

    .prologue
    .line 2839
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    .line 2840
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2843
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v2, 0x10203e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 2847
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HARDWARE_KEYBOARD] mShowImeWithHardKeyboard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2852
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 2534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2536
    .local v8, "ident":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2537
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2538
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2539
    .local v10, "uid":I
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring updateStatusIcon due to an invalid token. uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2569
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2571
    .end local v10    # "uid":I
    :goto_0
    return-void

    .line 2543
    :cond_0
    if-nez p3, :cond_2

    .line 2545
    :try_start_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1

    .line 2546
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v1, "ime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2567
    :cond_1
    :goto_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2569
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2548
    :cond_2
    if-eqz p2, :cond_1

    .line 2550
    const/4 v6, 0x0

    .line 2553
    .local v6, "contentDescription":Ljava/lang/CharSequence;
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2554
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-interface {v0, p2, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 2560
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1

    .line 2561
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v1, "ime"

    const/4 v4, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2564
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const-string/jumbo v1, "ime"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2567
    .end local v6    # "contentDescription":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2569
    :catchall_1
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2561
    .restart local v6    # "contentDescription":Ljava/lang/CharSequence;
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 2557
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    .locals 32
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "controlFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .prologue
    .line 3268
    const/16 v21, 0x1

    .line 3271
    .local v21, "isNeedSetCurrentInputMethod":Z
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    .line 3272
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 3274
    .local v9, "destinationUserId":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    const/16 v27, 0x64

    move/from16 v0, v27

    if-lt v9, v0, :cond_0

    const/16 v27, 0xc8

    move/from16 v0, v27

    if-gt v9, v0, :cond_0

    .line 3275
    new-instance v13, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v13, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    .line 3276
    .local v13, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/RestrictionPolicy;->isUseSecureKeypadEnabled()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    .line 3279
    .end local v13    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    const/16 v26, 0x0

    .line 3280
    .local v26, "userSwitched":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3281
    .local v18, "identity":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 3282
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 3284
    .local v7, "currentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "default_input_method"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 3286
    .local v8, "defaultIME":Ljava/lang/String;
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v27

    if-nez v27, :cond_3

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v27

    if-eqz v27, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    if-eq v7, v9, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v27

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/InputMethodManagerService;->isKnoxId(I)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 3290
    :cond_3
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: destinationUserId (getCallingUid) = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: currentUserId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: mCurrentFocusedUserId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "windowGainedFocus: Current user = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " Destination user = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " - So switch user"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    .line 3296
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V

    .line 3297
    const/16 v26, 0x1

    .line 3299
    :cond_4
    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3300
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3301
    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/InputMethodManagerService;->switchSpellChecker(I)V

    .line 3303
    :cond_5
    const-string v27, "InputMethodManagerService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "windowGainedFocus mCurrentFocusedUserId - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " and mSecureKeypadEnabled-"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v4

    .line 3309
    .local v4, "calledFromValidUser":Z
    const/16 v25, 0x0

    .line 3310
    .local v25, "res":Lcom/android/internal/view/InputBindResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3312
    .local v16, "ident":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3318
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3319
    .local v5, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v5, :cond_6

    .line 3320
    new-instance v27, Ljava/lang/IllegalArgumentException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "unknown client "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 3558
    .end local v5    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_0
    move-exception v27

    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3560
    :catchall_1
    move-exception v27

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v27

    .line 3299
    .end local v4    # "calledFromValidUser":Z
    .end local v7    # "currentUserId":I
    .end local v8    # "defaultIME":Ljava/lang/String;
    .end local v16    # "ident":J
    .end local v25    # "res":Lcom/android/internal/view/InputBindResult;
    :catchall_2
    move-exception v27

    :try_start_4
    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v27

    .line 3325
    .restart local v4    # "calledFromValidUser":Z
    .restart local v5    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v7    # "currentUserId":I
    .restart local v8    # "defaultIME":Ljava/lang/String;
    .restart local v16    # "ident":J
    .restart local v25    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v27, v0

    iget-object v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 3331
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Focus gain on non-focused client "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " (uid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " pid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    const-string v29, "InputMethodManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "calledFromValidUser : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", (mCurFocusedWindow == windowToken) : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_7

    const/16 v27, 0x1

    :goto_0
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", (attribute != null) : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-eqz p6, :cond_8

    const/16 v27, 0x1

    :goto_1
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    const-string v29, "InputMethodManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "(mCurClient != cs) : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_9

    const/16 v27, 0x1

    :goto_2
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", mCurFocusedWindow : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ", windowToken : "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_a

    if-eqz p6, :cond_a

    .line 3341
    const-string v27, "InputMethodManagerService"

    const-string v29, "Focus gain on non-focused client, executed a startInputUncheckedLocked()!!"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v27

    :try_start_6
    monitor-exit v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3560
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3563
    :goto_3
    return-object v27

    .line 3336
    :cond_7
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 3337
    :cond_9
    const/16 v27, 0x0

    goto :goto_2

    .line 3344
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_b

    .line 3345
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Focus gain on non-focused client mCurClient info is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    iget-object v0, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3348
    :cond_b
    const/16 v27, 0x0

    :try_start_8
    monitor-exit v28
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3560
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 3350
    :catch_0
    move-exception v27

    .line 3353
    :cond_c
    if-nez v4, :cond_d

    .line 3354
    :try_start_9
    const-string v27, "InputMethodManagerService"

    const-string v29, "A background user is requesting window. Hiding IME."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    const-string v27, "InputMethodManagerService"

    const-string v29, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3358
    const/16 v27, 0x0

    monitor-exit v28
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3560
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 3361
    :cond_d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_10

    .line 3362
    const-string v27, "InputMethodManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Window already focused, ignoring focus gain of: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " attribute="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", token = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    if-eqz p6, :cond_e

    .line 3365
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v27

    monitor-exit v28
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3560
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 3367
    :cond_e
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mIsScreenPinnedState:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    move/from16 v27, v0

    if-nez v27, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isInputMethodShown()Z

    move-result v27

    if-eqz v27, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v27

    if-nez v27, :cond_f

    .line 3371
    :cond_f
    const/16 v27, 0x0

    monitor-exit v28
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3560
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 3373
    :cond_10
    :try_start_c
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 3376
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 3377
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v6

    .line 3379
    .local v6, "currentImeId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 3383
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getSecureDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v20

    .line 3384
    .local v20, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 3388
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v29, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "last_used_input_method"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v6, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3423
    .end local v6    # "currentImeId":Ljava/lang/String;
    .end local v20    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_11
    :goto_4
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0xf0

    move/from16 v27, v0

    const/16 v29, 0x10

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    const/16 v29, 0x3

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v27

    if-eqz v27, :cond_1b

    :cond_12
    const/4 v12, 0x1

    .line 3428
    .local v12, "doAutoShow":Z
    :goto_5
    and-int/lit8 v27, p3, 0x2

    if-eqz v27, :cond_1c

    const/16 v22, 0x1

    .line 3432
    .local v22, "isTextEditor":Z
    :goto_6
    const/high16 v27, 0x10000

    and-int v27, v27, p3

    if-eqz v27, :cond_1d

    const/16 v23, 0x1

    .line 3441
    .local v23, "isWritingBuddyShown":Z
    :goto_7
    const-string/jumbo v27, "ro.build.characteristics"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3442
    .local v10, "deviceType":Ljava/lang/String;
    if-eqz v10, :cond_14

    const-string/jumbo v27, "phone"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 3443
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0xf0

    move/from16 v27, v0

    const/16 v29, 0x10

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    const/16 v29, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v27

    if-eqz v27, :cond_1e

    :cond_13
    const/4 v12, 0x1

    .line 3455
    :cond_14
    :goto_8
    const/4 v11, 0x0

    .line 3457
    .local v11, "didStart":Z
    and-int/lit8 v27, p4, 0xf

    packed-switch v27, :pswitch_data_0

    .line 3535
    :cond_15
    :goto_9
    :pswitch_0
    if-nez v11, :cond_17

    .line 3536
    if-eqz p6, :cond_17

    .line 3539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_16

    .line 3540
    const/16 v21, 0x0

    .line 3542
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3558
    :cond_17
    monitor-exit v28
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3560
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v27, v25

    .line 3563
    goto/16 :goto_3

    .line 3397
    .end local v10    # "deviceType":Ljava/lang/String;
    .end local v11    # "didStart":Z
    .end local v12    # "doAutoShow":Z
    .end local v22    # "isTextEditor":Z
    .end local v23    # "isWritingBuddyShown":Z
    :cond_18
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "last_used_input_method"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 3399
    .local v24, "lastImeId":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 3400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v14

    .line 3401
    .local v14, "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v14, :cond_1a

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_1a

    .line 3402
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_a
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v15, v0, :cond_1a

    .line 3403
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodInfo;

    .line 3404
    .restart local v20    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v20, :cond_19

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_19

    .line 3405
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v29, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3402
    :cond_19
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 3409
    .end local v15    # "i":I
    .end local v20    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "last_used_input_method"

    const-string v30, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v31

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 3423
    .end local v14    # "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v24    # "lastImeId":Ljava/lang/String;
    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 3428
    .restart local v12    # "doAutoShow":Z
    :cond_1c
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 3432
    .restart local v22    # "isTextEditor":Z
    :cond_1d
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 3443
    .restart local v10    # "deviceType":Ljava/lang/String;
    .restart local v23    # "isWritingBuddyShown":Z
    :cond_1e
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 3459
    .restart local v11    # "didStart":Z
    :pswitch_1
    if-eqz v22, :cond_1f

    if-nez v12, :cond_20

    .line 3460
    :cond_1f
    invoke-static/range {p5 .. p5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 3466
    const/16 v21, 0x0

    .line 3467
    const/16 v27, 0x2

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_9

    .line 3469
    :cond_20
    if-eqz v22, :cond_15

    if-eqz v12, :cond_15

    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 3479
    if-eqz p6, :cond_22

    .line 3482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v5, :cond_21

    .line 3483
    const/16 v21, 0x0

    .line 3485
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3487
    const/4 v11, 0x1

    .line 3489
    :cond_22
    if-nez v23, :cond_15

    .line 3490
    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_9

    .line 3498
    :pswitch_2
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 3501
    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_9

    .line 3506
    :pswitch_3
    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_9

    .line 3509
    :pswitch_4
    move/from16 v0, p4

    and-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 3512
    if-eqz p6, :cond_23

    .line 3513
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3515
    const/4 v11, 0x1

    .line 3517
    :cond_23
    if-nez v23, :cond_15

    .line 3518
    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_9

    .line 3524
    :pswitch_5
    if-eqz p6, :cond_24

    .line 3525
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v25

    .line 3527
    const/4 v11, 0x1

    .line 3529
    :cond_24
    if-nez v23, :cond_15

    .line 3530
    const/16 v27, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_9

    .line 3457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
.method removeCustomTitle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3850
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3851
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10403e1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3852
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 3853
    return-void
.end method
.method public setCurFocusedWindow(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3858
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 3859
    return-void
.end method
