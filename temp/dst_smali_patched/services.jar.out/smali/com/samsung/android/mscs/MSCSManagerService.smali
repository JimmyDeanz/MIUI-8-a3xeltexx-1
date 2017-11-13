.class public Lcom/samsung/android/mscs/MSCSManagerService;
.super Lcom/samsung/android/mscs/IMSCSManager$Stub;
.source "MSCSManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSCSManagerService"


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mUseMdnieScenarioControlServiceConfig:Z

.field private mVGalleryEnable:Z

.field private mVideoEnable:Z

.field private mscsService:Lcom/samsung/android/mscs/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/mscs/IMSCSManager$Stub;-><init>()V

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MSCSManagerService;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mscsService:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    iput-object p1, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    iget-boolean v0, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;

    invoke-direct {v0, p1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mscsService:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    :cond_0
    return-void
.end method


# virtual methods
.method public getGalleryModeEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mVGalleryEnable:Z

    return v0
.end method

.method public getVideoModeEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mVideoEnable:Z

    return v0
.end method

.method public setGalleryModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    iget-object v1, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mVGalleryEnable:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVideoModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    iget-object v1, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/mscs/MSCSManagerService;->mVideoEnable:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
