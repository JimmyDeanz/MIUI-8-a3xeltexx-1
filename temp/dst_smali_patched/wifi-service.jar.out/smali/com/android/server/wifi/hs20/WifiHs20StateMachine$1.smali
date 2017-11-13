.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .local v5, "action":Ljava/lang/String;
    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Broadcast Received: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v17, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo;

    .local v10, "mLastInfo":Landroid/net/NetworkInfo;
    const-string v17, "HS20StateMachine"

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCurrentDetailedState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCurrentDetailedState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "checkifOSUAP  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " disconnectedFromSsid"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->disconnectedFromSsid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->disconnectedFromSsid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1b65

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .end local v10    # "mLastInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .restart local v10    # "mLastInfo":Landroid/net/NetworkInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCurrentDetailedState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    const-string v17, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiInfo;

    .local v15, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SSID : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NetId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->disconnectedFromSsid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v18

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->checkifOSUAP()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1b59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->CERTIFICATIION_ADDED_DELAY:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->isRemediationPending:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->handleRemediationRequest()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    goto/16 :goto_0

    .end local v15    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v17, "HS20StateMachine"

    const-string v18, "NetworkInfo is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10    # "mLastInfo":Landroid/net/NetworkInfo;
    :cond_4
    const-string v17, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "wifi_state"

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .local v16, "wifiState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1ba0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(II)V

    goto/16 :goto_0

    .end local v16    # "wifiState":I
    :cond_5
    const-string v17, "android.net.wifi.HS20_STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v17, "wifi_state"

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "HS20State":I
    if-nez v4, :cond_6

    const-string v17, "HS20StateMachine"

    const-string v18, "WIFI_HOTSPOT2_STATE_ENABLED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1b72

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_0

    const-string v17, "HS20StateMachine"

    const-string v18, "WIFI_HOTSPOT2_STATE_ENABLED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1b71

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .end local v4    # "HS20State":I
    :cond_7
    const-string v17, "android.net.wifi.HS20_REMEDIATION_REQUEST"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->isRemediationPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    move-object/from16 v17, v0

    const-string v18, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    move-object/from16 v17, v0

    const-string v18, "cred_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_RETURN_VALUE:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->credId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    move-object/from16 v17, v0

    const-string v18, "method_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_RETURN_VALUE:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->methodType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCurrentDetailedState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->handleRemediationRequest()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WNM Received: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    const-string v17, "HS20StateMachine"

    const-string v18, "Provisioning: wait till IP address is allocated or Wifi  gets connected"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const-string v17, "android.net.wifi.HS20_OSU_SELECTED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v17, "HS20StateMachine"

    const-string v18, "user intends to perform registration"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1b6b

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_a
    const-string v17, "android.net.wifi.hs20.TEST_START_OSU_PROCESS"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const-string v18, "friendly_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sigmaSpFriendlyName:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$602(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Ljava/lang/String;)Ljava/lang/String;

    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TEST_START_OSU_PROCESS: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sigmaSpFriendlyName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.android.server.wifi.hs20.TEST_LUNCH_OSU_SELECTION"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string v17, "android.net.wifi.hs20.TEST_START_OSU_PROCESS_NOSIGMA"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const-string v18, "server_uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const-string v18, "method_type"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    const-string v17, "friendly_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "strFrnlyName":Ljava/lang/String;
    const-string v17, "icon_path"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "strIcnPath":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .local v9, "frndlyname":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "eng"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    new-instance v18, Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    invoke-direct/range {v18 .. v18}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;-><init>()V

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$702(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/net/wifi/hs20/WifiHs20OsuProvider;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->setServerUri(Ljava/net/URI;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->setFriendlyName(Ljava/util/HashMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    move-result-object v17

    const-string v18, "eng"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->addOsuIcon(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "HS20StateMachine"

    const-string v18, "Start OSU Process"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1b79

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .end local v9    # "frndlyname":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "strFrnlyName":Ljava/lang/String;
    .end local v14    # "strIcnPath":Ljava/lang/String;
    :cond_c
    const-string v17, "android.net.wifi.hs20.TEST_GEN_CRED_CONF_FILE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v17, "HS20StateMachine"

    const-string v18, "Generate Cred.conf file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const-string v18, "credential_type"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const-string v18, "subscription_flag"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    goto :goto_2

    :cond_e
    const-string v17, "android.net.wifi.hs20.TEST_TRIGGER_POLICY_UPDATE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HS20_TRIGGER_POLICY_UPDATE "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HS20_TRIGGER_POLICY_UPDATE -- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I

    .local v7, "cred_id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)[Ljava/util/Timer;

    move-result-object v17

    aget-object v17, v17, v7

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)[Ljava/util/Timer;

    move-result-object v17

    aget-object v17, v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/util/Timer;->cancel()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v12

    .local v12, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-nez v12, :cond_10

    const-string v17, "HS20StateMachine"

    const-string v18, "policy null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v12, :cond_15

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    const/4 v11, -0x1

    .local v11, "method":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;

    move-result-object v17

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/4 v11, 0x1

    :cond_11
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->isPolicyUpdate(I)Z
    invoke-static {v0, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendPolicyUpdateMessage(II)V
    invoke-static {v0, v7, v11}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V

    .end local v11    # "method":I
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updatePolicyTimerForThisCredential(I)V
    invoke-static {v0, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)V

    goto/16 :goto_0

    .restart local v11    # "method":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;

    move-result-object v17

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/4 v11, 0x0

    goto :goto_3

    :cond_14
    const-string v17, "HS20StateMachine"

    const-string v18, "HS20_TRIGGER_POLICY_UPDATE Failed: No method type"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x2331

    const/16 v19, 0x0

    const/16 v20, 0x0

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v20}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v11    # "method":I
    :cond_15
    const-string v17, "HS20StateMachine"

    const-string v18, "HS20_TRIGGER_POLICY_UPDATE Failed: No policy object"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x2331

    const/16 v19, 0x0

    const/16 v20, 0x0

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v20}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v7    # "cred_id":I
    .end local v12    # "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    :cond_16
    const-string v17, "HS20StateMachine"

    const-string v18, "HS20_TRIGGER_POLICY_UPDATE Failed: No cred"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x2331

    const/16 v19, 0x0

    const/16 v20, 0x0

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v20}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const-string v17, "HS20StateMachine"

    const-string v18, "HS20_TRIGGER_POLICY_UPDATE Failed: SSID is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x2331

    const/16 v19, 0x0

    const/16 v20, 0x0

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v20}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const-string v17, "android.net.wifi.hs20.TEST_TRIGGER_INSTALL_FILE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1b78

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_19
    const-string v17, "android.net.wifi.hs20.EAP_TYPE_FOUND"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const-string v17, "cred_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_RETURN_VALUE:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .local v6, "credID":I
    const-string v17, "eap_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_RETURN_VALUE:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .local v8, "eapType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateEapType(II)V

    goto/16 :goto_0

    .end local v6    # "credID":I
    .end local v8    # "eapType":I
    :cond_1a
    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1b77

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_1b
    const-string v17, "android.net.wifi.HS20_EAP_TYPE_FOUND"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v17, v0

    const-string v18, "cred_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_RETURN_VALUE:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const-string v19, "eap_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_RETURN_VALUE:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateEapType(II)V

    goto/16 :goto_0
.end method
