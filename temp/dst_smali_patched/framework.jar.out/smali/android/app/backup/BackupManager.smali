.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field private static sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static checkServiceBinder()V
    .locals 1

    .prologue
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    :cond_0
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public backupNow()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public beginRestoreSession()Landroid/app/backup/RestoreSession;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .local v2, "session":Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v4, :cond_0

    :try_start_0
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .local v0, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_0

    new-instance v3, Landroid/app/backup/RestoreSession;

    iget-object v4, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "session":Landroid/app/backup/RestoreSession;
    .local v3, "session":Landroid/app/backup/RestoreSession;
    move-object v2, v3

    .end local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .restart local v2    # "session":Landroid/app/backup/RestoreSession;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "BackupManager"

    const-string v5, "beginRestoreSession() couldn\'t connect"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dataChanged()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fullBackupEx(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/backup/IBackupManager;->fullBackupEx(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "BackupManager"

    const-string v2, "could not get backup service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public fullRestoreEx(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->fullRestoreEx(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "BackupManager"

    const-string v2, "could not get backup service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->getAvailableRestoreToken(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getAvailableRestoreToken() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getCurrentTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBackupEnabled()Z
    .locals 3

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "listAllTransports() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;)I
    .locals 8
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;

    .prologue
    const/4 v2, -0x1

    .local v2, "result":I
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    .local v3, "session":Landroid/app/backup/RestoreSession;
    :try_start_0
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v6, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .local v0, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_0

    new-instance v4, Landroid/app/backup/RestoreSession;

    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .local v4, "session":Landroid/app/backup/RestoreSession;
    :try_start_1
    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    move-object v3, v4

    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .end local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    :cond_1
    :goto_0
    return v2

    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    const-string v5, "BackupManager"

    const-string v6, "restoreSelf() unable to contact service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    :cond_2
    throw v5

    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .restart local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .restart local v4    # "session":Landroid/app/backup/RestoreSession;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    goto :goto_2

    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .restart local v4    # "session":Landroid/app/backup/RestoreSession;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    goto :goto_1
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "selectBackupTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutoRestore(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "setAutoRestore() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackupEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "setBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
