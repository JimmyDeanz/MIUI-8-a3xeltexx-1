.class public Lcom/android/server/cocktailbar/CocktailBarManagerService;
.super Lcom/android/server/SystemService;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerService$1;,
        Lcom/android/server/cocktailbar/CocktailBarManagerService$Sales;,
        Lcom/android/server/cocktailbar/CocktailBarManagerService$LocalService;,
        Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CocktailBarManagerService"


# instance fields
.field private final mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

.field private final mHandler:Landroid/os/Handler;

.field private mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/CocktailBarManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->turnOffWakupCocktailBarFromPowerManagerInternal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/CocktailBarManagerService;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->wakupCocktailBarFromWindowManagerInternal(ZII)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->updateSysfsGripDisableFromWindowManagerInternal(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->updateCocktailBarStateFromWindowManagerInternal(I)V

    return-void
.end method

.method private turnOffWakupCocktailBarFromPowerManagerInternal(ILjava/lang/String;)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/server/cocktailbar/CocktailBarManagerService$Sales;->JAPAN:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getCocktaiBarWakeUpStateInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    and-int/2addr v0, p1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "AreaMailNotificationWakeLock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AlertOnKeyguard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jp.co.nttdocomo.lcsapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const-string v0, "CocktailBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffWakupCocktailBarFromPowerManagerInternal : flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mTurnOffWakeUpCocktailBarRunnable:Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method private updateCocktailBarStateFromWindowManagerInternal(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->updateCocktailBarStateFromSystemInternal(I)V

    return-void
.end method

.method private updateSysfsGripDisableFromWindowManagerInternal(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsGripDisable(Z)V

    return-void
.end method

.method private wakupCocktailBarFromWindowManagerInternal(ZII)V
    .locals 1
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->wakeupCocktailBarInternal(ZII)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CocktailBarManagerService"

    const-string v1, "PHASE_THIRD_PARTY_APPS_CAN_START"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->systemRunning(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CocktailBarManagerService"

    const-string v1, "PHASE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->systemRunning(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const-string v0, "CocktailBarService"

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerService$LocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
