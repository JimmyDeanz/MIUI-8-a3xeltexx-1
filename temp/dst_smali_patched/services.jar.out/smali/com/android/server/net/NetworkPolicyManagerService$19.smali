.class Lcom/android/server/net/NetworkPolicyManagerService$19;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    const/16 v26, 0x0

    :goto_0
    return v26

    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .local v24, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    .local v25, "uidRules":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .local v11, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .local v12, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v12, :cond_0

    :try_start_0
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v12, v0, v1}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v26, 0x1

    goto :goto_0

    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v24    # "uid":I
    .end local v25    # "uidRules":I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [Ljava/lang/String;

    move-object/from16 v17, v26

    check-cast v17, [Ljava/lang/String;

    .local v17, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v12, :cond_2

    :try_start_1
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v17    # "meteredIfaces":[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .local v9, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v10, "imsIface":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/IConnectivityManager;

    move-result-object v26

    const/16 v28, 0xb

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v13

    .local v13, "lp":Landroid/net/LinkProperties;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .end local v13    # "lp":Landroid/net/LinkProperties;
    :cond_4
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v28, "CscFeature_RIL_SupportVolte"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    if-eqz v9, :cond_6

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v26

    if-eqz v26, :cond_6

    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    :cond_6
    monitor-exit v27

    const/16 v26, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    const-string v26, "NetworkPolicy"

    const-string v28, "Failed to retrive IMS link properties"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v10    # "imsIface":Ljava/lang/String;
    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v26

    .end local v9    # "iface":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    if-eqz v26, :cond_8

    const/16 v23, 0x1

    .local v23, "restrictBackground":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_8
    if-ge v8, v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v12, :cond_7

    :try_start_7
    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v23    # "restrictBackground":Z
    :cond_8
    const/16 v23, 0x0

    goto :goto_7

    .restart local v8    # "i":I
    .restart local v11    # "length":I
    .restart local v23    # "restrictBackground":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v23    # "restrictBackground":Z
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .local v14, "lowestRule":J
    const-wide/16 v26, 0x3e8

    :try_start_8
    div-long v20, v14, v26

    .local v20, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .end local v20    # "persistThreshold":J
    :goto_a
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v14    # "lowestRule":J
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .local v22, "reason":I
    const-string v26, "NetworkPolicy"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "MSG_SCREEN_ON_CHANGED: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    const/16 v26, 0x4

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    const/16 v26, 0x1

    :goto_b
    move-object/from16 v0, v27

    move/from16 v1, v26

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2502(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v27

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn(Z)V
    invoke-static/range {v26 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const/16 v26, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v26, 0x0

    goto :goto_b

    .end local v22    # "reason":I
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .restart local v24    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    .local v19, "procState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v19

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateUidState(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2700(Lcom/android/server/net/NetworkPolicyManagerService;II)V

    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v19    # "procState":I
    .end local v24    # "uid":I
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .restart local v24    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->removeUidState(I)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2800(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v24    # "uid":I
    :sswitch_8
    const/16 v16, 0x0

    .local v16, "mEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x112001a

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    const-string v26, "ro.csc.country_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "China"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    if-nez v16, :cond_b

    const-string v26, "NetworkPolicy"

    const-string v27, "CHN don\'t use RestrictBackgroundData during PowerSave mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundInLowerPowerMode()Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v27

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z
    invoke-static/range {v26 .. v27}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2902(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    const-string v26, "NetworkPolicy"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "MSG_POWER_SAVE_MODE_CHANGE, mRestrictBgInLowPowerMode: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z
    invoke-static/range {v28 .. v28}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2900(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .local v5, "arg":I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v0, v5, :cond_c

    const/4 v7, 0x1

    .local v7, "enabled":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->changePowerSaveMode(Z)V
    invoke-static {v0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v7    # "enabled":Z
    :cond_c
    const/4 v7, 0x0

    goto :goto_c

    .end local v5    # "arg":I
    .end local v16    # "mEnabled":Z
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v26

    if-nez v26, :cond_d

    const/16 v26, 0x1

    :goto_d
    move-object/from16 v0, v27

    move/from16 v1, v26

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->setRoamingReductionRules(Z)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const/16 v26, 0x1

    goto/16 :goto_0

    :cond_d
    const/16 v26, 0x0

    goto :goto_d

    :sswitch_a
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .local v4, "appStatus":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .local v18, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->handleCheckFireWallPermission(ILjava/lang/String;)V
    invoke-static {v0, v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3200(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V

    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v4    # "appStatus":I
    .end local v18    # "packageName":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .restart local v24    # "uid":I
    .restart local v25    # "uidRules":I
    :catch_1
    move-exception v26

    goto/16 :goto_2

    .end local v24    # "uid":I
    .end local v25    # "uidRules":I
    .restart local v17    # "meteredIfaces":[Ljava/lang/String;
    :catch_2
    move-exception v26

    goto/16 :goto_4

    .end local v17    # "meteredIfaces":[Ljava/lang/String;
    .restart local v23    # "restrictBackground":Z
    :catch_3
    move-exception v26

    goto/16 :goto_9

    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v23    # "restrictBackground":Z
    .restart local v14    # "lowestRule":J
    :catch_4
    move-exception v26

    goto/16 :goto_a

    .end local v14    # "lowestRule":J
    .restart local v9    # "iface":Ljava/lang/String;
    .restart local v10    # "imsIface":Ljava/lang/String;
    :catch_5
    move-exception v26

    goto/16 :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_a
        0xc -> :sswitch_8
        0x3e9 -> :sswitch_9
    .end sparse-switch
.end method
