.class Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveRestoreSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mEnded:Z

.field private mPackageName:Ljava/lang/String;

.field mRestoreSets:[Landroid/app/backup/RestoreSet;

.field private mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

.field mTimedOut:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 9941
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 9936
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 9937
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 9938
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    .line 9939
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    .line 9942
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 9943
    # invokes: Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {p1, p3}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 9944
    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 9932
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
    .param p1, "x1"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 9932
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .locals 3

    .prologue
    .line 10241
    monitor-enter p0

    :try_start_0
    const-string v0, "RestoreSession"

    const-string/jumbo v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10243
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    if-eqz v0, :cond_0

    .line 10244
    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10253
    :goto_0
    monitor-exit p0

    return-void

    .line 10248
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v0, :cond_1

    .line 10249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 10252
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v1, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    .locals 10
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    const/4 v4, -0x1

    .line 9952
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string/jumbo v7, "getAvailableRestoreSets"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9954
    if-nez p1, :cond_0

    .line 9955
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Observer must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9952
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 9958
    :cond_0
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v5, :cond_1

    .line 9959
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Restore session already ended"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9962
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    if-eqz v5, :cond_2

    .line 9963
    const-string v5, "RestoreSession"

    const-string v6, "Session already timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9989
    :goto_0
    monitor-exit p0

    return v4

    .line 9967
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 9969
    .local v2, "oldId":J
    :try_start_3
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v5, :cond_3

    .line 9970
    const-string v5, "RestoreSession"

    const-string v6, "Null transport getting restore sets"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9989
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 9977
    :cond_3
    :try_start_5
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 9980
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9981
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v6, 0x6

    new-instance v7, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {v7, v8, v9, p0, p1}, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 9983
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 9984
    const/4 v4, 0x0

    .line 9989
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 9985
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 9986
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v5, "RestoreSession"

    const-string v6, "Error in getAvailableRestoreSets"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 9989
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public markTimedOut()V
    .locals 1

    .prologue
    .line 9947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    .line 9948
    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    .locals 15
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 9994
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string/jumbo v5, "performRestore"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9997
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAll token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " observer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10000
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v3, :cond_0

    .line 10001
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9994
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 10004
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    if-eqz v3, :cond_1

    .line 10005
    const-string v3, "RestoreSession"

    const-string v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10006
    const/4 v3, -0x1

    .line 10050
    :goto_0
    monitor-exit p0

    return v3

    .line 10009
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v3, :cond_3

    .line 10010
    :cond_2
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() with no restore set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10011
    const/4 v3, -0x1

    goto :goto_0

    .line 10014
    :cond_3
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 10015
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() on single-package session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10016
    const/4 v3, -0x1

    goto :goto_0

    .line 10021
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 10028
    .local v6, "dirName":Ljava/lang/String;
    :try_start_4
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10029
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    :try_start_5
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v10, v3, :cond_6

    .line 10030
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v10

    iget-wide v4, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_5

    .line 10032
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 10034
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 10035
    .local v12, "oldId":J
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10039
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 10040
    .local v11, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J)V

    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10042
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10043
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10044
    const/4 v3, 0x0

    monitor-exit v14

    goto :goto_0

    .line 10047
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "oldId":J
    :catchall_1
    move-exception v3

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    .line 10022
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v10    # "i":I
    :catch_0
    move-exception v2

    .line 10024
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Unable to contact transport for restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 10025
    const/4 v3, -0x1

    goto :goto_0

    .line 10029
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v6    # "dirName":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 10047
    :cond_6
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 10049
    :try_start_8
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 10050
    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 10136
    monitor-enter p0

    :try_start_0
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " obs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10138
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v3, :cond_0

    .line 10139
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10136
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 10142
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    if-eqz v3, :cond_1

    .line 10143
    const-string v3, "RestoreSession"

    const-string v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10144
    const/4 v3, -0x1

    .line 10214
    :goto_0
    monitor-exit p0

    return v3

    .line 10147
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 10148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10149
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring attempt to restore pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on session for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10151
    const/4 v3, -0x1

    goto :goto_0

    .line 10155
    :cond_2
    const/4 v10, 0x0

    .line 10157
    .local v10, "app":Landroid/content/pm/PackageInfo;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 10165
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v13

    .line 10167
    .local v13, "perm":I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_3

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 10169
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage: bad packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or calling uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10171
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "No permission to restore other packages"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 10158
    .end local v13    # "perm":I
    :catch_0
    move-exception v12

    .line 10159
    .local v12, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10160
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 10175
    .end local v12    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13    # "perm":I
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v14

    .line 10179
    .local v14, "oldId":J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v8

    .line 10180
    .local v8, "token":J
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10186
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-nez v3, :cond_4

    .line 10187
    const-string v3, "RestoreSession"

    const-string v4, "No data available for this package; not restoring"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 10188
    const/4 v3, -0x1

    .line 10212
    :try_start_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 10193
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v6

    .line 10201
    .local v6, "dirName":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 10204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 10209
    .local v11, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;)V

    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 10212
    :try_start_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 10214
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 10194
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v11    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v2

    .line 10196
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v3, "RestoreSession"

    const-string v4, "Unable to contact transport for restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 10197
    const/4 v3, -0x1

    .line 10212
    :try_start_b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v8    # "token":J
    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public declared-synchronized restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
    .locals 23
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;

    .prologue
    .line 10056
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string/jumbo v5, "performRestore"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10060
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10061
    .local v12, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "restoreSome token="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10062
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10063
    const-string v3, " observer="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10064
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10065
    const-string v3, " packages="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10066
    if-nez p4, :cond_0

    .line 10067
    const-string/jumbo v3, "null"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10079
    :goto_0
    const-string v3, "RestoreSession"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10082
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v3, :cond_3

    .line 10083
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10056
    .end local v12    # "b":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 10069
    .restart local v12    # "b":Ljava/lang/StringBuilder;
    :cond_0
    const/16 v3, 0x7b

    :try_start_1
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10070
    const/4 v14, 0x1

    .line 10071
    .local v14, "first":Z
    move-object/from16 v2, p4

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget-object v19, v2, v16

    .line 10072
    .local v19, "s":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 10073
    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10075
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10071
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 10074
    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    .line 10077
    .end local v19    # "s":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x7d

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10086
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v14    # "first":Z
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    if-eqz v3, :cond_4

    .line 10087
    const-string v3, "RestoreSession"

    const-string v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10088
    const/4 v3, -0x1

    .line 10132
    :goto_3
    monitor-exit p0

    return v3

    .line 10091
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v3, :cond_6

    .line 10092
    :cond_5
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() with no restore set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10093
    const/4 v3, -0x1

    goto :goto_3

    .line 10096
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 10097
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() on single-package session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10098
    const/4 v3, -0x1

    goto :goto_3

    .line 10103
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 10110
    .local v6, "dirName":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10111
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v15, v3, :cond_a

    .line 10112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v15

    iget-wide v4, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_9

    .line 10114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 10116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 10117
    .local v20, "oldId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 10122
    .local v18, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p4

    array-length v7, v0

    const/4 v8, 0x1

    if-le v7, v8, :cond_8

    const/4 v11, 0x1

    :goto_5
    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v11}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V

    move-object/from16 v0, v18

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10125
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10126
    const/4 v3, 0x0

    monitor-exit v22

    goto/16 :goto_3

    .line 10129
    .end local v18    # "msg":Landroid/os/Message;
    .end local v20    # "oldId":J
    :catchall_1
    move-exception v3

    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    .line 10104
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v15    # "i":I
    :catch_0
    move-exception v13

    .line 10106
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Unable to contact transport for restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 10107
    const/4 v3, -0x1

    goto/16 :goto_3

    .line 10122
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v6    # "dirName":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v18    # "msg":Landroid/os/Message;
    .restart local v20    # "oldId":J
    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    .line 10111
    .end local v18    # "msg":Landroid/os/Message;
    .end local v20    # "oldId":J
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 10129
    :cond_a
    :try_start_7
    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 10131
    :try_start_8
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 10132
    const/4 v3, -0x1

    goto/16 :goto_3
.end method
