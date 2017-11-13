.class public final Lcom/samsung/android/allaroundsensing/AASManager;
.super Ljava/lang/Object;
.source "AASManager.java"


# static fields
.field private static RETURN_ERROR:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "AASManager"


# instance fields
.field final mService:Lcom/samsung/android/allaroundsensing/IAASManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/allaroundsensing/AASManager;->RETURN_ERROR:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/allaroundsensing/IAASManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/allaroundsensing/IAASManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "AASManager"

    const-string v1, "In Constructor Stub-Service(IAASManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const-string v0, "AASManager"

    const-string v1, "Error AASManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/allaroundsensing/AASManager;->RETURN_ERROR:F

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1}, Lcom/samsung/android/allaroundsensing/IAASManager;->getBrightnessValue()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/allaroundsensing/AASManager;->RETURN_ERROR:F

    goto :goto_0
.end method

.method public getBrightnessValueEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v2}, Lcom/samsung/android/allaroundsensing/IAASManager;->getBrightnessValueEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setBrightnessValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/IAASManager;->setBrightnessValue(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AASManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setBrightnessValue(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    return-void
.end method

.method public setBrightnessValueEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AASManager;->mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/IAASManager;->setBrightnessValueEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AASManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
