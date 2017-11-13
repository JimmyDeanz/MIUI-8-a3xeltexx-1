.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field private isCocktailBarPresent:Z

.field private volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private volatile mBars:[Lcom/android/internal/statusbar/IStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mDisableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabled1:I

.field private mDisabled2:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHandler:Landroid/os/Handler;

.field private mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mLock:Ljava/lang/Object;

.field private mMenuVisible:Z

.field private mMenuVisibles:[Z

.field private mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelExpandState:Z

.field private mQsPanelExpandState:Z

.field private mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

.field private mShowImeSwitcher:Z

.field private mSysUiVisToken:Landroid/os/IBinder;

.field private mSystemUiVisibilities:[I

.field private mSystemUiVisibility:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v2}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    iput v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    iput v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    iput v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    iput-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    iput v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    iput-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->isCocktailBarPresent:Z

    iput-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandState:Z

    iput-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandState:Z

    new-array v2, v5, [Lcom/android/internal/statusbar/IStatusBar;

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;

    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibilities:[I

    new-array v2, v5, [Z

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisibles:[Z

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    const v3, 0x107000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->isCocktailBarPresent:Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibilities:[I

    aput v4, v2, v0

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisibles:[Z

    aput-boolean v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/notification/NotificationDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationDelegate;

    .prologue
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/statusbar/StatusBarManagerService;)[Lcom/android/internal/statusbar/IStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method private disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "whichFlag"    # I

    .prologue
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v0

    .local v0, "net1":I
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v1

    .local v1, "net2":I
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    if-eq v1, v2, :cond_2

    :cond_0
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->disable(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->isCocktailBarPresent:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->setDisableTickerView(I)V

    :cond_2
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private enforceExpandStatusBar()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceStatusBar()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceStatusBarService()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getService()Landroid/app/enterprise/IRestrictionPolicy;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    return-object v0
.end method

.method private updateUiVisibilityLocked(II)V
    .locals 2
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$6;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateUiVisibilityLockedToDisplay(III)V
    .locals 2
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "displayId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibilities:[I

    aget v0, v0, p3

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibilities:[I

    aput p1, v0, p3

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$7;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public appTransitionPending()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionPending()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public appTransitionStarting(JJ)V
    .locals 1
    .param p1, "statusBarAnimationsStartTime"    # J
    .param p3, "statusBarAnimationsDuration"    # J

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionStarting(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public applyEDMPolicy()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->applyEDMPolicy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancelPreloadRecentApps()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearNotificationEffects()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public collapsePanels()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableAsUser(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, p2}, Lcom/android/internal/statusbar/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisabled1=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisabled2=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .local v2, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] userId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " what1=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " what2=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " token="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableList.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "tok":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "tok":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mNotificationList.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "tok":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v2    # "tok":Ljava/lang/String;
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3

    :cond_3
    :try_start_9
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v3
.end method

.method public expandNotificationsPanel()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public expandSettingsPanel()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method gatherDisableActionsLocked(II)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "net":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .local v5, "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v6, p1, :cond_0

    if-ne p2, v7, :cond_1

    iget v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    :goto_1
    or-int/2addr v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    goto :goto_1

    .end local v5    # "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_2
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->getService()Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v7, 0x1

    invoke-interface {v6, v7, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const/high16 v6, 0x10000

    or-int/2addr v4, v6

    :cond_5
    :goto_2
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "StatusBarManagerService"

    const-string v7, "Failed talking with restriction policy"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getDisableFlags()I
    .locals 3

    .prologue
    const-string v0, "StatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisabled=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    return v0
.end method

.method public getPanelExpandState()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandState:Z

    return v0
.end method

.method public getQuickSettingPanelExpandState()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandState:Z

    return v0
.end method

.method public hideRecentApps(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "which"    # I

    .prologue
    const/4 v9, 0x0

    const-string v6, "StatusBarManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "manageDisableList userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " what=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "flagdbg":Ljava/lang/StringBuilder;
    const/high16 v6, 0x10000

    and-int/2addr v6, p2

    if-eqz v6, :cond_1

    const-string v6, "EXPAND "

    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x20000

    and-int/2addr v6, p2

    if-eqz v6, :cond_2

    const-string v6, "ICONS "

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x40000

    and-int/2addr v6, p2

    if-eqz v6, :cond_3

    const-string v6, "ALERTS "

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x80000

    and-int/2addr v6, p2

    if-eqz v6, :cond_4

    const-string v6, "TICKER "

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x100000

    and-int/2addr v6, p2

    if-eqz v6, :cond_5

    const-string v6, "SYSTEM_INFO "

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x400000

    and-int/2addr v6, p2

    if-eqz v6, :cond_6

    const-string v6, "BACK "

    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x200000

    and-int/2addr v6, p2

    if-eqz v6, :cond_7

    const-string v6, "HOME "

    :goto_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x1000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_8

    const-string v6, "RECENT "

    :goto_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x800000

    and-int/2addr v6, p2

    if-eqz v6, :cond_9

    const-string v6, "CLOCK "

    :goto_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x2000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_a

    const-string v6, "SEARCH "

    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v6, "CLEAR"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_b

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_1
    const-string v6, ""

    goto/16 :goto_0

    :cond_2
    const-string v6, ""

    goto/16 :goto_1

    :cond_3
    const-string v6, ""

    goto/16 :goto_2

    :cond_4
    const-string v6, ""

    goto/16 :goto_3

    :cond_5
    const-string v6, ""

    goto :goto_4

    :cond_6
    const-string v6, ""

    goto :goto_5

    :cond_7
    const-string v6, ""

    goto :goto_6

    :cond_8
    const-string v6, ""

    goto :goto_7

    :cond_9
    const-string v6, ""

    goto :goto_8

    :cond_a
    const-string v6, ""

    goto :goto_9

    :cond_b
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_c

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .local v4, "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget-object v6, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v6, p3, :cond_f

    iget v6, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v6, p1, :cond_f

    move-object v5, v4

    .end local v4    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_c
    if-eqz p2, :cond_d

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_10

    :cond_d
    if-eqz v5, :cond_e

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v6, v5, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_e
    :goto_c
    return-void

    .restart local v4    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .end local v4    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_10
    if-nez v5, :cond_11

    new-instance v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .end local v5    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    .restart local v5    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iput p1, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p3, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    const/4 v6, 0x1

    if-ne p5, v6, :cond_12

    iput p2, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    :goto_d
    iput-object p3, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    iput-object p4, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_c

    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_c

    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_12
    iput p2, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    goto :goto_d
.end method

.method public notifyRecentPanelVisiblity(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->notifyRecentPanelVisiblity(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClearAllNotifications(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationActionClick(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClearWithReason(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "reasonClear"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 3
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelHidden()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .locals 3
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "numItems"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public preloadRecentApps()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    .locals 6
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p3, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerStatusBar bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_1
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v4

    aput v4, p3, v2

    const/4 v2, 0x1

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    aput v4, p3, v2

    const/4 v4, 0x2

    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    aput v2, p3, v4

    const/4 v2, 0x3

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    aput v4, p3, v2

    const/4 v2, 0x4

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    aput v4, p3, v2

    const/4 v2, 0x5

    iget-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    if-eqz v4, :cond_1

    :goto_1
    aput v0, p3, v2

    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v1

    aput v1, p3, v0

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public registerStatusBarToDisplay(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;I)V
    .locals 6
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p3, "switches"    # [I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerStatusBarToDisplay("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;

    aput-object p1, v2, p5

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_1
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v4

    aput v4, p3, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibilities:[I

    aget v4, v4, p5

    aput v4, p3, v2

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisibles:[Z

    aget-boolean v2, v2, p5

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    aput v2, p3, v4

    const/4 v2, 0x3

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    aput v4, p3, v2

    const/4 v2, 0x4

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    aput v4, p3, v2

    const/4 v2, 0x5

    iget-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    if-eqz v4, :cond_2

    :goto_1
    aput v0, p3, v2

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p5, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid status bar icon slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "index":I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    const-string v1, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeIcon slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public requestStatusBarOpen()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    :cond_0
    return-void
.end method

.method public setCallBackground(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setCallBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    iget-object v8, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    .local v7, "index":I
    if-gez v7, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status bar icon slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v7    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v7    # "index":I
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    const-string v1, "StatusBarManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIcon slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v7, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v7, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, "index":I
    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "index":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_1

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    const-string v2, "StatusBarManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIconVisibility slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_2

    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    iput-boolean p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService$5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/os/IBinder;IIZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKnoxDesktopTaskBar(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setKnoxDesktopTaskBar(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMultiWindowBg(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "StatusBarManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mw p:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",o:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "t"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setMultiWindowBg(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "f"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setPanelExpandState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandState:Z

    return-void
.end method

.method public setQuickSettingPanelExpandState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandState:Z

    return-void
.end method

.method public setSystemUiVisibility(IILjava/lang/String;)V
    .locals 7
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(II)V

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/high16 v0, 0x3ff0000

    and-int v2, p1, v0

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemUiVisibilityToDisplay(IILjava/lang/String;I)V
    .locals 7
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLockedToDisplay(III)V

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/high16 v0, 0x3ff0000

    and-int v2, p1, v0

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWindowState(II)V
    .locals 1
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWindowStateToDisplay(III)V
    .locals 1
    .param p1, "window"    # I
    .param p2, "state"    # I
    .param p3, "displayId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;

    aget-object v0, v0, p3

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;

    aget-object v0, v0, p3

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showRecentApps(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggleNotificationPanel()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleNotificationPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggleRecentApps()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "menuVisible"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public topAppWindowChangedToDisplay(ZI)V
    .locals 3
    .param p1, "menuVisible"    # Z
    .param p2, "displayId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisibles:[Z

    aput-boolean p1, v0, p2

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/statusbar/StatusBarManagerService$4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateKnoxDesktopTaskBar(IIIIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 8
    .param p1, "flag"    # I
    .param p2, "taskId"    # I
    .param p3, "userId"    # I
    .param p4, "stackId"    # I
    .param p5, "stackType"    # I
    .param p6, "cn"    # Landroid/content/ComponentName;
    .param p7, "callingPkg"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBar;->updateKnoxDesktopTaskBar(IIIIILandroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
