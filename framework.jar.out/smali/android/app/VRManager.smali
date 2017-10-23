.class public Landroid/app/VRManager;
.super Ljava/lang/Object;
.source "VRManager.java"

# interfaces
.implements Landroid/app/IVRManager;


# static fields
.field public static final INTENT_ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final INTENT_ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/app/IVRManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/app/VRManager;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/app/IVRManagerService;
    .locals 2

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_0

    .line 30
    const-string/jumbo v0, "vr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVRManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;

    .line 31
    iget-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "VRManager"

    const-string/jumbo v1, "warning: no VR_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public GetPowerLevelState()I
    .locals 4

    .prologue
    .line 212
    const/4 v1, -0x1

    .line 214
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 215
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 216
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->GetPowerLevelState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 222
    :cond_0
    return v1

    .line 218
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cpu"    # I
    .param p3, "gpu"    # I

    .prologue
    const/4 v4, 0x0

    .line 197
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 201
    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 202
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 203
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->SetVrClocks(Ljava/lang/String;II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 208
    :cond_0
    return-object v1

    .line 205
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 423
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 424
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 425
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_0
    return-void

    .line 427
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 428
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "optionName"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 104
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 105
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    :cond_0
    return-object v1

    .line 107
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 254
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 255
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 256
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 262
    :cond_0
    return-object v1

    .line 258
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRBright()I
    .locals 4

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 306
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 307
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 308
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRBright()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 314
    :cond_0
    return v1

    .line 310
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRColorTemperature()I
    .locals 4

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 332
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 333
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 334
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 340
    :cond_0
    return v1

    .line 336
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 42
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :cond_0
    return v1

    .line 45
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRComfortableViewEnabled()Z
    .locals 4

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 384
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 385
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 386
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRComfortableViewEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 392
    :cond_0
    return v1

    .line 388
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRDarkAdaptationEnabled()Z
    .locals 4

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 358
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 359
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 360
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRDarkAdaptationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 366
    :cond_0
    return v1

    .line 362
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRLowPersistenceEnabled()Z
    .locals 4

    .prologue
    .line 407
    const/4 v1, 0x0

    .line 410
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 411
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 412
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRLowPersistenceEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 418
    :cond_0
    return v1

    .line 414
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 415
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRMode()Z
    .locals 4

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 280
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 281
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 282
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 288
    :cond_0
    return v1

    .line 284
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public relFreq(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 172
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 173
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->relFreq(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :cond_0
    return v1

    .line 175
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 134
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseCPUMhz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    return-void

    .line 137
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 159
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 160
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 161
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseGPUMhz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    return-void

    .line 163
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public return2EnableFreqLev()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 186
    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 187
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 188
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->return2EnableFreqLev()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    :cond_0
    return-object v1

    .line 190
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setAffinity(I[I)I
    .locals 4
    .param p1, "pid"    # I
    .param p2, "cpus"    # [I

    .prologue
    .line 67
    const/4 v1, -0x1

    .line 69
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 70
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setAffinity(I[I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    :cond_0
    return v1

    .line 73
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # [I
    .param p3, "corenum"    # I

    .prologue
    const/4 v4, 0x0

    .line 115
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 120
    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 121
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setCPUClockMhz(Ljava/lang/String;[II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    :cond_0
    return-object v1

    .line 124
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # I

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 146
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 147
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 148
    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setGPUClockMhz(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 154
    :cond_0
    return v1

    .line 150
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 91
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    return-void

    .line 94
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 241
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 242
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    return-void

    .line 245
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 56
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IVRManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    :cond_0
    return v1

    .line 59
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setVRBright(I)V
    .locals 3
    .param p1, "bright"    # I

    .prologue
    .line 293
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 294
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 295
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRBright(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    return-void

    .line 297
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRColorTemperature(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 319
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 320
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 321
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRColorTemperature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    return-void

    .line 323
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRComfortableView(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 371
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 372
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 373
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRComfortableView(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    return-void

    .line 375
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 376
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRDarkAdaptation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 345
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 346
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 347
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRDarkAdaptation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    return-void

    .line 349
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 350
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRLowPersistence(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 397
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 398
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 399
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRLowPersistence(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    return-void

    .line 401
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 267
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 268
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    return-void

    .line 271
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "dutyCycle"    # F
    .param p3, "monoMode"    # Z

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 228
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 229
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 230
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setVideoMode(Ljava/lang/String;FZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    :cond_0
    return v1

    .line 232
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public vrManagerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "0.3.0-2014-04-21"

    return-object v0
.end method

.method public vrOVRVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "0.3.0-2014-04-21"

    return-object v0
.end method
