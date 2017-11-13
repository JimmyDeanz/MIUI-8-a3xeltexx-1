.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 86
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v76

    .local v76, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v76

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto :goto_0

    .end local v76    # "resolver":Landroid/content/ContentResolver;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    .local v63, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v63

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x7530

    move-object/from16 v0, v63

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v63    # "nmsg":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v52, v4, -0x1

    .local v52, "i":I
    :goto_1
    if-ltz v52, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/android/server/am/ProcessRecord;

    .local v72, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    :try_start_2
    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_2
    add-int/lit8 v52, v52, -0x1

    goto :goto_1

    :catch_0
    move-exception v50

    .local v50, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to update time zone for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v50    # "ex":Landroid/os/RemoteException;
    .end local v52    # "i":I
    .end local v72    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .restart local v52    # "i":I
    :cond_3
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->dbFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/am/CrashedAppDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/am/CrashedAppDatabase;

    move-result-object v11

    iput-object v11, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    invoke-virtual {v11}, Lcom/android/server/am/CrashedAppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    iput-object v11, v4, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v11}, Lcom/android/server/am/CrashedAppDatabase;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .end local v52    # "i":I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v52, v4, -0x1

    .restart local v52    # "i":I
    :goto_3
    if-ltz v52, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/android/server/am/ProcessRecord;

    .restart local v72    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_6

    :try_start_6
    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    :goto_4
    add-int/lit8 v52, v52, -0x1

    goto :goto_3

    :catch_1
    move-exception v50

    .restart local v50    # "ex":Landroid/os/RemoteException;
    :try_start_7
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to clear dns cache for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v50    # "ex":Landroid/os/RemoteException;
    .end local v52    # "i":I
    .end local v72    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v4

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .restart local v52    # "i":I
    :cond_7
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_0

    .end local v52    # "i":I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/net/ProxyInfo;

    .local v71, "proxy":Landroid/net/ProxyInfo;
    if-eqz v71, :cond_8

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getKnoxVpnProfile()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_8

    const-string v4, "ActivityManager"

    const-string v11, "skipping the proxy broadcast for applications added to knox vpn profile"

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v5, ""

    .local v5, "host":Ljava/lang/String;
    const-string v6, ""

    .local v6, "port":Ljava/lang/String;
    const-string v7, ""

    .local v7, "username":Ljava/lang/String;
    const-string v8, ""

    .local v8, "password":Ljava/lang/String;
    const-string v9, ""

    .local v9, "exclList":Ljava/lang/String;
    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .local v10, "pacFileUrl":Landroid/net/Uri;
    if-eqz v71, :cond_9

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v10

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v52, v4, -0x1

    .restart local v52    # "i":I
    :goto_5
    if-ltz v52, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/android/server/am/ProcessRecord;

    .restart local v72    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v4, :cond_a

    if-eqz v7, :cond_b

    :try_start_a
    const-string v4, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface/range {v4 .. v10}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_a
    :goto_6
    add-int/lit8 v52, v52, -0x1

    goto :goto_5

    :cond_b
    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4, v5, v6, v9, v10}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catch_2
    move-exception v50

    .restart local v50    # "ex":Landroid/os/RemoteException;
    :try_start_b
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to update http proxy for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v50    # "ex":Landroid/os/RemoteException;
    .end local v52    # "i":I
    .end local v72    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v4

    .restart local v52    # "i":I
    :cond_c
    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_0

    .end local v5    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    .end local v7    # "username":Ljava/lang/String;
    .end local v8    # "password":Ljava/lang/String;
    .end local v9    # "exclList":Ljava/lang/String;
    .end local v10    # "pacFileUrl":Landroid/net/Uri;
    .end local v52    # "i":I
    .end local v71    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v11, 0x14

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    .restart local v63    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v63

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sget v11, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-object/from16 v0, v63

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v63    # "nmsg":Landroid/os/Message;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/server/am/ProcessRecord;

    .local v41, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v41

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v11

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v4

    .end local v41    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/server/am/ProcessRecord;

    .restart local v41    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v41

    # invokes: Lcom/android/server/am/ActivityManagerService;->processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v11

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v4

    .end local v41    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    monitor-exit v11

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v4

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_10
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .local v13, "appid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_e

    const/4 v14, 0x1

    .local v14, "restart":Z
    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/os/Bundle;

    .local v43, "bundle":Landroid/os/Bundle;
    const-string v4, "pkg"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "pkg":Ljava/lang/String;
    const-string v4, "reason"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "reason":Ljava/lang/String;
    const-string v4, "replace sys pkg"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPersistDownloadablePkgs:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPersistDownloadablePkgs:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v11 .. v20}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .end local v14    # "restart":Z
    :goto_8
    monitor-exit v22

    goto/16 :goto_0

    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "appid":I
    .end local v20    # "reason":Ljava/lang/String;
    .end local v43    # "bundle":Landroid/os/Bundle;
    :catchall_7
    move-exception v4

    monitor-exit v22
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v4

    .restart local v13    # "appid":I
    :cond_e
    const/4 v14, 0x0

    goto :goto_7

    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v14    # "restart":Z
    .restart local v20    # "reason":Ljava/lang/String;
    .restart local v43    # "bundle":Landroid/os/Bundle;
    :cond_f
    :try_start_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v11 .. v20}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_8

    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "appid":I
    .end local v14    # "restart":Z
    .end local v20    # "reason":Ljava/lang/String;
    .end local v43    # "bundle":Landroid/os/Bundle;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v54

    .local v54, "inm":Landroid/app/INotificationManager;
    if-eqz v54, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v77, v0

    check-cast v77, Lcom/android/server/am/ActivityRecord;

    .local v77, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v77

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v68, v0

    .local v68, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v68, :cond_0

    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v68

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v4, v11, v15}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v45

    .local v45, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x104038a

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v4, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    .local v80, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, v45

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x1080784

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1060059

    invoke-virtual {v11, v15}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x104038b

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v77

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const/high16 v24, 0x10000000

    const/16 v25, 0x0

    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, v77

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v21 .. v26}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_4

    move-result-object v26

    .local v26, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_13
    new-array v0, v4, [I

    move-object/from16 v27, v0

    .local v27, "outId":[I
    const-string v22, "android"

    const-string v23, "android"

    const/16 v24, 0x0

    const v25, 0x104038a

    move-object/from16 v0, v77

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v28, v0

    move-object/from16 v21, v54

    invoke-interface/range {v21 .. v28}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_0

    .end local v27    # "outId":[I
    :catch_3
    move-exception v49

    .local v49, "e":Ljava/lang/RuntimeException;
    :try_start_14
    const-string v4, "ActivityManager"

    const-string v11, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v49

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_0

    .end local v26    # "notification":Landroid/app/Notification;
    .end local v45    # "context":Landroid/content/Context;
    .end local v49    # "e":Ljava/lang/RuntimeException;
    .end local v80    # "text":Ljava/lang/String;
    :catch_4
    move-exception v49

    .local v49, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v11, "Unable to create context for heavy notification"

    move-object/from16 v0, v49

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v49    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v54    # "inm":Landroid/app/INotificationManager;
    .end local v68    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v77    # "root":Lcom/android/server/am/ActivityRecord;
    :sswitch_d
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .local v21, "inm":Landroid/app/INotificationManager;
    if-eqz v21, :cond_0

    :try_start_15
    const-string v4, "android"

    const/4 v11, 0x0

    const v15, 0x104038a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v4, v11, v15, v1}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_e

    goto/16 :goto_0

    :catch_5
    move-exception v49

    .local v49, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v11, "Error canceling notification for service"

    move-object/from16 v0, v49

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v49    # "e":Ljava/lang/RuntimeException;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    .restart local v63    # "nmsg":Landroid/os/Message;
    const-wide/32 v16, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v11

    goto/16 :goto_0

    .end local v63    # "nmsg":Landroid/os/Message;
    :catchall_8
    move-exception v4

    monitor-exit v11
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v4

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v11, v15, v0, v1}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    invoke-static {}, Landroid/os/Process;->triggerRTCC()V

    const-string v4, "ActivityManager"

    const-string v11, "RTCC_TRIGGER_MSG, ASYNC."

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Ljava/util/ArrayList;

    .local v57, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v81, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v81

    move-object/from16 v1, p0

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .local v81, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v81 .. v81}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .end local v57    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v81    # "thread":Ljava/lang/Thread;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v15, v0}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1040b6a

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    invoke-static {v4, v11, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v15, v0}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v15, v0}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_10

    const/16 v62, 0x1

    .local v62, "nextState":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v62

    if-eq v4, v0, :cond_0

    if-eqz v62, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    .end local v62    # "nextState":Z
    :cond_10
    const/16 v62, 0x0

    goto :goto_9

    .restart local v62    # "nextState":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    .end local v62    # "nextState":Z
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/4 v15, 0x1

    const/16 v18, 0x0

    move-wide/from16 v0, v16

    move/from16 v2, v18

    invoke-virtual {v4, v0, v1, v15, v2}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    monitor-exit v11

    goto/16 :goto_0

    :catchall_9
    move-exception v4

    monitor-exit v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    throw v4

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V

    monitor-exit v11

    goto/16 :goto_0

    :catchall_a
    move-exception v4

    monitor-exit v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    throw v4

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v52, v4, -0x1

    .restart local v52    # "i":I
    :goto_a
    if-ltz v52, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/android/server/am/ProcessRecord;

    .restart local v72    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    if-eqz v4, :cond_12

    :try_start_1a
    move-object/from16 v0, v72

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_13

    const/4 v4, 0x0

    :goto_b
    invoke-interface {v15, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    :cond_12
    :goto_c
    add-int/lit8 v52, v52, -0x1

    goto :goto_a

    :cond_13
    const/4 v4, 0x1

    goto :goto_b

    :catch_6
    move-exception v50

    .restart local v50    # "ex":Landroid/os/RemoteException;
    :try_start_1b
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to update preferences for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .end local v50    # "ex":Landroid/os/RemoteException;
    .end local v52    # "i":I
    .end local v72    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_b
    move-exception v4

    monitor-exit v11
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    throw v4

    .restart local v52    # "i":I
    :cond_14
    :try_start_1c
    monitor-exit v11
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->dbFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/am/CrashedAppDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/am/CrashedAppDatabase;

    move-result-object v11

    iput-object v11, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    invoke-virtual {v11}, Lcom/android/server/am/CrashedAppDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    iput-object v11, v4, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->crashedAppDB:Lcom/android/server/am/CrashedAppDatabase;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->readableDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v11}, Lcom/android/server/am/CrashedAppDatabase;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .end local v52    # "i":I
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mOverheatTextId:I
    invoke-static {v15}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;)I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    invoke-static {v4, v11, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v69, v0

    .local v69, "processId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v79, v0

    .local v79, "stopReason":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move/from16 v0, v69

    move/from16 v1, v79

    invoke-static {v11, v4, v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_0

    .end local v69    # "processId":I
    .end local v79    # "stopReason":I
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v11, 0x8007

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_0

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v11, 0x4008

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v11, 0x8008

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_0

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_1d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v72

    .local v72, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v72, :cond_17

    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_17

    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    if-eqz v4, :cond_17

    :try_start_1e
    move-object/from16 v0, v72

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v72

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v15}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    :cond_17
    :goto_d
    :try_start_1f
    monitor-exit v11

    goto/16 :goto_0

    .end local v72    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_c
    move-exception v4

    monitor-exit v11
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    throw v4

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_20
    new-instance v70, Ljava/util/ArrayList;

    invoke-direct/range {v70 .. v70}, Ljava/util/ArrayList;-><init>()V

    .local v70, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v40

    .local v40, "NP":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Ljava/util/HashSet;

    .local v66, "prevkillProcessNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "process size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v55, 0x0

    .local v55, "ip":I
    :goto_e
    move/from16 v0, v55

    move/from16 v1, v40

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/util/SparseArray;

    .local v42, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {v42 .. v42}, Landroid/util/SparseArray;->size()I

    move-result v39

    .local v39, "NA":I
    const/16 v53, 0x0

    .local v53, "ia":I
    :goto_f
    move/from16 v0, v53

    move/from16 v1, v39

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, v42

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/am/ProcessRecord;

    .restart local v41    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_19

    const-string v4, "system"

    move-object/from16 v0, v41

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v41

    if-eq v4, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v41

    if-eq v4, v0, :cond_19

    if-eqz v66, :cond_18

    invoke-virtual/range {v66 .. v66}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    :cond_18
    move-object/from16 v0, v41

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v4, :cond_1a

    move-object/from16 v0, v70

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_10
    add-int/lit8 v53, v53, 0x1

    goto :goto_f

    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, v41

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    move-object/from16 v0, v70

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .end local v39    # "NA":I
    .end local v40    # "NP":I
    .end local v41    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v42    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v53    # "ia":I
    .end local v55    # "ip":I
    .end local v66    # "prevkillProcessNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v70    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_d
    move-exception v4

    monitor-exit v11
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    throw v4

    .restart local v39    # "NA":I
    .restart local v40    # "NP":I
    .restart local v42    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v53    # "ia":I
    .restart local v55    # "ip":I
    .restart local v66    # "prevkillProcessNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v70    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_1b
    add-int/lit8 v55, v55, 0x1

    goto/16 :goto_e

    .end local v39    # "NA":I
    .end local v42    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v53    # "ia":I
    :cond_1c
    :try_start_21
    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->size()I

    move-result v38

    .local v38, "N":I
    const/16 v52, 0x0

    .restart local v52    # "i":I
    :goto_11
    move/from16 v0, v52

    move/from16 v1, v38

    if-ge v0, v1, :cond_1d

    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "killing process="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v70

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v70

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v18, "kill all background except"

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    # invokes: Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    invoke-static {v15, v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->access$1300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    add-int/lit8 v52, v52, 0x1

    goto :goto_11

    :cond_1d
    const-string v4, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "kill count="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    goto/16 :goto_0

    .end local v38    # "N":I
    .end local v40    # "NP":I
    .end local v52    # "i":I
    .end local v55    # "ip":I
    .end local v66    # "prevkillProcessNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v70    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :sswitch_21
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    :cond_1e
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_0

    :sswitch_22
    :try_start_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Ljava/util/Locale;

    .local v56, "l":Ljava/util/Locale;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v78

    .local v78, "service":Landroid/os/IBinder;
    invoke-static/range {v78 .. v78}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v60

    .local v60, "mountService":Landroid/os/storage/IMountService;
    const-string v4, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Storing locale "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v56 .. v56}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " for decryption UI"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SystemLocale"

    invoke-virtual/range {v56 .. v56}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v60

    invoke-interface {v0, v4, v11}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_7

    goto/16 :goto_0

    .end local v56    # "l":Ljava/util/Locale;
    .end local v60    # "mountService":Landroid/os/storage/IMountService;
    .end local v78    # "service":Landroid/os/IBinder;
    :catch_7
    move-exception v49

    .local v49, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v11, "Error storing locale for decryption UI"

    move-object/from16 v0, v49

    invoke-static {v4, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v49    # "e":Landroid/os/RemoteException;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    move-result v52

    .restart local v52    # "i":I
    :goto_12
    if-lez v52, :cond_1f

    add-int/lit8 v52, v52, -0x1

    :try_start_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_8
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    goto :goto_12

    :catch_8
    move-exception v4

    goto :goto_12

    :cond_1f
    :try_start_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v11

    goto/16 :goto_0

    .end local v52    # "i":I
    :catchall_e
    move-exception v4

    monitor-exit v11
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    throw v4

    :sswitch_24
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v83, v0

    .local v83, "uid":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    move-object/from16 v51, v4

    check-cast v51, [B

    .local v51, "firstPacket":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11

    const/16 v52, 0x0

    .restart local v52    # "i":I
    :goto_13
    :try_start_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v52

    if-ge v0, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/android/server/am/ProcessRecord;

    .local v65, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v65

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v0, v83

    if-ne v4, v0, :cond_20

    move-object/from16 v0, v65

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    if-eqz v4, :cond_20

    :try_start_27
    move-object/from16 v0, v65

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v51

    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_c
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    :cond_20
    :goto_14
    add-int/lit8 v52, v52, 0x1

    goto :goto_13

    .end local v65    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_21
    :try_start_28
    monitor-exit v11

    goto/16 :goto_0

    :catchall_f
    move-exception v4

    monitor-exit v11
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    throw v4

    .end local v51    # "firstPacket":[B
    .end local v52    # "i":I
    .end local v83    # "uid":I
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v67, v0

    .local v67, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move/from16 v83, v0

    .restart local v83    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v67

    move/from16 v1, v83

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/util/Pair;

    .local v85, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v85, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v15, 0x0

    move-object/from16 v0, v67

    invoke-virtual {v4, v0, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v85

    .end local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v85, Landroid/util/Pair;

    .restart local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_22
    if-eqz v85, :cond_24

    move-object/from16 v0, v85

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v58

    .local v58, "memLimit":J
    move-object/from16 v0, v85

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v75, v0

    check-cast v75, Ljava/lang/String;

    .local v75, "reportPackage":Ljava/lang/String;
    :goto_15
    monitor-exit v11
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    if-eqz v67, :cond_0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .restart local v21    # "inm":Landroid/app/INotificationManager;
    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1040392

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v67, v15, v16

    invoke-virtual {v4, v11, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    .restart local v80    # "text":Ljava/lang/String;
    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    .local v46, "deleteIntent":Landroid/content/Intent;
    const-string v4, "com.android.server.am.DELETE_DUMPHEAP"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    .local v30, "intent":Landroid/content/Intent;
    const-string v4, "android"

    const-class v11, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "process"

    move-object/from16 v0, v30

    move-object/from16 v1, v67

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "size"

    move-object/from16 v0, v30

    move-wide/from16 v1, v58

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v75, :cond_23

    const-string v4, "direct_launch"

    move-object/from16 v0, v30

    move-object/from16 v1, v75

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_23
    invoke-static/range {v83 .. v83}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v84

    .local v84, "userId":I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x1080784

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1060059

    invoke-virtual {v11, v15}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x1040393

    invoke-virtual {v11, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/high16 v31, 0x10000000

    const/16 v32, 0x0

    new-instance v33, Landroid/os/UserHandle;

    move-object/from16 v0, v33

    move/from16 v1, v84

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v28 .. v33}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v46

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v11, v15, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v26

    .restart local v26    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_2a
    new-array v0, v4, [I

    move-object/from16 v27, v0

    .restart local v27    # "outId":[I
    const-string v22, "android"

    const-string v23, "android"

    const/16 v24, 0x0

    const v25, 0x1040392

    move/from16 v28, v84

    invoke-interface/range {v21 .. v28}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_b

    goto/16 :goto_0

    .end local v27    # "outId":[I
    :catch_9
    move-exception v49

    .local v49, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v11, "Error showing notification for dump heap"

    move-object/from16 v0, v49

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v46    # "deleteIntent":Landroid/content/Intent;
    .end local v49    # "e":Ljava/lang/RuntimeException;
    .end local v58    # "memLimit":J
    .end local v75    # "reportPackage":Ljava/lang/String;
    .end local v80    # "text":Ljava/lang/String;
    .end local v84    # "userId":I
    :cond_24
    const-wide/16 v58, 0x0

    .restart local v58    # "memLimit":J
    const/16 v75, 0x0

    .restart local v75    # "reportPackage":Ljava/lang/String;
    goto/16 :goto_15

    .end local v58    # "memLimit":J
    .end local v67    # "procName":Ljava/lang/String;
    .end local v75    # "reportPackage":Ljava/lang/String;
    .end local v83    # "uid":I
    .end local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_10
    move-exception v4

    :try_start_2b
    monitor-exit v11
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    throw v4

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v11

    sget-object v15, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/16 v16, 0x3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v11, v15, v0, v1}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, -0x1

    iput v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, -0x1

    iput v15, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    monitor-exit v11

    goto/16 :goto_0

    :catchall_11
    move-exception v4

    monitor-exit v11
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    throw v4

    :sswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityManagerService;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_0

    :sswitch_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v82, v0

    check-cast v82, Lcom/android/server/am/AppTimeTracker;

    .local v82, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v82

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v82    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitchComplete(I)V

    goto/16 :goto_0

    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/app/IUiAutomationConnection;

    .local v44, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_2d
    invoke-interface/range {v44 .. v44}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_a

    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerService;->mUserIsMonkey:Z
    invoke-static {v4, v11}, Lcom/android/server/am/ActivityManagerService;->access$1502(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_0

    :catch_a
    move-exception v49

    .local v49, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v11, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .end local v44    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v49    # "e":Landroid/os/RemoteException;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mIsBoosted:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mBoostStartTime:J
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1700(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const-wide/16 v22, 0x9c4

    sub-long v18, v18, v22

    cmp-long v4, v16, v18

    if-gez v4, :cond_26

    # invokes: Lcom/android/server/am/ActivityManagerService;->nativeMigrateFromBoost()I
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$1800()I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerService;->mIsBoosted:Z
    invoke-static {v4, v15}, Lcom/android/server/am/ActivityManagerService;->access$1602(Lcom/android/server/am/ActivityManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    # setter for: Lcom/android/server/am/ActivityManagerService;->mBoostStartTime:J
    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$1702(Lcom/android/server/am/ActivityManagerService;J)J

    :cond_25
    :goto_17
    monitor-exit v11

    goto/16 :goto_0

    :catchall_12
    move-exception v4

    monitor-exit v11
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_12

    throw v4

    :cond_26
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v15, 0x3a

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v61

    .local v61, "newmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x9c4

    move-object/from16 v0, v61

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_12

    goto :goto_17

    .end local v61    # "newmsg":Landroid/os/Message;
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0xc

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0x10

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0x13

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v32, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "ACTIVITY_RESUME_BOOSTER"

    const/16 v35, 0xe

    const-wide/16 v36, 0x0

    invoke-direct/range {v32 .. v37}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v32

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const-string v11, "ActivityManager_resume"

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_2a
    sget v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    const/4 v4, 0x0

    sput v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v4

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    sget v11, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v11}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v15, "AMS_RESUME_BOOST_CSTATE"

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v4, v11, v15, v0}, Landroid/os/DVFSHelper;->onActivityResumeEvent(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Landroid/app/ApplicationErrorReport;

    .local v73, "report":Landroid/app/ApplicationErrorReport;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v84, v0

    .restart local v84    # "userId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_31

    const/16 v64, 0x1

    .local v64, "notify":Z
    :goto_18
    if-eqz v73, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    const/16 v48, 0x0

    .local v48, "dumpStrTmp":Ljava/lang/String;
    :try_start_30
    move-object/from16 v0, v73

    iget v4, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v15, 0x1

    if-ne v4, v15, :cond_32

    const-string v48, "-k -t -z -d -o /data/log/dumpstate_app_error"

    :cond_2f
    :goto_19
    move-object/from16 v47, v48

    .local v47, "dumpCmd":Ljava/lang/String;
    if-eqz v47, :cond_30

    const-string v4, "user"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    new-instance v4, Ljava/lang/Thread;

    new-instance v15, Lcom/android/server/am/ActivityManagerService$MainHandler$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v15, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$2;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/lang/String;)V

    const-string v16, "dumpstate"

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_30
    :goto_1a
    monitor-exit v11
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_13

    if-eqz v64, :cond_0

    new-instance v74, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v74, "reportIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v74

    move-object/from16 v1, v73

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    move-object/from16 v0, v74

    move/from16 v1, v84

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/VRApplicationPolicy;->notifyToVRServiceLocked(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .end local v47    # "dumpCmd":Ljava/lang/String;
    .end local v48    # "dumpStrTmp":Ljava/lang/String;
    .end local v64    # "notify":Z
    .end local v74    # "reportIntent":Landroid/content/Intent;
    :cond_31
    const/16 v64, 0x0

    goto :goto_18

    .restart local v48    # "dumpStrTmp":Ljava/lang/String;
    .restart local v64    # "notify":Z
    :cond_32
    :try_start_31
    move-object/from16 v0, v73

    iget v4, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v15, 0x2

    if-ne v4, v15, :cond_2f

    const-string v48, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    goto :goto_19

    .restart local v47    # "dumpCmd":Ljava/lang/String;
    :cond_33
    invoke-static/range {v47 .. v47}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto :goto_1a

    .end local v47    # "dumpCmd":Ljava/lang/String;
    :catchall_13
    move-exception v4

    monitor-exit v11
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_13

    throw v4

    .end local v48    # "dumpStrTmp":Ljava/lang/String;
    .end local v64    # "notify":Z
    .end local v73    # "report":Landroid/app/ApplicationErrorReport;
    .end local v84    # "userId":I
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/server/wm/WindowManagerService;->rebootSafeMode(Z)V

    goto/16 :goto_0

    .restart local v21    # "inm":Landroid/app/INotificationManager;
    .restart local v26    # "notification":Landroid/app/Notification;
    .restart local v30    # "intent":Landroid/content/Intent;
    .restart local v46    # "deleteIntent":Landroid/content/Intent;
    .restart local v58    # "memLimit":J
    .restart local v67    # "procName":Ljava/lang/String;
    .restart local v75    # "reportPackage":Ljava/lang/String;
    .restart local v80    # "text":Ljava/lang/String;
    .restart local v83    # "uid":I
    .restart local v84    # "userId":I
    .restart local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_b
    move-exception v4

    goto/16 :goto_0

    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v26    # "notification":Landroid/app/Notification;
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v46    # "deleteIntent":Landroid/content/Intent;
    .end local v58    # "memLimit":J
    .end local v67    # "procName":Ljava/lang/String;
    .end local v75    # "reportPackage":Ljava/lang/String;
    .end local v80    # "text":Ljava/lang/String;
    .end local v84    # "userId":I
    .end local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v51    # "firstPacket":[B
    .restart local v52    # "i":I
    .restart local v65    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_c
    move-exception v4

    goto/16 :goto_14

    .end local v51    # "firstPacket":[B
    .end local v52    # "i":I
    .end local v65    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v83    # "uid":I
    .restart local v72    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_d
    move-exception v4

    goto/16 :goto_d

    .end local v72    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v21    # "inm":Landroid/app/INotificationManager;
    :catch_e
    move-exception v4

    goto/16 :goto_0

    .end local v21    # "inm":Landroid/app/INotificationManager;
    .restart local v26    # "notification":Landroid/app/Notification;
    .restart local v45    # "context":Landroid/content/Context;
    .restart local v54    # "inm":Landroid/app/INotificationManager;
    .restart local v68    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v77    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v80    # "text":Ljava/lang/String;
    :catch_f
    move-exception v4

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x14 -> :sswitch_7
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0x17 -> :sswitch_b
        0x18 -> :sswitch_c
        0x19 -> :sswitch_d
        0x1b -> :sswitch_e
        0x1c -> :sswitch_5
        0x1d -> :sswitch_6
        0x21 -> :sswitch_11
        0x22 -> :sswitch_12
        0x23 -> :sswitch_14
        0x24 -> :sswitch_15
        0x25 -> :sswitch_16
        0x26 -> :sswitch_17
        0x27 -> :sswitch_18
        0x28 -> :sswitch_19
        0x29 -> :sswitch_1a
        0x2a -> :sswitch_1d
        0x2b -> :sswitch_1e
        0x2c -> :sswitch_1f
        0x2d -> :sswitch_21
        0x2f -> :sswitch_22
        0x31 -> :sswitch_23
        0x32 -> :sswitch_24
        0x33 -> :sswitch_25
        0x34 -> :sswitch_26
        0x35 -> :sswitch_27
        0x37 -> :sswitch_28
        0x38 -> :sswitch_29
        0x39 -> :sswitch_2a
        0x3a -> :sswitch_2b
        0x3b -> :sswitch_8
        0x3c -> :sswitch_2c
        0x3d -> :sswitch_2d
        0x3f -> :sswitch_10
        0x190 -> :sswitch_1c
        0x1f4 -> :sswitch_1b
        0x259 -> :sswitch_13
        0x2bc -> :sswitch_0
        0x3e7 -> :sswitch_f
        0x3e8 -> :sswitch_2e
        0x3e9 -> :sswitch_20
    .end sparse-switch
.end method
