.class public Lcom/android/server/wm/VRFlingerHelper;
.super Ljava/lang/Object;
.source "VRFlingerHelper.java"


# static fields
.field public static final FEATURE_VRFLINGER:Z

.field private static mInstance:Lcom/android/server/wm/VRFlingerHelper;

.field private static mService:Lcom/android/server/am/ActivityManagerService;


# instance fields
.field private mAnimationScales:[F

.field private mGpuMaxHelper:Landroid/os/DVFSHelper;

.field private mGpuMinHelper:Landroid/os/DVFSHelper;

.field private mLauncherPackageName:Ljava/lang/String;

.field mSkipVRAppList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/wm/VRFlingerHelper;->mInstance:Lcom/android/server/wm/VRFlingerHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mSkipVRAppList:Ljava/util/Vector;

    iput-object v1, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lcom/android/server/wm/VRFlingerHelper;->mLauncherPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wm/VRFlingerHelper;->fillVRSkipList()V

    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private fillVRSkipList()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mSkipVRAppList:Ljava/util/Vector;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/VRFlingerHelper;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wm/VRFlingerHelper;->mInstance:Lcom/android/server/wm/VRFlingerHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/VRFlingerHelper;

    invoke-direct {v0}, Lcom/android/server/wm/VRFlingerHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/VRFlingerHelper;->mInstance:Lcom/android/server/wm/VRFlingerHelper;

    :cond_0
    sget-object v0, Lcom/android/server/wm/VRFlingerHelper;->mInstance:Lcom/android/server/wm/VRFlingerHelper;

    return-object v0
.end method


# virtual methods
.method public getLancherPackage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mLauncherPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isVRFlingerMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "isVRFlingerMode":Z
    sget-object v1, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v1, :cond_0

    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    sput-object v1, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    :cond_0
    sget-object v1, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isVRFlingerMode()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public releaseGPUMhz()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public restoreAnimationScales(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mAnimationScales:[F

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->setAnimationScales([F)V

    return-void
.end method

.method public setAnimationScales(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getAnimationScales()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/VRFlingerHelper;->mAnimationScales:[F

    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .local v0, "zeroAnimScales":[F
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->setAnimationScales([F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setMaxGPUlevel(Landroid/content/Context;I)V
    .locals 10
    .param p1, "cntxt"    # Landroid/content/Context;
    .param p2, "freq"    # I

    .prologue
    const/4 v6, 0x0

    .local v6, "gpuTableSize":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "ident":J
    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "VR_GPU_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "maxIdx":I
    if-le p2, v7, :cond_2

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "maxIdx":I
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .restart local v7    # "maxIdx":I
    :cond_2
    sub-int v6, v7, p2

    goto :goto_0

    .end local v7    # "maxIdx":I
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setMinGPUlevel(Landroid/content/Context;I)V
    .locals 10
    .param p1, "cntxt"    # Landroid/content/Context;
    .param p2, "freq"    # I

    .prologue
    const/4 v6, 0x0

    .local v6, "gpuTableSize":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "ident":J
    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "VR_GPU_MIN"

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "maxIdx":I
    if-le p2, v7, :cond_2

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "maxIdx":I
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .restart local v7    # "maxIdx":I
    :cond_2
    sub-int v6, v7, p2

    goto :goto_0

    .end local v7    # "maxIdx":I
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setVRFlingerLauncher(Ljava/lang/String;)V
    .locals 0
    .param p1, "_package"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/VRFlingerHelper;->mLauncherPackageName:Ljava/lang/String;

    return-void
.end method

.method public skipPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
