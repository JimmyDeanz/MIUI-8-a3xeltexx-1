.class public Lcom/android/server/smartclip/SpenGestureManagerService;
.super Lcom/samsung/android/smartclip/ISpenGestureService$Stub;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;,
        Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;,
        Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
    }
.end annotation


# static fields
.field private static ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String; = null

.field private static ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String; = null

.field private static ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String; = null

.field private static final EVENT_STATE_PEN_BUTTON_PRESSED:I

.field private static GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String; = null

.field private static GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String; = null

.field private static INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String; = null

.field private static final MAX_META_FILE_COUNT:I = 0x3

.field private static final MAX_SMARTCLIP_REMOTE_REQUEST_DELAY:I = 0xbb8

.field private static final MAX_SYNC_CHECK_AIRBUTTON_DELAY:I = 0x3e8

.field private static final MSG_CREATE_VIEW:I = 0x1

.field private static PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

.field private static PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field private static mAirCommandItemLoggingEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# instance fields
.field private mAirCMDButtonPressTouchDownTime:J

.field private mAirCMDFloatingEnabled:Z

.field private mAirCMDIsPenButtonPressed:Z

.field private mAirCMDIsTouchDowned:Z

.field private mAirCMDLastStartTime:J

.field private mAirCMDPenButtonPressedTime:J

.field private mBatteryOnlineStatus:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCoverOpened:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDataExtractionSync:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEnableLockScreenQuickNote:Z

.field private mIsPenInserted:Z

.field private mIsVisibleSPenGestureView:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLastMetaFileId:I

.field mPenDoubleTap:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mSPenGestureInputChannel:Landroid/view/InputChannel;

.field private mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

.field private mShouldTransferEventToAirButton:Z

.field private mShouldTransferTouchDownEventToAirButton:Z

.field private mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

.field private mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

.field private mSpenUsingStartTime:J

.field private mSpenUspLevel:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "SpenGestureManagerService"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    const-string v0, "android.permission.INJECT_EVENTS"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    const-string v0, "com.sec.android.app.SmartClipService.rakein.RakeInContentActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;

    const-string v0, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;

    const-string v0, "com.sec.android.app.SmartClipService.help.EasyClipTutorialActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String;

    const-string v0, "com.android.server.smartclip.GAC_SELECTED"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;

    const-string v0, "com.android.server.smartclip.GAC_RAKEINSERVICE"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;

    const-string v0, "com.samsung.android.aircommand.intent.action.STATE_CHANGE"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String;

    sput-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I

    return-void

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;-><init>()V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SpenGestureManagerService(Context) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;-><init>()V

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    iput v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z

    iput-boolean v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iput-boolean v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    sput-object p2, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SpenGestureManagerService(Context context, WindowManagerService Wm)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->initSpenGesture()V

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "SPenGestureService"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSettingCondition()V

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V

    .local v7, "settingObserverForSPen":Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;
    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;->observe()V

    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V

    .local v6, "settingObserverForAirCMD":Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;
    invoke-virtual {v6}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->observe()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.pen.INSERT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.cover.OPEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/smartclip/SpenGestureManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/smartclip/SpenGestureManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/view/WindowManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SmartClipView;)Lcom/android/server/smartclip/SmartClipView;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isScreenPinningEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isHapticFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/SpenGestureManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->calculateSpenUsingDuration(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->launchActionMemo()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    return p1
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/smartclip/SpenGestureManagerService;->processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostActivityClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleSmartClip()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->isPackageActivated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/app/enterprise/kioskmode/KioskMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    return-object v0
.end method

.method private allocateMetaTagFilePath()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v1, "/data/clipboard/smartclip"

    .local v1, "baseDirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_0
    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    const-string v3, "%s/SC%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "filePathName":Ljava/lang/String;
    return-object v2
.end method

.method private calculateSpenUsingDuration(J)V
    .locals 7
    .param p1, "elapsedTime"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v0, 0x0

    .local v0, "duration":Ljava/lang/String;
    const/high16 v1, 0x3f800000    # 1.0f

    .local v1, "usingMin":F
    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    div-long v2, p1, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    long-to-float v1, v2

    :cond_0
    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const-string v0, "MoreThan1Hour"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;)V

    return-void

    :cond_1
    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    const-string v0, "30to60Minutes"

    goto :goto_0

    :cond_2
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    const-string v0, "10to30Minutes"

    goto :goto_0

    :cond_3
    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    const-string v0, "5to10Minutes"

    goto :goto_0

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    const-string v0, "1to5Minutes"

    goto :goto_0

    :cond_5
    const-string v0, "1MinuteOrLess"

    goto :goto_0
.end method

.method private checkInputEventInjectionPermission()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .local v0, "havePermission":Z
    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "havePermission":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "havePermission":Z
    :cond_1
    return-void
.end method

.method private checkSettingCondition()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "lock_screen_quick_note"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSettingCondition, LOCK_SCREEN_QUICK_NOTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private checkSmartClipMetaExtractionPermission()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "srcPathName"    # Ljava/lang/String;
    .param p2, "destPathName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .local v7, "ret":Z
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v8, 0x1400

    :try_start_2
    new-array v0, v8, [B

    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v6    # "read":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copyFile : Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return v7

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "buffer":[B
    .end local v6    # "read":I
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_4
    throw v8

    :catch_2
    move-exception v9

    goto :goto_4

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private getFullScreenRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v5, 0x0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v2, "screenRect":Landroid/graphics/Rect;
    return-object v2
.end method

.method private getTopMostActivityClassName()Ljava/lang/String;
    .locals 8

    .prologue
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .local v4, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "runningTaskCount":I
    if-lez v3, :cond_0

    const/4 v2, 0x0

    .local v2, "i":I
    if-ge v2, v3, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .end local v2    # "i":I
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getTopMostPackage()Landroid/content/ComponentName;
    .locals 4

    .prologue
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .local v1, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getTopMostPackage : Failed to get running task info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private initCoverState()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_0
    return v1

    .restart local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_0
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v3, "initCoverState() : state is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_1
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v3, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSpenGesture()V
    .locals 4

    .prologue
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    :cond_0
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->initCoverState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :goto_0
    new-instance v1, Landroid/view/GestureDetector;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/smartclip/SpenGestureManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$3;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    return-void

    :cond_1
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "initSpenGesture() : mCoverManager is null!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isHapticFeedbackEnabled()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    return v1
.end method

.method private isPackageActivated(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "isActivated":Z
    sget-object v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .local v6, "userId":I
    if-eqz v5, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "appInfoSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "appInfoSize":I
    .end local v3    # "j":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    sget-object v7, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPackageActivated : activated="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .restart local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "appInfoSize":I
    .restart local v3    # "j":I
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "appInfoSize":I
    .end local v3    # "j":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    sget-object v7, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v8, "isPackageActivated : Could not get package manager!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isPossibleCapture()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const-string v0, "RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isScreenCaptureEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isScreenCaptureEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "MDM: Screen Capture Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isPossibleSmartClip()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    const-string v0, "true"

    aput-object v0, v4, v7

    .local v4, "selectionArgsTrue":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isSmartClipModeAllowed"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isSmartClipModeAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "MDM: SmartClip Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isScreenPinningEnabled()Z
    .locals 4

    .prologue
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .local v1, "isWindowPinned":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v3, "isScreenPinningEnabled : Screen pinning mode enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private isVzwSetupRunning()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private launchActionMemo()V
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v2

    .local v2, "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    const-string v3, "true"

    const-string v4, "dev.knoxapp.running"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "snoteIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.snote"

    const-string v4, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v4, "launchActionMemo : Trying to launch Snote aciton memo.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v4, "launchActionMemo : Snote action memo launch failed. Trying to launch diotek PenMemo..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "diotekIntent":Landroid/content/Intent;
    const-string v3, "com.diotek.mini_penmemo"

    const-string v4, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v4, "launchActionMemo : Diotek PenMemo launch failed. Sending legacy quick memo broadcasting"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "srcPathName"    # Ljava/lang/String;
    .param p2, "destPathName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .local v1, "ret":Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "srcFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private moveMetaFilesToLocalStorage(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .locals 12
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_0

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v9, "moveMetaFilesToLocalStorage : Empty repository!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v5

    .local v5, "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v6

    .local v6, "type":Ljava/lang/String;
    const-string v9, "file_path_html"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v8, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v4

    .local v4, "srcFilePath":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->allocateMetaTagFilePath()Ljava/lang/String;

    move-result-object v2

    .local v2, "destFilePath":Ljava/lang/String;
    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveMetaFilesToLocalStorage : Moving "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v10, "moveMetaFilesToLocalStorage : File move failed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "destFile":Ljava/io/File;
    invoke-virtual {v1, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v1    # "destFile":Ljava/io/File;
    .end local v2    # "destFilePath":Ljava/lang/String;
    .end local v4    # "srcFilePath":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_3
    move v7, v8

    goto :goto_0
.end method

.method private processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "isButtonPressed"    # Z

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    const/4 v15, 0x1

    .local v15, "supportAirCMDService":Z
    :goto_0
    if-eqz v15, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .end local v15    # "supportAirCMDService":Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .restart local v15    # "supportAirCMDService":Z
    :cond_2
    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    if-eqz p3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    goto :goto_1

    :cond_3
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    goto :goto_1

    :sswitch_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_4

    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    goto :goto_1

    :cond_4
    const/16 v20, 0x0

    goto :goto_2

    :cond_5
    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    move-wide/from16 v22, v0

    sub-long v12, v20, v22

    .local v12, "pressedTime":J
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-lez v20, :cond_0

    const-wide/16 v20, 0x320

    cmp-long v20, v12, v20

    if-gtz v20, :cond_0

    const-string v5, "right"

    .local v5, "direction":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .local v18, "x":I
    sget-object v20, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    const-string v5, "left"

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    sget-object v20, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v21, "Can not start AirCommand. #2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    move-wide/from16 v20, v0

    sub-long v16, v10, v20

    .local v16, "startInterval":J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-lez v20, :cond_8

    const-wide/16 v20, 0x190

    cmp-long v20, v16, v20

    if-gez v20, :cond_8

    sget-object v20, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Can not start AirCommand. #3."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    sget-object v20, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v21, "Start AirCommand. #2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .local v6, "extras":Landroid/os/Bundle;
    const-string v20, "cause"

    const-string v21, "button_pressed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "direction"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .end local v5    # "direction":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v10    # "now":J
    .end local v12    # "pressedTime":J
    .end local v16    # "startInterval":J
    .end local v18    # "x":I
    :cond_9
    const/4 v8, 0x0

    .local v8, "needsToProcessEvent":Z
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    const/4 v8, 0x1

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    if-nez p2, :cond_c

    sget-object v20, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v21, "onInputEvent : Send touch down event to AirCommand"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchDownForGA(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    :cond_c
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-nez v20, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchDownForGA(I)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    sget-object v20, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v21, "onInputEvent : Side button has released"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v20

    if-nez v20, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .restart local v18    # "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .local v19, "y":I
    sget-object v20, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v21, "spengestureservice"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/smartclip/SpenGestureManager;

    .local v14, "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/smartclip/SpenGestureManager;->getAirButtonHitTest(III)I

    move-result v9

    .end local v14    # "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v7

    .local v7, "isKeyguardActivated":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isShowGlobalAirButton()Z

    move-result v4

    .local v4, "canShowAirCommand":Z
    sget-object v20, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onInputEvent : keyguard="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isShowGlobalAirButton="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", hitResult="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_11

    if-nez v7, :cond_11

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_4
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/airbutton/AirButtonImpl;->initSideButtonState()V

    goto :goto_4

    .end local v4    # "canShowAirCommand":Z
    .end local v7    # "isKeyguardActivated":Z
    .end local v9    # "result":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-nez v20, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    :pswitch_4
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    if-nez v20, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchUpForGA(I)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->INTENT_ACTION_AIRCOMMAND_STATE_CHANGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.samsung.android.service.aircommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendLogAirCommandItemSelected(Ljava/lang/String;)V
    .locals 4
    .param p1, "selectedItem"    # Ljava/lang/String;

    .prologue
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.airbutton"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    const-string v3, "AC02"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendLogSpenInsertInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.server.smartclip"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    const-string v3, "SPEN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startAirCommandService(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start AirCommand.Fatory mode ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.service.aircommand"

    const-string v3, "com.samsung.android.service.aircommand.AirCommandService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start AirCommand. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 3

    .prologue
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Z)V

    .local v0, "airButtonWidget":Lcom/samsung/android/airbutton/AirButtonImpl;
    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V

    return-object v0
.end method

.method public getAirButtonHitTest(III)I
    .locals 12
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAirButtonHitTest() : id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .local v7, "windowManager":Landroid/view/IWindowManager;
    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .local v2, "reqId":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "requestData":Landroid/os/Bundle;
    const-string v8, "id"

    invoke-virtual {v3, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "x"

    invoke-virtual {v3, v8, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "y"

    invoke-virtual {v3, v8, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v8, 0x2

    invoke-direct {v4, v2, v8, v3}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .local v4, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    const/4 v8, 0x0

    invoke-interface {v7, p2, p3, v4, v8}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v10, 0x3e8

    invoke-virtual {v8, v2, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v5

    .local v5, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    const/4 v1, -0x1

    .local v1, "hitTestResult":I
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v6, Landroid/os/Bundle;

    .local v6, "resultBundle":Landroid/os/Bundle;
    const-string v8, "result"

    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAirButtonHitTest : Result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    monitor-exit v9

    .end local v1    # "hitTestResult":I
    .end local v2    # "reqId":I
    .end local v3    # "requestData":Landroid/os/Bundle;
    .end local v4    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :goto_1
    return v1

    .restart local v1    # "hitTestResult":I
    .restart local v2    # "reqId":I
    .restart local v3    # "requestData":Landroid/os/Bundle;
    .restart local v4    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v5    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v7    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v10, "getAirButtonHitTest : Result is null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "hitTestResult":I
    .end local v2    # "reqId":I
    .end local v3    # "requestData":Landroid/os/Bundle;
    .end local v4    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v7, "getScrollableRect()"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    :try_start_0
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .local v4, "windowManager":Landroid/view/IWindowManager;
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v1

    .local v1, "reqId":I
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v5, 0x4

    const/4 v7, 0x0

    invoke-direct {v2, v1, v5, v7}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .local v2, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-interface {v4, v5, v7, v2, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v7, 0xbb8

    invoke-virtual {v5, v1, v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v3

    .local v3, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v3, :cond_0

    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getScrollableRect : Result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v5, Landroid/os/Bundle;

    .end local v1    # "reqId":I
    .end local v2    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v3    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v4    # "windowManager":Landroid/view/IWindowManager;
    :goto_0
    return-object v5

    .restart local v1    # "reqId":I
    .restart local v2    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v3    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v4    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v7, "getScrollableRect : Result is null!!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .end local v1    # "reqId":I
    .end local v2    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v3    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v4    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception e : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    goto :goto_0
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "viewHash"    # I
    .param p3, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x0

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v8, "getScrollableViewInfo()"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    :try_start_0
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .local v5, "windowManager":Landroid/view/IWindowManager;
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .local v2, "reqId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "reqData":Landroid/os/Bundle;
    const-string v6, "hashCode"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v6, 0x5

    invoke-direct {v3, v2, v6, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .local v3, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget v8, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-interface {v5, v6, v8, v3, p3}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v8, 0xbb8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v4

    .local v4, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v4, :cond_0

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getScrollableViewInfo : Result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v6, Landroid/os/Bundle;

    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :goto_0
    return-object v6

    .restart local v1    # "reqData":Landroid/os/Bundle;
    .restart local v2    # "reqId":I
    .restart local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v5    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v8, "getScrollableViewInfo : Result is null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception e : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto :goto_0
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 12
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .prologue
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v9, "getSmartClipDataByScreenRect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    :try_start_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getFullScreenRect()Landroid/graphics/Rect;

    move-result-object p1

    :cond_0
    const-string v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .local v7, "windowManager":Landroid/view/IWindowManager;
    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v3

    .local v3, "reqId":I
    new-instance v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    invoke-direct {v4, v3, p1, p3}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;I)V

    .local v4, "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    new-instance v5, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v8, 0x1

    invoke-direct {v5, v3, v8, v4}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .local v5, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-interface {v7, v8, v10, v5, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v10, 0xbb8

    invoke-virtual {v8, v3, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v6

    .local v6, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v6, :cond_2

    iget-object v2, v6, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .local v2, "metaDataResponse":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    const/4 v1, 0x0

    .local v1, "extractedRepository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->moveMetaFilesToLocalStorage(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v8, v2}, Lcom/android/server/smartclip/SmartClipView;->onDataExtractionResponseArrived(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V

    :cond_1
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSmartClipDataByScreenRect : wait is unlocked. Repository = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    .end local v1    # "extractedRepository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .end local v2    # "metaDataResponse":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    .end local v3    # "reqId":I
    .end local v4    # "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v5    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v6    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :goto_0
    return-object v1

    .restart local v3    # "reqId":I
    .restart local v4    # "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .restart local v5    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v6    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v7    # "windowManager":Landroid/view/IWindowManager;
    :cond_2
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v10, "getSmartClipDataByScreenRect : result is null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v9

    goto :goto_0

    .end local v3    # "reqId":I
    .end local v4    # "requestData":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v5    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v6    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v7    # "windowManager":Landroid/view/IWindowManager;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSmartClipDataByScreenRect : Exception e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    .locals 10
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p3, "inputEvents"    # [Landroid/view/InputEvent;
    .param p4, "waitUntilConsume"    # Z
    .param p5, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkInputEventInjectionPermission()V

    :try_start_0
    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .local v5, "windowManager":Landroid/view/IWindowManager;
    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v6, p4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    .local v2, "reqId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "reqData":Landroid/os/Bundle;
    const-string v6, "events"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v6, "waitUntilConsume"

    invoke-virtual {v1, v6, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v6, 0x3

    invoke-direct {v3, v2, v6, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .local v3, "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    invoke-interface {v5, p1, p2, v3, p5}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    const/4 v6, 0x1

    if-ne p4, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v8, 0xbb8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v4

    .local v4, "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    if-eqz v4, :cond_1

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "injectInputEvent : Result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    :cond_0
    :goto_0
    monitor-exit v7

    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :goto_1
    return-void

    .restart local v1    # "reqData":Landroid/os/Bundle;
    .restart local v2    # "reqId":I
    .restart local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .restart local v5    # "windowManager":Landroid/view/IWindowManager;
    :cond_1
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v8, "injectInputEvent : Result is null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "reqData":Landroid/os/Bundle;
    .end local v2    # "reqId":I
    .end local v3    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .end local v4    # "result":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .end local v5    # "windowManager":Landroid/view/IWindowManager;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "injectInputEvent : Exception thrown! e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowGlobalAirButton()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "setupWizard":I
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    .local v0, "isFactoryMode":Z
    if-ne v0, v2, :cond_0

    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v5, "isShowGlobalAirButton : Factory mode enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isVzwSetupRunning()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public keyguardOn()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "SpenGestureManagerService :isKeyguardLocked : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyguardSecureOn()Z
    .locals 3

    .prologue
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "SpenGestureManagerService :isKeyguardSecure : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    .locals 3
    .param p1, "result"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSmartClipRemoteRequestResult : requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->notifyResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "sendSmartClipRemoteRequestResult : result is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFocusWindow(I)V
    .locals 1
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipView;->setFocusWindow(I)V

    :cond_0
    return-void
.end method
