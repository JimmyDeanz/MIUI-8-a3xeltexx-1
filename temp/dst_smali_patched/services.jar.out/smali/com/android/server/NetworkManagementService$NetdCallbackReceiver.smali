.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method

.method private getWifiConnectedChannel(I)I
    .locals 5
    .param p1, "frequency"    # I

    .prologue
    const/16 v4, 0xf

    const/4 v1, -0x1

    .local v1, "channel":I
    const/16 v0, 0x96c

    .local v0, "baseFrequency":I
    sub-int v2, p1, v0

    .local v2, "freqDiff":I
    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v1, v3, 0x1

    const/16 v3, 0xd

    if-le v1, v3, :cond_2

    if-gt v1, v4, :cond_2

    const/16 v1, 0xe

    :cond_2
    if-le v1, v4, :cond_0

    const/16 v1, 0x95

    goto :goto_0
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    const/16 v0, 0x265

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$502(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 35
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    const-string v4, "Invalid event from daemon (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .local v19, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    :sswitch_0
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Iface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "added"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "NetworkManagementService"

    const-string v9, "Added Wi-Fi hotspot "

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "removed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "NetworkManagementService"

    const-string v9, "Removed Wi-Fi hotspot"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "changed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    const-string v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "NetworkManagementService"

    const-string v9, "Changed Wi-Fi hotspot"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "linkstate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    const-string v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_1
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_6

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "limit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "alert"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_2
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_9

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "IfaceMessage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    aget-object v4, p3, v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_3
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_c

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "IfaceClass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    const-wide/16 v8, 0x0

    .local v8, "timestampNanos":J
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    const/4 v4, 0x4

    :try_start_0
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-wide v8

    :goto_3
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "active"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .local v26, "isActive":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v26, :cond_f

    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    :goto_4
    const/4 v10, 0x0

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;IIJZ)V

    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v26    # "isActive":Z
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_3

    .restart local v26    # "isActive":Z
    :cond_f
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    goto :goto_4

    .end local v8    # "timestampNanos":J
    .end local v26    # "isActive":Z
    :sswitch_4
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x7

    if-lt v4, v5, :cond_10

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_11
    const/4 v4, 0x4

    aget-object v24, p3, v4

    .local v24, "iface":Ljava/lang/String;
    const/4 v4, 0x5

    :try_start_1
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .local v21, "flags":I
    const/4 v4, 0x6

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .local v30, "scope":I
    new-instance v16, Landroid/net/LinkAddress;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-direct {v0, v4, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .local v16, "address":Landroid/net/LinkAddress;
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "updated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v16    # "address":Landroid/net/LinkAddress;
    .end local v21    # "flags":I
    .end local v30    # "scope":I
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v18

    .local v18, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "address":Landroid/net/LinkAddress;
    .restart local v21    # "flags":I
    .restart local v30    # "scope":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/NetworkManagementService;->access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_5

    .end local v16    # "address":Landroid/net/LinkAddress;
    .end local v21    # "flags":I
    .end local v24    # "iface":Ljava/lang/String;
    .end local v30    # "scope":I
    :sswitch_5
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_13

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "DnsInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "servers"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x4

    :try_start_2
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v28

    .local v28, "lifetime":J
    const/4 v4, 0x5

    aget-object v4, p3, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .local v31, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-wide/from16 v0, v28

    move-object/from16 v2, v31

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .end local v28    # "lifetime":J
    .end local v31    # "servers":[Ljava/lang/String;
    :cond_13
    const/4 v4, 0x1

    goto/16 :goto_1

    :catch_2
    move-exception v18

    .local v18, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :sswitch_6
    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Route"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ge v4, v5, :cond_15

    :cond_14
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_15
    const/16 v34, 0x0

    .local v34, "via":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "dev":Ljava/lang/String;
    const/16 v33, 0x1

    .local v33, "valid":Z
    const/16 v23, 0x4

    .local v23, "i":I
    :goto_6
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v4, v5, :cond_1a

    if-eqz v33, :cond_1a

    aget-object v4, p3, v23

    const-string v5, "dev"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    if-nez v17, :cond_16

    add-int/lit8 v4, v23, 0x1

    aget-object v17, p3, v4

    :goto_7
    add-int/lit8 v23, v23, 0x2

    goto :goto_6

    :cond_16
    const/16 v33, 0x0

    goto :goto_7

    :cond_17
    aget-object v4, p3, v23

    const-string v5, "via"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-nez v34, :cond_18

    add-int/lit8 v4, v23, 0x1

    aget-object v34, p3, v4

    goto :goto_7

    :cond_18
    const/16 v33, 0x0

    goto :goto_7

    :cond_19
    const/16 v33, 0x0

    goto :goto_7

    :cond_1a
    if-eqz v33, :cond_1c

    const/16 v22, 0x0

    .local v22, "gateway":Ljava/net/InetAddress;
    if-eqz v34, :cond_1b

    :try_start_3
    invoke-static/range {v34 .. v34}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v22

    :cond_1b
    new-instance v27, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .local v27, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v27

    # invokes: Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    invoke-static {v4, v5, v0}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v27    # "route":Landroid/net/RouteInfo;
    :catch_3
    move-exception v4

    .end local v22    # "gateway":Ljava/net/InetAddress;
    :cond_1c
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v17    # "dev":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v33    # "valid":Z
    .end local v34    # "via":Ljava/lang/String;
    :sswitch_7
    const/4 v4, 0x1

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .local v32, "uid":I
    const/4 v4, 0x2

    aget-object v4, p3, v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .local v20, "firstPacket":[B
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    move/from16 v0, v32

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v4

    goto/16 :goto_0

    .end local v20    # "firstPacket":[B
    .end local v32    # "uid":I
    :sswitch_8
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "sta_join"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_1d
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "sta_join"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "NetworkManagementService"

    const-string v15, "Client device connected to Wi-Fi hotspot"

    invoke-static/range {v10 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_8
    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v25, "intent":Landroid/content/Intent;
    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_1f

    const-string v4, "NUM"

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-le v4, v5, :cond_20

    const-string v4, "MAC"

    const/4 v5, 0x4

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v25    # "intent":Landroid/content/Intent;
    :cond_21
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "NetworkManagementService"

    const-string v15, "Client device disconnected from Wi-Fi hotspot"

    invoke-static/range {v10 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_22
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "sta_assoc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v25, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v25    # "intent":Landroid/content/Intent;
    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_23

    const-string v4, "MAC"

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v25    # "intent":Landroid/content/Intent;
    :cond_24
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "wps_success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "wps_fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "wps_timeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "wps_overlap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "wps_pin_needed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_25
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wps State Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v25    # "intent":Landroid/content/Intent;
    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v25    # "intent":Landroid/content/Intent;
    :cond_26
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "driver_state"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x3

    aget-object v4, p3, v4

    const-string v5, "HANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v25    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v25    # "intent":Landroid/content/Intent;
    :cond_27
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "channel_switch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_28
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .restart local v8    # "timestampNanos":J
    :catch_5
    move-exception v4

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x265 -> :sswitch_3
        0x266 -> :sswitch_4
        0x267 -> :sswitch_5
        0x268 -> :sswitch_6
        0x269 -> :sswitch_7
        0x26a -> :sswitch_2
        0x28b -> :sswitch_8
    .end sparse-switch
.end method
