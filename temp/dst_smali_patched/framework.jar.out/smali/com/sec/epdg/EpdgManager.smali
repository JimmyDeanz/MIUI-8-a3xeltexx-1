.class public Lcom/sec/epdg/EpdgManager;
.super Ljava/lang/Object;
.source "EpdgManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EPDG_Manager"


# instance fields
.field private mService:Lcom/sec/epdg/IEpdgManager;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/IEpdgManager;)V
    .locals 2
    .param p1, "service"    # Lcom/sec/epdg/IEpdgManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    :goto_0
    return-void

    :cond_0
    const-string v0, "EPDG_Manager"

    const-string v1, "missing Epdg Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)I
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, v2}, Lcom/sec/epdg/IEpdgManager;->connect(Ljava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public disconnect(Ljava/lang/String;)I
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, v2}, Lcom/sec/epdg/IEpdgManager;->disconnect(Ljava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public enableTestRilAdapter(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v1, p1}, Lcom/sec/epdg/IEpdgManager;->enableTestRilAdapter(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isDuringHandoverForIMS()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v1}, Lcom/sec/epdg/IEpdgManager;->isDuringHandoverForIMS()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendEventToStateMachine(II)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "event"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2}, Lcom/sec/epdg/IEpdgManager;->sendEventToStateMachine(IILandroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public startForceToHandOverToEPDG(ZILjava/lang/String;Landroid/app/PendingIntent;)I
    .locals 7
    .param p1, "isEpdg"    # Z
    .param p2, "networkType"    # I
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/epdg/IEpdgManager;->startForceToHandOverToEPDG(ZILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/app/PendingIntent;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2, p3}, Lcom/sec/epdg/IEpdgManager;->startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/app/PendingIntent;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2, p3}, Lcom/sec/epdg/IEpdgManager;->startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method
