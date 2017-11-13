.class public final Lcom/samsung/android/mscs/MSCSManager;
.super Ljava/lang/Object;
.source "MSCSManager.java"


# static fields
.field private static RETURN_ERROR:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "MSCSManager"


# instance fields
.field final mService:Lcom/samsung/android/mscs/IMSCSManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/mscs/MSCSManager;->RETURN_ERROR:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mscs/IMSCSManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/mscs/IMSCSManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "MSCSManager"

    const-string v1, "In Constructor Stub-Service(IMSCSManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/mscs/MSCSManager;->mService:Lcom/samsung/android/mscs/IMSCSManager;

    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const-string v0, "MSCSManager"

    const-string v1, "Error MSCSManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getGalleryModeEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/mscs/MSCSManager;->mService:Lcom/samsung/android/mscs/IMSCSManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mscs/MSCSManager;->mService:Lcom/samsung/android/mscs/IMSCSManager;

    invoke-interface {v2}, Lcom/samsung/android/mscs/IMSCSManager;->getGalleryModeEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getVideoModeEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/mscs/MSCSManager;->mService:Lcom/samsung/android/mscs/IMSCSManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mscs/MSCSManager;->mService:Lcom/samsung/android/mscs/IMSCSManager;

    invoke-interface {v2}, Lcom/samsung/android/mscs/IMSCSManager;->getVideoModeEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setGalleryModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MSCSManager;->mService:Lcom/samsung/android/mscs/IMSCSManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/mscs/IMSCSManager;->setGalleryModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/mscs/MSCSManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setVideoModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mscs/MSCSManager;->mService:Lcom/samsung/android/mscs/IMSCSManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/mscs/IMSCSManager;->setVideoModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/mscs/MSCSManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
