.class public Lcom/samsung/android/mscs/MdnieScenarioControlService;
.super Ljava/lang/Object;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;,
        Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;,
        Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final MSC_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field private static final TAG:Ljava/lang/String; = "MdnieScenarioControlService"


# instance fields
.field private final ACTION_DETAIL_VIEW_STATE_IN:Ljava/lang/String;

.field private ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_DETAIL_VIEW_STATE_OUT:Ljava/lang/String;

.field private ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

.field private ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

.field private ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

.field private ANDROID_APP_LAUNCHER:[Ljava/lang/String;

.field private CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field private CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private final DEBUG:Z

.field private DMB_APP_LAUNCHER:[Ljava/lang/String;

.field private EBOOK_APP_LAUNCHER:[Ljava/lang/String;

.field private EMAIL_APP_LAUNCHER:[Ljava/lang/String;

.field private final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

.field private FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

.field private GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

.field private GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private IS_CAMERA_APP_DEBOUNCE_MILLIS:I

.field private IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

.field private MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

.field private MDNIE_GAME_LOW_MODE:Ljava/lang/String;

.field private MDNIE_GAME_MID_MODE:Ljava/lang/String;

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_CAMERA_MODE:I

.field private final MSG_SET_DMB_MODE:I

.field private final MSG_SET_EBOOK_MODE:I

.field private final MSG_SET_EMAIL_MODE:I

.field private final MSG_SET_GALLERY_MODE:I

.field private final MSG_SET_GALLERY_OUT_MODE:I

.field private final MSG_SET_GAME_HIGH_MODE:I

.field private final MSG_SET_GAME_LOW_MODE:I

.field private final MSG_SET_GAME_MID_MODE:I

.field private final MSG_SET_GAME_OUT_MODE:I

.field private final MSG_SET_SAMSUNG_VIDEO_MODE:I

.field private final MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

.field private final MSG_SET_UI_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_SET_VIDEO_OUT_MODE:I

.field private READING_SCENARIO_PATH:Ljava/lang/String;

.field private SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private SCENARIO_VALUE:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private VIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private first_MultiWindowOn:Z

.field private isLockScreenOn:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mCameraScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDMBScenarioEnabled:Z

.field private mDetailViewState:Z

.field private mEBookScenarioIntented:Z

.field private mEbookScenarioEnabled:Z

.field private mEmailScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mForegroundThreadWork:Z

.field private mGalleryAppLauncher:Z

.field private mGalleryModeFirst:Z

.field private mGalleryMultiView:Z

.field private mGalleryMultiViewLauncher:Z

.field private mGalleryOptionScenarioEnabled:Z

.field private mGalleryScenarioEnabled:Z

.field private mGameModeLauncher:Z

.field private mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mIsFromCamera:Z

.field private mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mNotGoUI:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingEnabled:Z

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mQuickViewState:Z

.field private mSVideoAppLauncher:Z

.field private mSVideoOptionScenarioEnabled:Z

.field private mSVideoScenarioEnabled:Z

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

.field private mUIScenarioEnabled:Z

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseMdnieScenarioControlConfig:Z

.field private mVideoAppLauncher:Z

.field private mVideoEnd:Z

.field private mVideoEndNotUI:Z

.field private mVideoScenarioEnabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v4, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->DEBUG:Z

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_FOREGROUND_APP:I

    iput v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_RESCAN_FOREGROUND_APP:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_UI_MODE:I

    const/4 v4, 0x3

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_BROWSER_MODE:I

    const/4 v4, 0x4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_GALLERY_MODE:I

    const/4 v4, 0x5

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_CAMERA_MODE:I

    const/4 v4, 0x6

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_VIDEO_MODE:I

    const/4 v4, 0x7

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_MODE:I

    const/16 v4, 0x8

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_EMAIL_MODE:I

    const/16 v4, 0x9

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_EBOOK_MODE:I

    const/16 v4, 0xa

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_DMB_MODE:I

    const/16 v4, 0xb

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_GALLERY_OUT_MODE:I

    const/16 v4, 0xc

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_VIDEO_OUT_MODE:I

    const/16 v4, 0xd

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

    const/16 v4, 0xe

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_GAME_LOW_MODE:I

    const/16 v4, 0xf

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_GAME_MID_MODE:I

    const/16 v4, 0x10

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_GAME_HIGH_MODE:I

    const/16 v4, 0x11

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MSG_SET_GAME_OUT_MODE:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    iput v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    const-string v4, "screen_mode_automatic_setting"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string v4, "screen_mode_setting"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string v4, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    const-string v4, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    const-string v4, "ACTION_DETAIL_VIEW_STATE_IN"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN:Ljava/lang/String;

    const-string v4, "ACTION_DETAIL_VIEW_STATE_OUT"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT:Ljava/lang/String;

    const-string v4, "ACTION_MOVIE_PLAYER_STATE_IN"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

    const-string v4, "ACTION_MOVIE_PLAYER_STATE_OUT"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

    const-string v4, "ACTION_GAME_MODE_STATE_IN"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

    const-string v4, "ACTION_GAME_MODE_STATE_OUT"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

    const-string v4, "MDNIE_GAME_LOW_MODE"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MDNIE_GAME_LOW_MODE:Ljava/lang/String;

    const-string v4, "MDNIE_GAME_MID_MODE"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MDNIE_GAME_MID_MODE:Ljava/lang/String;

    const-string v4, "MDNIE_GAME_HIGH_MODE"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

    const-string v4, "/sys/class/mdnie/mdnie/scenario"

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    iput-object v7, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEnableCondition:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mScreenStateOn:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mNotGoUI:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEndNotUI:Z

    iput-object v7, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-object v7, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mPowerManager:Landroid/os/PowerManager;

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->isLockScreenOn:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->first_MultiWindowOn:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mForegroundThreadWork:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryModeFirst:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mColorBlindEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mAutoModeEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEBookScenarioIntented:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoAppLauncher:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryMultiView:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGameModeLauncher:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mIsFromCamera:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDetailViewState:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mQuickViewState:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEnd:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingCondition:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mPowerSavingEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mIsFirstStart:Z

    iput-boolean v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverState:Z

    new-instance v4, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService$1;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v4, Lcom/samsung/android/mscs/MdnieScenarioControlService$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService$2;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    iput-object p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "MdnieScenarioControlServiceThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    iget-object v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    const-string v4, "sys.mdniecontrolservice.mscon"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    iget-object v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v4, "lcd_curtain"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "high_contrast"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "color_blind"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "powersaving_switch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "ultra_powersaving_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "screen_mode_automatic_setting"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "ACTION_DETAIL_VIEW_STATE_IN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "ACTION_DETAIL_VIEW_STATE_OUT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "ACTION_MOVIE_PLAYER_STATE_IN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "ACTION_MOVIE_PLAYER_STATE_OUT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "ACTION_GAME_MODE_STATE_IN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "ACTION_GAME_MODE_STATE_OUT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;

    invoke-direct {v5, p0, v7}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;Lcom/samsung/android/mscs/MdnieScenarioControlService$1;)V

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v5, "mDNIe"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdnie/MdnieManager;

    iput-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    iget-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    if-eqz v4, :cond_0

    const-string v4, "sys.mdniecontrolservice.mscon"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean v8, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mScreenStateOn:Z

    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setting_is_changed()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .local v2, "mIActivityManager":Landroid/app/IActivityManager;
    iget-object v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "mIActivityManager":Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MdnieScenarioControlService"

    const-string v5, "failed to registerProcessObserver"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1002(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDetailViewState:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEnd:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGameModeLauncher:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MDNIE_GAME_LOW_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MDNIE_GAME_MID_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverState:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/mscs/MdnieScenarioControlService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->monitorForegroundActivity(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setVideoMode(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setSVideoMode(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setBrowserMode()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setGalleryMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/mscs/MdnieScenarioControlService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setCameraMode()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setEmailMode()V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setEbookMode()V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setDMBMode()V

    return-void
.end method

.method static synthetic access$3500(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setUIMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    return p1
.end method

.method static synthetic access$502(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->first_MultiWindowOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->receive_multi_window_on_intent()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/mscs/MdnieScenarioControlService;)Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/mscs/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .prologue
    iget v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x80

    const/4 v11, 0x0

    const/4 v6, 0x0

    .local v6, "in":Ljava/io/InputStream;
    const/16 v0, 0x80

    .local v0, "MAX_BUFFER_SIZE":I
    new-array v1, v12, [B

    .local v1, "buffer":[B
    const/4 v9, 0x0

    .local v9, "value":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v12, :cond_0

    aput-byte v11, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "in":Ljava/io/InputStream;
    .local v7, "in":Ljava/io/InputStream;
    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eqz v8, :cond_1

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v8, -0x1

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v1, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .end local v9    # "value":Ljava/lang/String;
    .local v10, "value":Ljava/lang/String;
    move-object v9, v10

    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-object v9

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .local v3, "ee":Ljava/io/IOException;
    const-string v11, "MdnieScenarioControlService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v3    # "ee":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .local v4, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v11, "MdnieScenarioControlService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v11, "MdnieScenarioControlService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "ee":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v11, "MdnieScenarioControlService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v3

    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v11, "MdnieScenarioControlService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ee":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v11

    :catch_5
    move-exception v3

    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v12, "MdnieScenarioControlService"

    const-string v13, "File Close error"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v3    # "ee":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_4

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :cond_5
    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private mdnie_reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoAppLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mIsFromCamera:Z

    return-void
.end method

.method private monitorForegroundActivity(Ljava/lang/String;II)V
    .locals 26
    .param p1, "packageName_className"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/16 v16, 0x0

    .local v16, "isUI":Z
    const/4 v5, 0x0

    .local v5, "isBrowser":Z
    const/4 v10, 0x0

    .local v10, "isGallery":Z
    const/4 v12, 0x0

    .local v12, "isGallery_Multi_View":Z
    const/4 v13, 0x0

    .local v13, "isGallery_from_camera":Z
    const/4 v6, 0x0

    .local v6, "isCamera":Z
    const/4 v14, 0x0

    .local v14, "isSVideo":Z
    const/4 v15, 0x0

    .local v15, "isSVideoOption":Z
    const/16 v17, 0x0

    .local v17, "isVideo":Z
    const/4 v9, 0x0

    .local v9, "isEmail":Z
    const/4 v8, 0x0

    .local v8, "isEbook":Z
    const/4 v7, 0x0

    .local v7, "isDmb":Z
    const/4 v11, 0x0

    .local v11, "isGalleryOption":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    const/16 v16, 0x1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/4 v5, 0x1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/4 v5, 0x1

    :cond_2
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/4 v10, 0x1

    :cond_3
    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/4 v12, 0x1

    :cond_4
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_14

    const/4 v11, 0x1

    :cond_5
    const/16 v18, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/4 v13, 0x1

    :cond_6
    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/4 v6, 0x1

    :cond_7
    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/4 v14, 0x1

    :cond_8
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_18

    const/4 v15, 0x1

    :cond_9
    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/16 v17, 0x1

    :cond_a
    const/4 v4, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/4 v9, 0x1

    :cond_b
    const/4 v4, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1b

    const/4 v8, 0x1

    :cond_c
    const/4 v4, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/4 v7, 0x1

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1d

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    :cond_e
    :goto_e
    return-void

    .end local v18    # "j":I
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .restart local v18    # "j":I
    :cond_12
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    :cond_13
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    :cond_14
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    :cond_15
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1e

    if-eqz v10, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryModeFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDetailViewState:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryModeFirst:Z

    goto/16 :goto_e

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1f

    if-eqz v12, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_20

    if-eqz v11, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_24

    if-eqz v13, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryModeFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDetailViewState:Z

    move/from16 v19, v0

    if-nez v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryModeFirst:Z

    :cond_21
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->first_MultiWindowOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .local v20, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->first_MultiWindowOn:Z

    .end local v20    # "time":J
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mIsFromCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mIsFromCamera:Z

    goto/16 :goto_e

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_f

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_25

    if-eqz v6, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .restart local v20    # "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_e

    .end local v20    # "time":J
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_27

    if-eqz v14, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->first_MultiWindowOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->first_MultiWindowOn:Z

    goto/16 :goto_e

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_28

    if-eqz v15, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_29

    if-eqz v17, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2a

    if-eqz v9, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2b

    if-eqz v8, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2c

    if-eqz v7, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2d

    if-eqz v16, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_2d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .restart local v20    # "time":J
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->scenario_enable_reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_e
.end method

.method private receive_multi_window_on_intent()V
    .locals 5

    .prologue
    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private receive_screen_off_intent()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mScreenStateOn:Z

    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEnableCondition:Z

    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    return-void
.end method

.method private receive_screen_on_intent()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mScreenStateOn:Z

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEnableCondition:Z

    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->setUIMode()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private scenario_enable_reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    return-void
.end method

.method private setBrowserMode()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "BROWSER_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setBrowserMode from Browser function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setCameraMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    iput-boolean v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mIsFromCamera:Z

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mQuickViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mQuickViewState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVideoEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEnd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mQuickViewState:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEnd:Z

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "CAMERA_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setCameraMode from Camera function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iput-boolean v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryModeFirst:Z

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mQuickViewState:Z

    iput-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEnd:Z

    goto :goto_1
.end method

.method private setDMBMode()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "TDMB_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setDMBMode from DMB function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setEbookMode()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "eBOOK_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setEbookMode from Ebook function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setEmailMode()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "EMAIL_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setEmailMode from Email function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setGalleryMode(Z)V
    .locals 6
    .param p1, "mGalleryAppLauncher"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGalleryAppLauncher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GALLERY_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setGalleryMode from Gallery function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mNotGoUI:Z

    iput-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGalleryModeFirst:Z

    iput-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEndNotUI:Z

    iput-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mQuickViewState:Z

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    iput-boolean v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEndNotUI:Z

    iput-boolean v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mQuickViewState:Z

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNotGoUI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mNotGoUI:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mNotGoUI:Z

    if-nez v1, :cond_3

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v1, v5}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setUIMode from Gallery function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mNotGoUI:Z

    if-eqz v1, :cond_1

    iput-boolean v5, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mNotGoUI:Z

    goto :goto_1
.end method

.method private setGameMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "LOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GAME_LOW_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setGameMode(LOW) from Game function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v1, "MID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GAME_MID_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setGameMode(MID) from Game function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v1, "HIGH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GAME_HIGH_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setGameMode(HIGH) from Game function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const-string v1, "OUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setUIMode from Game function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setSVideoMode(Z)V
    .locals 5
    .param p1, "mSVideoAppLauncher"    # Z

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSVideoAppLauncher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "VIDEO_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setVideoMode from SVideo function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEndNotUI:Z

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoEndNotUI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEndNotUI:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEndNotUI:Z

    if-nez v1, :cond_1

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setUIMode from SVideo function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setUIMode()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGameModeLauncher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGameModeLauncher:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mGameModeLauncher:Z

    if-nez v1, :cond_0

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setUIMode from UI function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setVideoMode(Z)V
    .locals 5
    .param p1, "mVideoAppLauncher"    # Z

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoAppLauncher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "VIDEO_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setVideoMode from Video function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEndNotUI:Z

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mdnie_reset()V

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoEndNotUI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEndNotUI:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mVideoEndNotUI:Z

    if-nez v1, :cond_1

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "setUIMode from Video function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setting_is_changed()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    const-string v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    const-string v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mColorBlindEnabled:Z

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mPowerSavingEnabled:Z

    const-string v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mAutoModeEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mColorBlindEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mPowerSavingEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingCondition:Z

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v2, :cond_9

    :goto_7
    iput-boolean v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEnableCondition:Z

    iget-boolean v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mEnableCondition:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_8
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_4

    :cond_7
    move v2, v4

    goto :goto_5

    :cond_8
    move v2, v4

    goto :goto_6

    :cond_9
    move v3, v4

    goto :goto_7

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MdnieScenarioControlService"

    const-string v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_8
.end method
