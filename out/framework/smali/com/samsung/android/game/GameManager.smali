.class public Lcom/samsung/android/game/GameManager;
.super Ljava/lang/Object;
.source "GameManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable()Z
    .locals 2

    .prologue
    .line 27
    const-string v1, "gamemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isGamePackage(Ljava/lang/String;)Z
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 40
    const-string v5, "gamemanager"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 42
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "gamemanager system service is not available"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 44
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v3

    .line 45
    .local v3, "svc":Lcom/samsung/android/game/IGameManagerService;
    const/4 v4, -0x1

    .line 47
    .local v4, "tempRet":I
    :try_start_0
    invoke-interface {v3, p0}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 52
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 53
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "gamemanager system service is not initialized yet"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "failed to call gamemanager system service"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 55
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    if-ne v4, v2, :cond_2

    .line 56
    .local v2, "ret":Z
    :goto_0
    return v2

    .line 55
    .end local v2    # "ret":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
