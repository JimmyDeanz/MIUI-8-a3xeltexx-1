.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/server/policy/GlobalActions$SilentModeAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$RebootAction;,
        Lcom/android/server/policy/GlobalActions$PowerAction;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_DATAMODE:Ljava/lang/String; = "datamode"

.field private static final GLOBAL_ACTION_KEY_EMERGENCYMODE:Ljava/lang/String; = "emergencymode"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_SUBSCREEN:Ljava/lang/String; = "subscreen"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_CONFIRM_LANDSCAPE:I = 0x9

.field private static final MESSAGE_HIDE_CONFIRM_PORTRAIT:I = 0x8

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_REFRESH_RINGER:I = 0x5

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final MESSAGE_SHOW_CONFIRM_LANDSCAPE:I = 0x7

.field private static final MESSAGE_SHOW_CONFIRM_PORTRAIT:I = 0x6

.field static final SAFE_DEBUG:Z

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SIM_CDMA:I = 0x0

.field private static final SIM_GSM:I = 0x1

.field private static final SURVEY_LOG:Z

.field static SelectedItem:Landroid/view/View; = null

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final TW_GLOBALACTIONS_MSG_DELAY:I = 0x96

.field static mAccessibiltyShortcutEnabled:Z

.field private static mClearCoverWidth:I

.field private static mCountyCode:Ljava/lang/String;

.field private static mCoverViewListView:Landroid/widget/ListView;

.field private static mHasVibrator:Z

.field private static mIsAirplaneConfirmDialogExist:Z

.field private static mIsBugReportEnable:Z

.field private static mIsCancelEnable:Z

.field private static mIsClearCover:Z

.field private static mIsConfirmDlg:Z

.field private static mIsConfirmLandDlg:Z

.field private static mIsCoverOpen:Z

.field private static mIsFirstCreated:Z

.field private static mIsMiniCoverOpened:Z

.field private static mIsMiniDialogMode:Z

.field private static mIsSafemodeSupport:Z

.field private static mNewFeatureForM:Z

.field private static mNewFeatureForMListView:Landroid/widget/ListView;

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mProKioskMenuPosition:I

.field private static mProKioskOptionShown:Z

.field private static final mProductName:Ljava/lang/String;

.field private static mSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSViewCoverAppLevel:I

.field private static mSViewCoverHeight:I

.field private static mSViewCoverWidth:I

.field private static final mSalesCode:Ljava/lang/String;

.field private static final mScafe:Ljava/lang/String;

.field private static final mScafeShot:Ljava/lang/String;

.field public static mSilentModeView:Landroid/view/View;

.field private static mStatusHeight:I

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsSecondConfirming:Z


# instance fields
.field final DO_NOT_MOVE:I

.field final INTERVAL_SCOVER_TRANSITION:I

.field private cm:Landroid/net/ConnectivityManager;

.field current_x:F

.field current_x_land:F

.field current_y:F

.field current_y_land:F

.field displayheight:I

.field displaywidth:I

.field private isDataToggleSupport:Z

.field isShopDemo:Z

.field private isVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneMsg:Landroid/widget/TextView;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mAirplaneStringId:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mBikeModeDialog:Landroid/app/AlertDialog;

.field private mBikeModeObserver:Landroid/database/ContentObserver;

.field mBikeModeStringId:I

.field mBottomViewDoubleItemWidth:I

.field mBottomViewSingleCancelItemWidth:I

.field mBottomViewSingleItemHeight:I

.field mBottomViewSingleItemWidth:I

.field private mBottomlayout:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

.field mConfirmPowerOffIconResId:I

.field mConfirmRestartIconResId:I

.field private final mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mDataNetworkIconResId:I

.field private mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mDataNetworkStringId:I

.field private mDescriptionlayout:Landroid/widget/LinearLayout;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field mEmergencyIconResId:I

.field private mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field mEmergencyStringId:I

.field private mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

.field private mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIsScreenOFF:Z

.field private mIsSecureKeyguard:Z

.field private mIsSetAirplaneOnMessageCHINA:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field mIsSupportedBlur:Z

.field private mIsWaitingForEcmExit:Z

.field mItemConfirmMessageWidth:I

.field mItemDivider:I

.field mItemDividerLand:I

.field mItemHeight:I

.field mItemHeightWithStatus:I

.field mItemLandscapeDivider:I

.field mItemMaxWidth:I

.field mItemMaxWidthLand:I

.field mItemPortraitDivider:I

.field mItemPortraitDividerOverFour:I

.field mItemPortraitDividerSViewCover:I

.field mItemWidth:I

.field mItemWidthLand:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field private mLDUWarning:Ljava/lang/String;

.field private mLandscapeLinearLayout:Landroid/widget/LinearLayout;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field mMessageViewPaddingBottom:I

.field mMessageViewPaddingTop:I

.field private mPhoneCount:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field mPowerOffIconResId:I

.field private mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

.field mRestartIconResId:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrollview:Landroid/widget/ScrollView;

.field private mSecondAnimatedText:Landroid/widget/TextView;

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

.field mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private mTempStringArray:[Ljava/lang/String;

.field private mUnableAirplanemode:Ljava/lang/String;

.field private mUnableEmergencyforFMM:Ljava/lang/String;

.field private mUnablePowerOff:Ljava/lang/String;

.field private mUnablePowerOffForFMM:Ljava/lang/String;

.field private mUnableRestartForFMM:Ljava/lang/String;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mViewCoverParentLayout:Landroid/widget/ImageView;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private powermanager:Landroid/os/PowerManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Framework_SupportRebootWithSafemode"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z

    sput v1, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForMListView:Landroid/widget/ListView;

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverAppLevel:I

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    sput v1, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    sput v1, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    const-string v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mScafeShot:Ljava/lang/String;

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mProductName:Ljava/lang/String;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    const-string v0, "americano"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mocha"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    sput-object v4, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverColor:I

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/String;

    const-string v4, "temp"

    aput-object v4, v1, v3

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewDoubleItemWidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_x:F

    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iput v6, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemHeightWithStatus:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mItemConfirmMessageWidth:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    const/16 v1, -0x3e8

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->DO_NOT_MOVE:I

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    new-instance v1, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$32;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$32;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$33;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$33;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$34;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$34;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$35;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$35;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/policy/GlobalActions$36;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$36;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$37;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$37;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/server/policy/GlobalActions$38;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$38;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/policy/GlobalActions$39;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$39;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/server/policy/GlobalActions$40;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/server/policy/GlobalActions$40;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/server/policy/GlobalActions$41;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$41;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v1, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->powermanager:Landroid/os/PowerManager;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "bikemode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "globalaction"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "isBikeMode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const v1, 0x1040a82

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1120084

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "shopdemo"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemHeightWithStatus:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewDoubleItemWidth:I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    const v1, 0x108097e

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    const v1, 0x108097f

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    const v1, 0x1080980

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    const v1, 0x1080981

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    const v1, 0x108097c

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    const v1, 0x108097b

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkIconResId:I

    const v1, 0x10409ae

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    const v1, 0x1040128

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    const v1, 0x10409c2

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v1, "TMB"

    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->initCoverManager(Landroid/content/Context;)V

    return-void

    :cond_2
    move v1, v3

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto/16 :goto_1

    :cond_4
    move v2, v3

    goto/16 :goto_2
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/GlobalActions;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/policy/GlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    return v0
.end method

.method static synthetic access$10100(Lcom/android/server/policy/GlobalActions;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/policy/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/hardware/usb/UsbManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCHINA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isUSA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mSubScreenState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/widget/EditText;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/policy/GlobalActions;)Landroid/app/enterprise/knoxcustom/ProKioskManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mDisplayConfirm:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return v0
.end method

.method static synthetic access$4402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return p0
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return v0
.end method

.method static synthetic access$4502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic access$4700()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    return v0
.end method

.method static synthetic access$4702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    return p0
.end method

.method static synthetic access$4800(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->virtualDismissInSCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900()Landroid/widget/ListView;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$5100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return v0
.end method

.method static synthetic access$5102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    return p0
.end method

.method static synthetic access$5200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5600()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/policy/GlobalActions;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->isSingleActionItem(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$6400()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic access$6500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayoutSViewCover;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6900()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V

    return-void
.end method

.method static synthetic access$7102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    return p0
.end method

.method static synthetic access$7200(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$7500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/android/server/policy/GlobalActions;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onToggleDatamode()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$8702(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$8800(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActions$ToggleAction;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/GlobalActions;->confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V

    return-void
.end method

.method static synthetic access$9600()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/policy/GlobalActions;->mCountyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/policy/GlobalActions;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lcom/android/server/policy/GlobalActions;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    return-object v0
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
    .locals 8
    .param p1, "iconDraw"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "messageChars"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/GlobalActions$25;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$25;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v6

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z
    .locals 2
    .param p1, "valueToCheck"    # I
    .param p2, "actionToAdd"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p4, "ifEnabledMoveIncrementPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/policy/GlobalActions$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string v1, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    sget v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .local v9, "um":Landroid/os/UserManager;
    invoke-virtual {v9}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    move v8, v11

    .local v8, "isCurrentUser":Z
    :goto_1
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v0, Lcom/android/server/policy/GlobalActions$31;

    const v2, 0x108045b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_6

    const-string v1, " \u2714"

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$31;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    :cond_1
    move v8, v12

    goto :goto_1

    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_3

    move v8, v11

    goto :goto_1

    :cond_3
    move v8, v12

    goto :goto_1

    .restart local v8    # "isCurrentUser":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v1, "Primary"

    goto :goto_3

    :cond_6
    const-string v1, ""

    goto :goto_4

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/GlobalActions$42;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$42;-><init>(Lcom/android/server/policy/GlobalActions;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :cond_0
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private checkAirplaneModeOnOff()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "GlobalActions"

    const-string v3, "===== Start checkAirplaneModeOnOff ====="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .local v0, "airplaneModeOn":Z
    :goto_0
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string v1, "GlobalActions"

    const-string v2, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_0
    move v0, v1

    goto :goto_0

    .restart local v0    # "airplaneModeOn":Z
    :cond_1
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private clearCustomDialogItems()Z
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/GlobalActions$Action;

    .local v1, "obj":Lcom/android/server/policy/GlobalActions$Action;
    instance-of v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .end local v1    # "obj":Lcom/android/server/policy/GlobalActions$Action;
    iget-boolean v2, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/policy/GlobalActions$Action;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    return v2
.end method

.method private clearSCoverRequestStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "sender":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "sender":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    .locals 20
    .param p1, "action"    # Lcom/android/server/policy/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    const/4 v4, 0x0

    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x0

    .local v14, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v13, 0x0

    .local v13, "mConfirmDialogSViewCover":Landroid/app/GlobalActionsSViewCoverDialog;
    const/4 v6, 0x0

    .local v6, "dialog":Landroid/app/AlertDialog;
    const/4 v15, 0x0

    .local v15, "positiveButtonStringId":I
    const/4 v2, 0x0

    .local v2, "abuilder":Landroid/app/AlertDialog$Builder;
    const/4 v12, 0x0

    .local v12, "isStateOff":Z
    const/4 v8, 0x0

    .local v8, "isActionAirplaneModeOn":Z
    const/4 v11, 0x0

    .local v11, "isSetAirplaneOnMessageVZW":Z
    const/4 v10, 0x0

    .local v10, "isSetAirplaneOnMessageCHINA":Z
    const/4 v9, 0x0

    .local v9, "isRunnigWithoutConfirmMessage":Z
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    const v15, 0x1040825

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    :goto_1
    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_8

    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v16, :cond_8

    new-instance v16, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    move/from16 v16, p3

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    const v16, 0x10409a5

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v16

    const v17, 0x1040009

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v13

    :goto_4
    new-instance v16, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_12

    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v16, :cond_12

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x833

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1120014

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .local v3, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->show()V

    const-string v16, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    .end local v3    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_5
    if-nez v9, :cond_2

    sget-object v17, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v17

    const/16 v16, 0x1

    :try_start_0
    sput-boolean v16, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :cond_3
    const v15, 0x1040824

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_1

    :cond_5
    const-string v16, "GlobalActions"

    const-string v17, "Cannot find ClickListener."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move/from16 v16, p4

    goto/16 :goto_2

    :cond_7
    move/from16 v16, v15

    goto/16 :goto_3

    :cond_8
    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_b

    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v16, :cond_b

    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x10304e4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .restart local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    :goto_6
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d

    :cond_9
    if-eqz v8, :cond_d

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v16, 0x1090129

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .local v5, "content":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    const/4 v11, 0x1

    const-string v16, "GlobalActions"

    const-string v17, "confirmDialog : set airplane mode on message for VZW"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_7
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v16, 0x10204d1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    const v16, 0x102000b

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .end local v5    # "content":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_f

    const v15, 0x10409a5

    :goto_9
    invoke-virtual {v2, v15, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v16, 0x1040009

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_4

    :cond_b
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_6

    .restart local v5    # "content":Landroid/view/View;
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    const/4 v10, 0x1

    const-string v16, "GlobalActions"

    const-string v17, "confirmDialog : set airplane mode on message for CHINA"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v5    # "content":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    move/from16 v16, p3

    :goto_a
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    :cond_e
    move/from16 v16, p4

    goto :goto_a

    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_11

    const-string v16, "VZW"

    sget-object v17, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const v15, 0x104000a

    goto :goto_9

    :cond_10
    const v15, 0x1040825

    goto :goto_9

    :cond_11
    const v15, 0x1040824

    goto :goto_9

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_16

    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v16, :cond_16

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x833

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1120014

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    if-nez v16, :cond_13

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    :cond_13
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->checkOnAirplaneConfirmShow()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    move/from16 v16, v0

    if-nez v16, :cond_17

    if-nez v11, :cond_14

    if-eqz v10, :cond_17

    :cond_14
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    const/4 v9, 0x1

    :goto_c
    sget-boolean v16, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v16, :cond_15

    const-string v16, "GlobalActions"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "in confirmDialog action = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " resON = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "resOFF = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " config_sf_slowBlur = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1120014

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " resTitle = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mAirplaneModeOn = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mDataModeToggle = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_5

    :cond_16
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7de

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_b

    :cond_17
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_c

    :catchall_0
    move-exception v16

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 34

    .prologue
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z

    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$2;

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_4

    const v6, 0x108097b

    :goto_0
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_5

    const v7, 0x108097b

    :goto_1
    const v8, 0x10409c2

    const v9, 0x10409c3

    const v10, 0x10409c4

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$3;

    const v6, 0x1080983

    const v7, 0x1080984

    const v8, 0x1040128

    const v9, 0x1040129

    const v10, 0x104012a

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    new-instance v4, Lcom/android/server/policy/GlobalActions$4;

    const v6, 0x108098c

    const v7, 0x108098b

    const v8, 0x1040999

    const v9, 0x104099a

    const v10, 0x104099b

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSubScreenOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v4, Lcom/android/server/policy/GlobalActions$5;

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_6

    const v6, 0x108097c

    :goto_2
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v5, :cond_7

    const v7, 0x108097c

    :goto_3
    const v8, 0x10409ae

    const v9, 0x10409ac

    const v10, 0x10409ad

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040acb

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x1040acc

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/server/policy/GlobalActions$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/server/policy/GlobalActions$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/server/policy/GlobalActions$8;

    const v6, 0x108040a

    const v7, 0x108040a

    const v8, 0x1040ac8

    const v9, 0x1040ac9

    const v10, 0x1040ac9

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    new-instance v5, Lcom/android/server/policy/GlobalActions$9;

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_8

    const v4, 0x1080980

    :goto_4
    const v6, 0x10408df

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v6}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bikemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "globalaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/server/policy/GlobalActions$10;

    const v6, 0x1080985

    const v7, 0x1080985

    const v8, 0x1040a82

    const v9, 0x1040a83

    const v10, 0x1040a84

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x1

    .local v12, "add":Z
    const/4 v4, 0x0

    sput v4, Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I

    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    new-instance v5, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v4, 0x40

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v4, 0x80

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v4, 0x100

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v12, 0x0

    :cond_2
    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .local v20, "defaultActions":[Ljava/lang/String;
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .local v13, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_5
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_1b

    aget-object v11, v20, v23

    .local v11, "actionKey":Ljava/lang/String;
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .end local v11    # "actionKey":Ljava/lang/String;
    .end local v12    # "add":Z
    .end local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "defaultActions":[Ljava/lang/String;
    .end local v23    # "i":I
    :cond_4
    const v6, 0x1080987

    goto/16 :goto_0

    :cond_5
    const v7, 0x1080986

    goto/16 :goto_1

    :cond_6
    const v6, 0x108098e

    goto/16 :goto_2

    :cond_7
    const v7, 0x108098f

    goto/16 :goto_3

    :cond_8
    const v4, 0x108098a

    goto/16 :goto_4

    .restart local v11    # "actionKey":Ljava/lang/String;
    .restart local v12    # "add":Z
    .restart local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "defaultActions":[Ljava/lang/String;
    .restart local v23    # "i":I
    :cond_9
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_a

    const-string v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "users"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_a
    invoke-static {}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "GlobalActions"

    const-string v5, "Removed Emergency mode button because of Knox creation."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    const-string v4, "power"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    const-string v4, "airplane"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    const-string v4, "subscreen"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "datamode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    const-string v4, "bugreport"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bugreport_in_power_menu"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v4

    if-eqz v4, :cond_12

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_11

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    goto :goto_7

    :cond_13
    const-string v4, "restart"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mRestart:Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_14
    const-string v4, "emergencymode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_15
    const-string v4, "silent"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_16
    const-string v4, "users"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "fw.power_user_switcher"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :cond_17
    const-string v4, "settings"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_18
    const-string v4, "voiceassist"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_19
    const-string v4, "assist"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1a
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid global action key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .end local v11    # "actionKey":Ljava/lang/String;
    :cond_1b
    new-instance v4, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    .end local v13    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "defaultActions":[Ljava/lang/String;
    .end local v23    # "i":I
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bikemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "globalaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->clearCustomDialogItems()Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v22

    .local v22, "fromDB":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    if-eqz v22, :cond_1e

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .local v25, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual/range {v25 .. v25}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIntentAction()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/GlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z

    goto :goto_8

    .end local v22    # "fromDB":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :cond_1e
    new-instance v4, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    new-instance v28, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .local v28, "params":Lcom/android/internal/app/AlertController$AlertParams;
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_1f

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_28

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    :goto_9
    new-instance v21, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    .local v21, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const-string v4, "GlobalActions"

    const-string v5, "Create GlobalActionsDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v4, :cond_2d

    const/16 v30, 0x0

    .local v30, "tvBugReportMessage":Landroid/widget/TextView;
    const/16 v31, 0x0

    .local v31, "tvBugReportStatus":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_20

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_29

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_29

    :cond_20
    new-instance v4, Landroid/app/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Landroid/app/GlobalActionsFrameLayout;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203ad

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x1020062

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203b2

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203b3

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .restart local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203b4

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    check-cast v31, Landroid/widget/TextView;

    .restart local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203a8

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203aa

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203ab

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203ac

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x1040122

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .local v18, "bugReportString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x1040124

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .local v17, "bugReportStatus":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    new-instance v5, Lcom/android/server/policy/GlobalActions$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-nez v4, :cond_2a

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    if-nez v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->createPortraitGlobalActionsDialog()V

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_21

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2b

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_2b

    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->createLandscapeGlobalActionsDialog()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v5, 0x10203a6

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .local v14, "backgroundLayout":Landroid/widget/LinearLayout;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v27, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v4, :cond_24

    const v4, 0x1060146

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .local v15, "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .end local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v17    # "bugReportStatus":Ljava/lang/String;
    .end local v18    # "bugReportString":Ljava/lang/String;
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    :goto_c
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_25

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v4, :cond_27

    :cond_25
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v4, :cond_26

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLongClickable(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .local v16, "bottomPadding":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v7

    move/from16 v0, v16

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/GlobalActions$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7de

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .end local v16    # "bottomPadding":I
    :cond_26
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_27

    new-instance v4, Lcom/android/server/policy/GlobalActions$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$17;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_27
    return-object v21

    .end local v21    # "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    :cond_28
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_9

    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v21    # "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .restart local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    .restart local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    :cond_29
    new-instance v4, Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v6}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5, v6, v7}, Landroid/app/GlobalActionsFrameLayoutSViewCover;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203ad

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x1020062

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203b2

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203b3

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    check-cast v30, Landroid/widget/TextView;

    .restart local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203b4

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    check-cast v31, Landroid/widget/TextView;

    .restart local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203a8

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203ab

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203ac

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mSecondAnimatedText:Landroid/widget/TextView;

    goto/16 :goto_a

    .restart local v17    # "bugReportStatus":Ljava/lang/String;
    .restart local v18    # "bugReportString":Ljava/lang/String;
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->adjustBottomView()V

    goto/16 :goto_b

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    const v5, 0x10203a6

    invoke-virtual {v4, v5}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .restart local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v4, :cond_2c

    const v4, 0x1060146

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .restart local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v15, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .end local v15    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_c

    .end local v14    # "backgroundLayout":Landroid/widget/LinearLayout;
    .end local v17    # "bugReportStatus":Ljava/lang/String;
    .end local v18    # "bugReportString":Ljava/lang/String;
    .end local v27    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "tvBugReportMessage":Landroid/widget/TextView;
    .end local v31    # "tvBugReportStatus":Landroid/widget/TextView;
    :cond_2d
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_36

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v4, :cond_36

    const-string v4, "GlobalActions"

    const-string v5, "mIsCoverOpen  is false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x833

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/LayoutInflater;

    .local v26, "lf":Landroid/view/LayoutInflater;
    const/16 v32, 0x0

    .local v32, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2e

    const v4, 0x1090073

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    new-instance v4, Lcom/android/server/policy/GlobalActions$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isMiniCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_35

    new-instance v33, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v33, "vglp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c

    .end local v33    # "vglp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2e
    const v4, 0x1090074

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v4, :cond_31

    const-string v4, "americano"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, "mocha"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_2f
    const v4, 0x1020383

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .local v19, "crossBtn":Landroid/view/View;
    :goto_e
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setHoverPopupType(I)V

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    const/16 v5, 0x5153

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/server/policy/GlobalActions$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v19    # "crossBtn":Landroid/view/View;
    :cond_31
    const v4, 0x102035d

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    const v4, 0x10203bd

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    sput-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_32

    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_32
    sget-object v4, Lcom/android/server/policy/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/server/policy/GlobalActions$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v4, 0x1020016

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .local v29, "titleView":Landroid/widget/TextView;
    const-string v4, "VZW"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040105

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .end local v29    # "titleView":Landroid/widget/TextView;
    :cond_33
    const v4, 0x1020062

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .restart local v19    # "crossBtn":Landroid/view/View;
    goto/16 :goto_e

    .end local v19    # "crossBtn":Landroid/view/View;
    .restart local v29    # "titleView":Landroid/widget/TextView;
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104011d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .end local v29    # "titleView":Landroid/widget/TextView;
    :cond_35
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_c

    .end local v26    # "lf":Landroid/view/LayoutInflater;
    .end local v32    # "v":Landroid/view/View;
    :cond_36
    const v4, 0x104011d

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    goto/16 :goto_c

    :array_0
    .array-data 4
        0x0
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x80
    .end array-data
.end method

.method private createLandscapeGlobalActionsDialog()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const v1, 0x10203a9

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$22;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$22;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$23;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$23;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    goto :goto_0
.end method

.method private createPortraitGlobalActionsDialog()V
    .locals 2

    .prologue
    const v1, 0x10203a7

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/policy/GlobalActions$18;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$18;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/server/policy/GlobalActions$19;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$19;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    goto :goto_0
.end method

.method private doAnimation(Landroid/view/View;FFFIZ)V
    .locals 32
    .param p1, "v"    # Landroid/view/View;
    .param p2, "transX"    # F
    .param p3, "transY"    # F
    .param p4, "scaleXY"    # F
    .param p5, "duration"    # I
    .param p6, "isConfirm"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    :goto_0
    return-void

    :cond_0
    const v24, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .local v10, "imageView":Landroid/widget/ImageView;
    const v24, 0x102000b

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .local v14, "messageView":Landroid/widget/TextView;
    const v24, 0x10203b5

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .local v20, "statusView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const v25, 0x10203ac

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .local v7, "descriptionView":Landroid/widget/TextView;
    const v24, 0x10203b7

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .local v9, "imageFrameLayout":Landroid/widget/FrameLayout;
    const/4 v8, 0x0

    .local v8, "desriptionAlpha":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x0

    .local v6, "bottomAlpha":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_5

    invoke-virtual {v10}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x10409ca

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/high16 v28, 0x3f800000    # 1.0f

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setClickable(Z)V

    :goto_2
    const-wide/16 v24, 0x190

    move-wide/from16 v0, v24

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v23

    .local v23, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v13, 0x0

    .local v13, "ll":Landroid/widget/LinearLayout;
    sget-boolean v24, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v24, :cond_6

    sget-boolean v24, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-object/from16 v24, v0

    const v25, 0x10203a6

    invoke-virtual/range {v24 .. v25}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "ll":Landroid/widget/LinearLayout;
    check-cast v13, Landroid/widget/LinearLayout;

    .restart local v13    # "ll":Landroid/widget/LinearLayout;
    :goto_3
    const/16 v21, 0x0

    .local v21, "translateX":Landroid/animation/ObjectAnimator;
    const/16 v22, 0x0

    .local v22, "translateY":Landroid/animation/ObjectAnimator;
    const/4 v15, 0x0

    .local v15, "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_7

    const-string v24, "translationX"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p2, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-string v24, "translationY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p3, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    const-string v24, "translationY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-wide v28, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    :goto_4
    const-string v24, "scaleX"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p4, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .local v16, "scaleX":Landroid/animation/ObjectAnimator;
    const-string v24, "scaleY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p4, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v9, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .local v18, "scaleY":Landroid/animation/ObjectAnimator;
    const/16 v17, 0x0

    .local v17, "scaleXMessageView":Landroid/animation/ObjectAnimator;
    const/16 v19, 0x0

    .local v19, "scaleYMessageView":Landroid/animation/ObjectAnimator;
    const v24, 0x10203b8

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .local v11, "imageViewConfirm":Landroid/widget/ImageView;
    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v12, 0x0

    .local v12, "imageViewhide":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_8

    const-string v24, "alpha"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-string v24, "scaleX"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const v27, 0x3f6b851f    # 0.92f

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    const-string v24, "scaleY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const v27, 0x3f99999a    # 1.2f

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    :goto_5
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    .local v5, "backgroundalpha":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_a

    const v24, 0x1060146

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_1

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    :goto_6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .local v4, "Aniset":Landroid/animation/AnimatorSet;
    new-instance v24, Lcom/android/server/policy/GlobalActions$24;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/server/policy/GlobalActions$24;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, -0x3e8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v21, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, -0x3e8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v22, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_3
    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v24, Landroid/view/animation/PathInterpolator;

    const v25, 0x3e2e147b    # 0.17f

    const v26, 0x3e2e147b    # 0.17f

    const v27, 0x3e4ccccd    # 0.2f

    const/high16 v28, 0x3f800000    # 1.0f

    invoke-direct/range {v24 .. v28}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .end local v4    # "Aniset":Landroid/animation/AnimatorSet;
    .end local v5    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    .end local v11    # "imageViewConfirm":Landroid/widget/ImageView;
    .end local v12    # "imageViewhide":Landroid/animation/ObjectAnimator;
    .end local v13    # "ll":Landroid/widget/LinearLayout;
    .end local v15    # "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    .end local v16    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v17    # "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .end local v18    # "scaleY":Landroid/animation/ObjectAnimator;
    .end local v19    # "scaleYMessageView":Landroid/animation/ObjectAnimator;
    .end local v21    # "translateX":Landroid/animation/ObjectAnimator;
    .end local v22    # "translateY":Landroid/animation/ObjectAnimator;
    .end local v23    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    invoke-virtual {v10}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x10409cb

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/high16 v28, 0x3f800000    # 1.0f

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_2

    .restart local v13    # "ll":Landroid/widget/LinearLayout;
    .restart local v23    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    move-object/from16 v24, v0

    const v25, 0x10203a6

    invoke-virtual/range {v24 .. v25}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "ll":Landroid/widget/LinearLayout;
    check-cast v13, Landroid/widget/LinearLayout;

    .restart local v13    # "ll":Landroid/widget/LinearLayout;
    goto/16 :goto_3

    .restart local v15    # "messageViewtranslateY":Landroid/animation/ObjectAnimator;
    .restart local v21    # "translateX":Landroid/animation/ObjectAnimator;
    .restart local v22    # "translateY":Landroid/animation/ObjectAnimator;
    :cond_7
    const-string v24, "x"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p2, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-string v24, "y"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput p3, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    const-string v24, "translationY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    goto/16 :goto_4

    .restart local v11    # "imageViewConfirm":Landroid/widget/ImageView;
    .restart local v12    # "imageViewhide":Landroid/animation/ObjectAnimator;
    .restart local v16    # "scaleX":Landroid/animation/ObjectAnimator;
    .restart local v17    # "scaleXMessageView":Landroid/animation/ObjectAnimator;
    .restart local v18    # "scaleY":Landroid/animation/ObjectAnimator;
    .restart local v19    # "scaleYMessageView":Landroid/animation/ObjectAnimator;
    :cond_8
    const-string v24, "alpha"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-string v24, "scaleX"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    const-string v24, "scaleY"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    goto/16 :goto_5

    .restart local v5    # "backgroundalpha":Landroid/animation/ObjectAnimator;
    :cond_9
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_3

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_4

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_6

    :cond_b
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_5

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto/16 :goto_6

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x80
        0xbf
    .end array-data

    :array_2
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x73
    .end array-data

    :array_4
    .array-data 4
        0xbf
        0x80
    .end array-data

    :array_5
    .array-data 4
        0x73
        0x0
    .end array-data
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/policy/GlobalActions$28;

    const v1, 0x108038f

    const v2, 0x104012c

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$28;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getBugReportAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/policy/GlobalActions$26;

    const v1, 0x10803ff

    const v2, 0x1040122

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$26;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentNW()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentNW()] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CURRENT_NETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/policy/GlobalActions$30;

    const v1, 0x108002f

    const v2, 0x104012e

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$30;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "phoneId":I
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    new-instance v0, Lcom/android/server/policy/GlobalActions$44;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/GlobalActions$44;-><init>(Lcom/android/server/policy/GlobalActions;I)V

    .local v0, "mListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getSCoverState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSviewCoverAppLevel()V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_0

    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "GlobalActions"

    const-string v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "GlobalActions"

    const-string v2, "mCoverManager is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/policy/GlobalActions$27;

    const v1, 0x10804c6

    const v2, 0x104012b

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$27;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getSviewCoverAppLevel()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/policy/GlobalActions;->mSViewCoverAppLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/policy/GlobalActions;->mSViewCoverAppLevel:I

    :cond_0
    return-void
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/policy/GlobalActions$29;

    const v1, 0x10804da

    const v2, 0x104012d

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$29;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSCoverState()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isClearCover()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    const-string v2, "GlobalActions"

    const-string v3, "Device is not supported in Global Actions in main view, show panel in cocktail bar"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->notifyCocktailBarGlobalActions()V

    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const-string v2, "americano"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "double"

    sget-object v5, Lcom/android/server/policy/GlobalActions;->mScafeShot:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_4

    sget v2, Lcom/android/server/policy/GlobalActions;->mSViewCoverAppLevel:I

    if-ge v2, v8, :cond_4

    const-string v2, "GlobalActions"

    const-string v3, "handleShow() : Device is in SView Cover mode hence GlobalAction dialog will not display "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getPowerMenuLockedState"

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_5

    const-string v2, "GlobalActions"

    const-string v3, "Knox Customization: GlobalActions dialog will not display when keyguard is showing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v2, "GlobalActions"

    const-string v5, "handleShow() : Call createDialog()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v2

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/GlobalActions$LongPressAction;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x104011d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10501d1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10501d2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10501d0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1050017

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    const-string v2, "GlobalActions"

    const-string v5, "handleShow() : call mDialog.show()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v5, 0x10000

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_7

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z

    const-string v2, "GlobalActions"

    const-string v4, "handleShow(), mini dialog showed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v2, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleShow() : mIsCoverOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->clearFlags(I)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v4, Lcom/android/server/policy/GlobalActions;->mSViewCoverWidth:I

    sget v5, Lcom/android/server/policy/GlobalActions;->mSViewCoverHeight:I

    sget v6, Lcom/android/server/policy/GlobalActions;->mStatusHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setLayout(II)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    :cond_8
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v4, Lcom/android/server/policy/GlobalActions;->mClearCoverWidth:I

    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setLayout(II)V

    :cond_9
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setLayout(II)V

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mIsSupportedBlur:Z

    if-eqz v2, :cond_c

    const v2, 0x3ecccccd    # 0.4f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_2
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_a

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_a
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .end local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground()V

    goto/16 :goto_1

    .restart local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    const/high16 v2, 0x3f400000    # 0.75f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_2

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const-string v2, "GlobalActions"

    const-string v3, "Can not show dialog as it is not well formed properly"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private hideQuickpanelBackground()V
    .locals 1

    .prologue
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .locals 4
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/server/policy/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v0, "GlobalActions"

    const-string v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    const-string v0, "GlobalActions"

    const-string v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private initLandscapeAddView()V
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initPortraitAddView()V
    .locals 4

    .prologue
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerSViewCover:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDivider:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mItemPortraitDividerOverFour:I

    iput v1, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    goto :goto_0

    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method private isCHINA()Z
    .locals 3

    .prologue
    const-string v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string v1, "CMCC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isClearCover()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDataCapable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;
    .param p3, "Arg"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v7, ""

    .local v7, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, "cr":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v3, "temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isFMMlocked()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v0

    return v0
.end method

.method private isGlobalActionConfirming()Z
    .locals 2

    .prologue
    sget-object v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isIntEDM(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private isMSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiniCoverClosed()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileKeyboard()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimCardInserted(I)Z
    .locals 8
    .param p1, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "iccTemp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v2, 0x0

    .local v2, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_1
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    :pswitch_0
    aget-object v2, v0, v5

    goto :goto_1

    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimReady()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .local v0, "SimState":I
    const-string v7, "ro.config.donot_nosim"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "lSimValue":Z
    if-eqz v0, :cond_0

    if-ne v0, v6, :cond_1

    :cond_0
    move v3, v6

    .local v3, "finalSimState":Z
    :goto_0
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x10409b9

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x10409ba

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7de

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    new-instance v7, Lcom/android/server/policy/GlobalActions$43;

    invoke-direct {v7, p0}, Lcom/android/server/policy/GlobalActions$43;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    sget-object v6, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v6

    const/4 v7, 0x1

    :try_start_0
    sput-boolean v7, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    monitor-exit v6

    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_1
    return v5

    .end local v3    # "finalSimState":Z
    :cond_1
    move v3, v5

    goto :goto_0

    .restart local v1    # "alert":Landroid/app/AlertDialog;
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "finalSimState":Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method private isSingleActionItem(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "imageViewTag":I
    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTSafeLock()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->hasTSafeLock()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "off_menu_setting"

    .local v0, "OFF_MENU_SETTING":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private isUSA()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const-string v2, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string v2, "usa"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CSP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CRI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    .locals 21
    .param p1, "item"    # Lcom/android/server/policy/GlobalActions$Action;
    .param p2, "i"    # I
    .param p3, "isPort"    # Z

    .prologue
    move-object/from16 v8, p1

    .local v8, "action":Lcom/android/server/policy/GlobalActions$Action;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v4, v5, v7, v0}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v9

    .local v9, "view":Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .local v11, "imageView":Landroid/widget/ImageView;
    const v4, 0x10203b8

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .local v12, "imageViewConfirm":Landroid/widget/ImageView;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/GlobalActions;->mConfirmPowerOffIconResId:I

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_5

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/4 v5, -0x2

    invoke-direct {v13, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v13, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, p2, 0x1

    sub-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v4, v5, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v9, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->bringToFront()V

    const v4, 0x10203b7

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .local v10, "imageFrameLayout":Landroid/widget/FrameLayout;
    move-object v6, v9

    .local v6, "tempView":Landroid/view/View;
    if-eqz v10, :cond_3

    if-eqz p3, :cond_2

    const v4, 0x10203b5

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .local v17, "statusView":Landroid/widget/TextView;
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v4, :cond_2

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .local v14, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v16, v0

    .local v16, "marginTopPixelSize":I
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z

    if-nez v4, :cond_2

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .end local v14    # "lparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "marginTopPixelSize":I
    .end local v17    # "statusView":Landroid/widget/TextView;
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    new-instance v4, Lcom/android/server/policy/GlobalActions$20;

    move-object/from16 v5, p0

    move/from16 v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/GlobalActions$20;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/view/View;ZLcom/android/server/policy/GlobalActions$Action;Landroid/view/View;)V

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/server/policy/GlobalActions$21;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/GlobalActions$21;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/accessibility/AccessibilityManager;

    .local v15, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x108036d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v18, 0x258

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ebd70a4    # 0.37f

    const/16 v18, 0x0

    const v19, 0x3e99999a    # 0.3f

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v5, v7, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .end local v15    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_3
    return-object v9

    .end local v6    # "tempView":Landroid/view/View;
    .end local v10    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v13    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/GlobalActions;->mConfirmRestartIconResId:I

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_5
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/4 v5, -0x2

    invoke-direct {v13, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v13    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, p2, 0x1

    sub-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v4, v5, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .restart local v6    # "tempView":Landroid/view/View;
    .restart local v10    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v15    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x108036e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method private notifyCocktailBarGlobalActions()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    .local v1, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v1, :cond_0

    const-string v2, "GlobalActions"

    const-string v3, "notifyCocktailBarGlobalActions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "show_global_actions"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .local v0, "airplaneModeOn":Z
    :goto_1
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0    # "airplaneModeOn":Z
    :cond_2
    move v0, v1

    goto :goto_1

    .restart local v0    # "airplaneModeOn":Z
    :cond_3
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private onClickForHideLandscapeConfirmDialog(Z)V
    .locals 12
    .param p1, "isOnClick"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemLandscapeDivider:I

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v2, "HideConfirmLandscape"

    invoke-virtual {v0, v2}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x10203b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x10203b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .local v10, "statusView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v9, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDividerLand:I

    invoke-virtual {v9, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_2
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    .end local v1    # "view":Landroid/view/View;
    .end local v9    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "statusView":Landroid/widget/TextView;
    :cond_3
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_4

    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    :cond_4
    return-void
.end method

.method private onClickForHidePortraitConfirmDialog(Z)V
    .locals 12
    .param p1, "isOnClick"    # Z

    .prologue
    const/4 v11, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v2, "HideConfirmPortrait"

    invoke-virtual {v0, v2}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x10203b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .local v8, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .end local v8    # "imageFrameLayout":Landroid/widget/FrameLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x10203b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .local v10, "statusView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v9, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemDivider:I

    invoke-virtual {v9, v6, v6, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x3b860000    # -1000.0f

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    .end local v1    # "view":Landroid/view/View;
    .end local v9    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "statusView":Landroid/widget/TextView;
    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-nez v0, :cond_6

    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    :cond_6
    return-void
.end method

.method private onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    const/4 v5, 0x0

    const v4, 0x3fa66666    # 1.3f

    const/4 v6, 0x1

    sput-object p1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .local v11, "messageView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x10203b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .local v12, "statusView":Landroid/widget/TextView;
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mItemWidthLand:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    .local v7, "center_x":F
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v0

    int-to-float v8, v0

    .local v8, "center_y":F
    const/4 v0, 0x2

    new-array v10, v0, [I

    .local v10, "location":[I
    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v10, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    aget v0, v10, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    const-string v0, "ksh current x ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .local v9, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->hideAllViewForLand(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v1, "ConfirmLandscape"

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    sub-float v3, v8, v0

    const/16 v5, 0x12c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sput-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_x_land:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y_land:F

    sub-float v3, v8, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_0
.end method

.method private onClickForPortraitConfirmDialog(Landroid/view/View;Z)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOnClick"    # Z

    .prologue
    sput-object p1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .local v12, "messageView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    const v1, 0x10203b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .local v13, "statusView":Landroid/widget/TextView;
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v0

    int-to-float v7, v0

    .local v7, "center_y":F
    const/4 v0, 0x2

    new-array v10, v0, [I

    .local v10, "location":[I
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_0
    const/4 v0, 0x1

    aget v0, v10, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    const-string v0, "ksh current y ="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .local v9, "imageView":Landroid/widget/ImageView;
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V

    :goto_1
    if-eqz p2, :cond_3

    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/16 v5, 0x12c

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    :goto_2
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .local v8, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .local v11, "marginTopPixelSize":I
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    int-to-float v1, v11

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    .end local v8    # "fllp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "marginTopPixelSize":I
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    return-void

    .end local v9    # "imageView":Landroid/widget/ImageView;
    :cond_1
    sget-object v0, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    goto/16 :goto_0

    .restart local v9    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    sget-object v1, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    const-string v1, "ConfirmPortrait"

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/high16 v2, -0x3b860000    # -1000.0f

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->current_y:F

    sub-float v3, v7, v0

    const v4, 0x3fa66666    # 1.3f

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_2
.end method

.method private onToggleDatamode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_2

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0
.end method

.method private prepareDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .local v0, "dataModeOn":Z
    if-eqz v0, :cond_a

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_3

    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v3, "getSealedState"

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bikemode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "globalaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isBikeMode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_5
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareDialog : mIsCoverOpen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :cond_6
    :goto_4
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v2, :cond_8

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_8
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SUBSCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SUBSCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "CTC"

    sget-object v3, Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_a
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_1

    :cond_c
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto/16 :goto_2

    :cond_d
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_3

    :cond_e
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x833

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_f
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1060144

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_4
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .local v2, "subIdtemp":[I
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    aget v1, v2, v6

    .local v1, "subId":I
    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I

    aput v6, v3, v0

    .end local v1    # "subId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v1    # "subId":I
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_3
    return-void
.end method

.method private restoreQuickpanelBackground()V
    .locals 1

    .prologue
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .locals 3
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/GlobalActions;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 13
    .param p1, "whichItem"    # I
    .param p2, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "whichItemString":Ljava/lang/String;
    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq p2, v10, :cond_0

    sget-object v10, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne p2, v10, :cond_3

    :cond_0
    const/4 v6, 0x1

    .local v6, "on":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    .local v0, "actionsLayout":Landroid/view/ViewGroup;
    :goto_1
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .local v8, "view":Landroid/view/View;
    const v10, 0x1020006

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .local v4, "imageView":Landroid/widget/ImageView;
    const v10, 0x102000b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, "messageView":Landroid/widget/TextView;
    const v10, 0x10203b5

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .local v7, "statusView":Landroid/widget/TextView;
    const v10, 0x10203b7

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .local v3, "imageFrameLayout":Landroid/widget/FrameLayout;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v6, :cond_5

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_3
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_4
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10409cc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .end local v0    # "actionsLayout":Landroid/view/ViewGroup;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v6    # "on":Z
    .end local v7    # "statusView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .restart local v6    # "on":Z
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    .restart local v0    # "actionsLayout":Landroid/view/ViewGroup;
    goto/16 :goto_1

    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    .restart local v5    # "messageView":Landroid/widget/TextView;
    .restart local v7    # "statusView":Landroid/widget/TextView;
    .restart local v8    # "view":Landroid/view/View;
    :cond_5
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v6, :cond_7

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_5
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_7
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_5

    :cond_8
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v6, :cond_9

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_6
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "bikemode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "globalaction"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/GlobalActions;->mBikeModeStringId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    if-eqz v10, :cond_1

    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_7
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_b
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions;->mBikeMode:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget v10, v10, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_7

    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v7    # "statusView":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_c
    return-void
.end method

.method private virtualDismissInSCover()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private virtualDismissInSCover(Ljava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method adjustBottomView()V
    .locals 11

    .prologue
    const v10, 0x10203b1

    const v9, 0x10203b0

    const v8, 0x10203ae

    const/16 v7, 0x8

    const/4 v4, 0x0

    .local v4, "showfl":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    .local v2, "hidefl":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .local v1, "dividerfl":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    .local v0, "dividerSViewfl":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    .local v3, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsBugReportEnable:Z

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCancelEnable:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z

    if-eqz v5, :cond_2

    :cond_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemWidth:I

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v5, v9}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "dividerfl":Landroid/widget/FrameLayout;
    check-cast v1, Landroid/widget/FrameLayout;

    .restart local v1    # "dividerfl":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v5, v8}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "hidefl":Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .restart local v2    # "hidefl":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;

    invoke-virtual {v5, v10}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "showfl":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .restart local v4    # "showfl":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/server/policy/GlobalActions$45;

    invoke-direct {v6, p0}, Lcom/android/server/policy/GlobalActions$45;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleCancelItemWidth:I

    iget v6, p0, Lcom/android/server/policy/GlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v3    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v9}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dividerSViewfl":Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .restart local v0    # "dividerSViewfl":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v8}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "hidefl":Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .restart local v2    # "hidefl":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    invoke-virtual {v5, v10}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "showfl":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .restart local v4    # "showfl":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public airplaneModeClickAction(Z)V
    .locals 5
    .param p1, "isShowingConfirmMessage"    # Z

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_4

    sget-object v1, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GlobalActions"

    const-string v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GlobalActions"

    const-string v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bottomViewOnTouch(IZZ)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "isPortrait"    # Z
    .param p3, "isConfirm"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v0, :cond_4

    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    goto :goto_1

    :cond_6
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method calculateDescritionViewHeight(Landroid/view/View;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "diff"    # I

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const v2, 0x10203b5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "statusView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .local v0, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    int-to-double v6, p2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/GlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/server/policy/GlobalActions;->mItemMaxWidthLand:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public checkOnAirplaneConfirmShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "GlobalActions"

    const-string v1, "checkOnAirplaneConfirmShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tw_globalactions_dont_show_again"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    :goto_0
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOnAirplaneConfirmShow : mShowOnAirplaneConfirm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mShowOnAirplaneConfirm:Z

    goto :goto_0
.end method

.method public hasTSafeLock()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .local v3, "result":Z
    const-string v0, "com.skt.t_smart_charge"

    .local v0, "TLOCK_PKG_NAME":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    const-string v6, "com.skt.t_smart_charge"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    move v5, v3

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return v5

    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move v3, v5

    goto :goto_0

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public initStrings()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x1040990

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x1040991

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x1040992

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x1040993

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnablePowerOffForFMM:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x1040994

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableRestartForFMM:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x1040995

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;

    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SURVEY_LOG:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insetLog feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchInside(Landroid/view/View;II)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v0, v5, [I

    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v2, v5, v6

    .local v2, "realRight":I
    aget v5, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v1, v5, v6

    .local v1, "realBottom":I
    aget v5, v0, v4

    if-lt p2, v5, :cond_0

    if-gt p2, v2, :cond_0

    aget v5, v0, v3

    if-lt p3, v5, :cond_0

    if-gt p3, v1, :cond_0

    .local v3, "result":Z
    :goto_0
    return v3

    .end local v3    # "result":Z
    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method item_xposition(I)I
    .locals 2
    .param p1, "item_width"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displaywidth:I

    goto :goto_0
.end method

.method item_yposition(I)I
    .locals 2
    .param p1, "item_height"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->displayheight:I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeAction;

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick  which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_3

    sget-object v2, Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    return-void

    :catch_0
    move-exception v0

    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .restart local v0    # "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_2
.end method

.method public requestUpdateWindowBlur(F)V
    .locals 2
    .param p1, "blurValue"    # F

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 7
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v4, 0x0

    const-string v3, "com.android.service.GlobalAction"

    const-string v5, "0001"

    const-string v6, "null"

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->initStrings()V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .local v0, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isModifying()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "GlobalActions"

    const-string v4, "Cannot use Global Action. because Emergency mode Entering.."

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_2
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    const-string v3, "2.0"

    const-string v5, "version"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .local v1, "pm":Landroid/os/PersonaManager;
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v5

    or-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    const-string v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "pm":Landroid/os/PersonaManager;
    .end local v2    # "versionInfo":Landroid/os/Bundle;
    :cond_3
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    const-string v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device provision check : mDeviceProvisioned ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_4
    move v3, v4

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    goto :goto_2

    :cond_6
    const-string v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    if-eqz v3, :cond_7

    const-string v3, "GlobalActions"

    const-string v5, "showDialog() : call checkAirplaneModeOnOff"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->checkAirplaneModeOnOff()V

    sput-boolean v4, Lcom/android/server/policy/GlobalActions;->mIsFirstCreated:Z

    :cond_7
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto/16 :goto_0
.end method

.method public showErrorMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
