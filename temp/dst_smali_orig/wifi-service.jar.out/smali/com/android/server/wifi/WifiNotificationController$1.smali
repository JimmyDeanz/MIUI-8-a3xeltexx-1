.class Lcom/android/server/wifi/WifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v14, "wifi_state"

    const/4 v15, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$002(Lcom/android/server/wifi/WifiNotificationController;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetVzwNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$200(Lcom/android/server/wifi/WifiNotificationController;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetEapAkaNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$300(Lcom/android/server/wifi/WifiNotificationController;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v14, v13}, Lcom/android/server/wifi/WifiNotificationController;->access$402(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    sget-object v13, Lcom/android/server/wifi/WifiNotificationController$7;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    const-string v13, "VZW"

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$500()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .local v11, "wifiInf":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    const-string v14, "VerizonWiFi"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\"VerizonWiFi\""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .end local v11    # "wifiInf":Landroid/net/wifi/WifiInfo;
    :cond_3
    :goto_1
    const-string v13, "ATT"

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$500()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$800()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$900(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showOngoingWifiNotification(Z)V
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1000(Lcom/android/server/wifi/WifiNotificationController;Z)V

    goto/16 :goto_0

    .restart local v11    # "wifiInf":Landroid/net/wifi/WifiInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x1

    const v15, 0x10807e9

    const/16 v16, 0x0

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V
    invoke-static/range {v13 .. v16}, Lcom/android/server/wifi/WifiNotificationController;->access$700(Lcom/android/server/wifi/WifiNotificationController;ZIZ)V

    goto :goto_1

    .end local v11    # "wifiInf":Landroid/net/wifi/WifiInfo;
    :pswitch_1
    const-string v13, "ATT"

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$500()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$800()Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mOngoingNotificationVisible:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1100(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x0

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showOngoingWifiNotification(Z)V
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1000(Lcom/android/server/wifi/WifiNotificationController;Z)V

    :cond_7
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetVzwNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$200(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v15}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    invoke-static {v13, v14, v15}, Lcom/android/server/wifi/WifiNotificationController;->access$1200(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_9
    const-string v13, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->updateResources()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1300(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0

    :cond_a
    const-string v13, "com.samsung.android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "nid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "nid":I
    const v13, 0x2df96b

    if-ne v5, v13, :cond_1

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$800()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mOngoingNotificationVisible:Z
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1102(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    :cond_b
    const-string v13, "VZW"

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$500()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationVisible:Z
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1402(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_0

    .end local v5    # "nid":I
    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACTION_AGGREGATION_DELAY"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v13, "WifiNotificationController"

    const-string v14, "recieved ACTION_AGGREGATION_DELAY"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetVzwNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$200(Lcom/android/server/wifi/WifiNotificationController;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x1

    const v15, 0x10807e9

    const/16 v16, 0x0

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V
    invoke-static/range {v13 .. v16}, Lcom/android/server/wifi/WifiNotificationController;->access$700(Lcom/android/server/wifi/WifiNotificationController;ZIZ)V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "android.net.wifi.SEC_VZW_NOTIFICATION_CANCEL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "WifiNotificationController"

    const-string v14, "recieved ACTION_SEC_VZW_NOTIFICATION_CANCEL"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mIsShowingVzwNotification:Z
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1502(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.settings.WIFI_SETTINGS_STATUS"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "WifiNotificationController"

    const-string v14, " recieved STATUS bar event click"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    new-instance v14, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v14}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1602(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1600(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    const-string v14, "VerizonWiFi"

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1600(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    const v13, 0x25001

    iput v13, v2, Landroid/os/Message;->what:I

    const/4 v13, -0x1

    iput v13, v2, Landroid/os/Message;->arg1:I

    const/4 v13, -0x1

    iput v13, v2, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1600(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    iput-object v13, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v13

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v2    # "msg":Landroid/os/Message;
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACTION_CONNECT_TO_VZW_EAP_AKA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v13, "WifiNotificationController"

    const-string v14, "ACTION_CONNECT_TO_VZW_EAP_AKA"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->connectToVzwEapAkaNetwork()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1700(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    const-string v13, "visible"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .local v10, "visible":Z
    const-string v13, "info_type"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "msgId":I
    const-string v13, "wifiInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiInfo;

    .local v12, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v13, "targetSSID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "ssid":Ljava/lang/String;
    const-string v13, "netId"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "netId":I
    const-string v13, "titleType"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .local v9, "titleType":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1800(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v10, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-nez v13, :cond_11

    const/16 v13, 0xf

    if-eq v3, v13, :cond_11

    const/16 v13, 0x12

    if-eq v3, v13, :cond_11

    const-string v13, "WifiNotificationController"

    const-string v14, "Change visible to FALSE. Because wifi is not enabled"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :cond_11
    const-string v14, "WifiNotificationController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SHOW_NOTI_MESSAGE : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", visible : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", ssid : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz v12, :cond_12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", targetSSID : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", netId : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", titleType : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x9

    if-ne v3, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showWifiPoorConnectionNotification(Landroid/net/wifi/WifiInfo;Z)Z
    invoke-static {v13, v12, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$1900(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiInfo;Z)Z

    goto/16 :goto_0

    :cond_12
    const-string v13, "null"

    goto :goto_2

    :cond_13
    const/16 v13, 0xb

    if-ne v3, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showSnsExceptionNotification(Landroid/net/wifi/WifiInfo;Z)Z
    invoke-static {v13, v12, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$2000(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiInfo;Z)Z

    goto/16 :goto_0

    :cond_14
    const/16 v13, 0xc

    if-ne v3, v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showCaptivePortalSignInNotification(Ljava/lang/String;ZI)V
    invoke-static {v13, v8, v10, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$2100(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    :cond_15
    const/16 v13, 0xd

    if-ne v3, v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showCaptivePortalDisabledStatus(Ljava/lang/String;IZ)V
    invoke-static {v13, v8, v9, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$2200(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    :cond_16
    const/16 v13, 0xe

    if-ne v3, v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showShareProfileReceptionNotification(Ljava/lang/String;)V
    invoke-static {v13, v8}, Lcom/android/server/wifi/WifiNotificationController;->access$2300(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const/16 v13, 0xf

    if-ne v3, v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showShareProfileNetworkExpirationNotification(Ljava/lang/String;)V
    invoke-static {v13, v8}, Lcom/android/server/wifi/WifiNotificationController;->access$2400(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const/16 v13, 0x10

    if-ne v3, v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showShareProfileTransmissionNotification(Ljava/lang/String;)V
    invoke-static {v13, v8}, Lcom/android/server/wifi/WifiNotificationController;->access$2500(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const/16 v13, 0x11

    if-ne v3, v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showMaliciousHotspotDetectionNotification(Ljava/lang/String;Z)V
    invoke-static {v13, v8, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$2600(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1a
    const/16 v13, 0x12

    if-ne v3, v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showWwsmPatcherNotification(IZ)Z
    invoke-static {v13, v9, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$2700(Lcom/android/server/wifi/WifiNotificationController;IZ)Z

    goto/16 :goto_0

    :cond_1b
    const-string v13, "WifiNotificationController"

    const-string v14, "Ignore SHOW_NOTI_MESSAGE. Received unhandled message"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v3    # "msgId":I
    .end local v4    # "netId":I
    .end local v8    # "ssid":Ljava/lang/String;
    .end local v9    # "titleType":I
    .end local v10    # "visible":Z
    .end local v12    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "reason"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .local v7, "reason":I
    const/4 v13, 0x2

    if-eq v7, v13, :cond_1d

    const/4 v13, 0x3

    if-ne v7, v13, :cond_1

    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1800(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .local v6, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v6}, Landroid/app/NotificationManager;->cancelAll()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
