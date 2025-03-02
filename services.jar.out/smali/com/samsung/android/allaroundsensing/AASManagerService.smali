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
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/IAASManager$Stub;-><init>()V

    .line 39
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->DEBUG:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBrightnessValue:F

    return v0
.end method

.method public getBrightnessValueEnable()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBVenable:Z

    return v0
.end method

.method public setBrightnessValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 61
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBrightnessValue:F

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
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
    .line 68
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/allaroundsensing/AASManagerService;->mBVenable:Z

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
