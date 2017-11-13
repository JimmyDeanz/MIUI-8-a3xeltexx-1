.class public Lcom/samsung/android/allaroundsensing/AASManagerService;
.super Lcom/samsung/android/allaroundsensing/IAASManager$Stub;
.source "AASManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AASManagerService"


# instance fields
.field private final DEBUG:Z

.field private mBVenable:Z

.field private mBrightnessValue:F

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub;-><init>()V

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBrightnessValue:F

    return v0
.end method

.method public getBrightnessValueEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBVenable:Z

    return v0
.end method

.method public setBrightnessValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBrightnessValue:F

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightnessValueEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBVenable:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
