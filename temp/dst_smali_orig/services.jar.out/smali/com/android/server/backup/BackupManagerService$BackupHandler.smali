.class Lcom/android/server/backup/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 36
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v3, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v3, v9}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v4, :cond_1

    const-string v3, "BackupManagerService"

    const-string v9, "Backup requested but no transport available"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->warnEdmAdminOperationCompleted()V
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;)V

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    .local v7, "oldJournal":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .local v25, "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v25    # "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    .end local v27    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    const-string v3, "BackupManagerService"

    const-string v10, "clearing pending backups"

    invoke-static {v3, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v10, 0x0

    iput-object v10, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    .end local v27    # "i$":Ljava/util/Iterator;
    :cond_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v35, 0x1

    .local v35, "staged":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    :try_start_4
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .local v5, "dirName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V

    .local v2, "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    .local v30, "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    .end local v5    # "dirName":Ljava/lang/String;
    .end local v30    # "pbtMessage":Landroid/os/Message;
    :goto_2
    if-nez v35, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->warnEdmAdminOperationCompleted()V
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;)V

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catch_0
    move-exception v26

    .local v26, "e":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v9, "Transport became unavailable attempting backup"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v35, 0x0

    goto :goto_2

    .end local v26    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v3, "BackupManagerService"

    const-string v9, "Backup requested but nothing pending"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v35, 0x0

    goto :goto_2

    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .end local v7    # "oldJournal":Ljava/io/File;
    .end local v35    # "staged":Z
    :pswitch_2
    :try_start_7
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .local v8, "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    invoke-interface {v8}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    :catch_1
    move-exception v26

    .local v26, "e":Ljava/lang/ClassCastException;
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid backup task in flight, obj="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_3
    :try_start_8
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .restart local v8    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v8, v3}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->operationComplete(I)V
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    :catch_2
    move-exception v26

    .restart local v26    # "e":Ljava/lang/ClassCastException;
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid completion in flight, obj="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    .local v29, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    new-instance v8, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v29

    iget-boolean v12, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeApks:Z

    move-object/from16 v0, v29

    iget-boolean v13, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeObbs:Z

    move-object/from16 v0, v29

    iget-boolean v14, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeShared:Z

    move-object/from16 v0, v29

    iget-boolean v15, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doWidgets:Z

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->curPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->allApps:Z

    move/from16 v18, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeSystem:Z

    move/from16 v19, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doCompress:Z

    move/from16 v20, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->privilegeApp:Z

    move/from16 v23, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->extraFlag:I

    move/from16 v24, v0

    invoke-direct/range {v8 .. v24}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;ZI)V

    .local v8, "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    new-instance v3, Ljava/lang/Thread;

    const-string v9, "adb-backup"

    invoke-direct {v3, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .local v8, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    new-instance v3, Ljava/lang/Thread;

    const-string v9, "transport-backup"

    invoke-direct {v3, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    .local v29, "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG_RUN_RESTORE observer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v29

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    move-object/from16 v0, v29

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v29

    iget v15, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    move/from16 v16, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v8 .. v17}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    .local v8, "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v33

    .local v33, "restoreMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    .end local v33    # "restoreMsg":Landroid/os/Message;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    .local v29, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    new-instance v8, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v29

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v0, v29

    iget-boolean v15, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->privilegeApp:Z

    invoke-direct/range {v8 .. v15}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .local v8, "task":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    new-instance v3, Ljava/lang/Thread;

    const-string v9, "adb-restore"

    invoke-direct {v3, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$ClearParams;

    .local v29, "params":Lcom/android/server/backup/BackupManagerService$ClearParams;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v3, v9, v10, v11}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_0

    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$ClearParams;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    .local v29, "params":Lcom/android/server/backup/BackupManagerService$ClearRetryParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->transportName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$ClearRetryParams;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_9
    new-instance v31, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v31, "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v31

    invoke-direct {v3, v9, v0}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_0

    .end local v31    # "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move v9, v3

    :goto_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v9, v3}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$200(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v11, v11, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v9, v12, v13, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    monitor-exit v10

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v3

    :cond_5
    const/4 v3, 0x0

    move v9, v3

    goto :goto_3

    :pswitch_c
    const/16 v34, 0x0

    .local v34, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    .local v29, "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    :try_start_c
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v34

    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    monitor-enter v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    move-object/from16 v0, v34

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-nez v34, :cond_6

    const/16 v3, 0xb0f

    const/4 v9, 0x0

    :try_start_e
    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_6
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_7

    :try_start_f
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    :cond_7
    :goto_4
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v3, 0x8

    const-wide/32 v10, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    :try_start_10
    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    throw v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catch_3
    move-exception v26

    .local v26, "e":Ljava/lang/Exception;
    :try_start_12
    const-string v3, "BackupManagerService"

    const-string v9, "Error from transport getting set list"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_8

    :try_start_13
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    :cond_8
    :goto_5
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v3, 0x8

    const-wide/32 v10, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .end local v26    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v32

    .local v32, "re":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v32    # "re":Landroid/os/RemoteException;
    :catch_5
    move-exception v26

    .restart local v26    # "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    const-string v9, "Restore observer threw"

    move-object/from16 v0, v26

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_6
    move-exception v32

    .restart local v32    # "re":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v32    # "re":Landroid/os/RemoteException;
    :catch_7
    move-exception v26

    const-string v3, "BackupManagerService"

    const-string v9, "Restore observer threw"

    move-object/from16 v0, v26

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v26    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v3

    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v9, :cond_9

    :try_start_14
    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    :cond_9
    :goto_6
    const/16 v9, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v9, 0x8

    const-wide/32 v10, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    :catch_8
    move-exception v32

    .restart local v32    # "re":Landroid/os/RemoteException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to report listing to observer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v32    # "re":Landroid/os/RemoteException;
    :catch_9
    move-exception v26

    .restart local v26    # "e":Ljava/lang/Exception;
    const-string v9, "BackupManagerService"

    const-string v10, "Restore observer threw"

    move-object/from16 v0, v26

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .end local v26    # "e":Ljava/lang/Exception;
    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    .end local v34    # "sets":[Landroid/app/backup/RestoreSet;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v9, v10}, Lcom/android/server/backup/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    monitor-enter v9

    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_a

    const-string v3, "BackupManagerService"

    const-string v10, "Restore session timed out; aborting"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->markTimedOut()V

    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v12, v12, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, v10, v11, v12}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    monitor-exit v9

    goto/16 :goto_0

    :catchall_7
    move-exception v3

    monitor-exit v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v3

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/backup/BackupManagerService$FullParams;

    .local v29, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v29, :cond_c

    const-string v3, "BackupManagerService"

    const-string v10, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->delete(I)V

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-eqz v3, :cond_b

    :try_start_17
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :cond_b
    :goto_7
    :try_start_18
    monitor-exit v9

    goto/16 :goto_0

    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catchall_8
    move-exception v3

    monitor-exit v9
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    throw v3

    .restart local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :cond_c
    :try_start_19
    const-string v3, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "couldn\'t find params for token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto :goto_7

    .end local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/content/Intent;

    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v29    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catch_a
    move-exception v3

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
