.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private readConfAndUpdateHs20Provider()V
    .locals 4

    .prologue
    .line 866
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const-string v2, "/data/misc/wifi/wpa_supplicant.conf"

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Ljava/lang/String;Landroid/content/Context;)V

    .line 867
    .local v0, "parser":Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;
    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->processLineByLine()I

    .line 872
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUserPriority()I

    move-result v1

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1802(I)I

    .line 873
    return-void
.end method

.method private removeAllCred()V
    .locals 3

    .prologue
    .line 876
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 877
    .local v0, "msg_remove":Landroid/os/Message;
    const/16 v1, 0xd0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 878
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    const-string v1, "HS20StateMachine"

    const-string v2, "Remove Cred All error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 846
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 847
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 885
    const/4 v6, 0x0

    .line 886
    .local v6, "bRetVal":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 1061
    :cond_0
    :goto_0
    return v6

    .line 888
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 889
    .local v24, "wifiState":I
    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mIsBootComplete:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 890
    const-string v25, "HS20StateMachine"

    const-string v26, "WIFI_STATE_ENABLED"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->reloadCredentialsToSupplicant()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const/16 v26, 0x1b71

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 898
    :cond_1
    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 899
    const-string v25, "HS20StateMachine"

    const-string v26, "WIFI_STATE_DISABLED"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const/16 v26, 0x1b72

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 904
    .end local v24    # "wifiState":I
    :sswitch_1
    const-string v25, "HS20StateMachine"

    const-string v26, "CMD_BOOT_COMPLETED"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mIsBootComplete:Z
    invoke-static/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1902(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Z)Z

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 907
    const-string v25, "HS20StateMachine"

    const-string v26, "WIFI_STATE_ENABLED in Boot Complete"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->reloadCredentialsToSupplicant()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const/16 v26, 0x1b71

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 916
    :cond_2
    const/4 v6, 0x1

    .line 917
    goto/16 :goto_0

    .line 919
    :sswitch_2
    const-string v25, "HS20StateMachine"

    const-string v26, "CMD_HOTSPOT20_ENABLE : "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;
    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v26

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 921
    const/4 v6, 0x1

    .line 922
    goto/16 :goto_0

    .line 924
    :sswitch_3
    const-string v25, "HS20StateMachine"

    const-string v26, "CMD_HOTSPOT20_DISABLE : "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisablingState:Lcom/android/internal/util/State;
    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v26

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 926
    const/4 v6, 0x1

    .line 927
    goto/16 :goto_0

    .line 929
    :sswitch_4
    const-string v25, "HS20StateMachine"

    const-string v26, "CMD_TEST_TRANSIT_NOSIGMA"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;
    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v26

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 931
    const/4 v6, 0x1

    .line 932
    goto/16 :goto_0

    .line 934
    :sswitch_5
    const-string v25, "HS20StateMachine"

    const-string v26, "CMD_TEST_INSTALL_FILE"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 939
    .local v5, "args":Landroid/os/Bundle;
    const-string v25, "filetype"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 940
    .local v13, "filetype":Ljava/lang/String;
    const-string v25, "filename"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 941
    .local v11, "filename":Ljava/lang/String;
    const-string v25, "filepath"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 942
    .local v12, "filepath":Ljava/lang/String;
    const-string v25, "HS20StateMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "HS20_TRIGGER_INSTALL_FILE "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :try_start_0
    const-string v25, "PPSMO"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    .line 947
    const-string v25, "HS20StateMachine"

    const-string v26, "HS20_TRIGGER_INSTALL_FILE PPSMO"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v20, Lcom/android/server/wifi/hs20/WifiHs20PushDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20PushDB;-><init>(Landroid/content/Context;)V

    .line 949
    .local v20, "mPushDb":Lcom/android/server/wifi/hs20/WifiHs20PushDB;
    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Lcom/android/server/wifi/hs20/WifiHs20PushDB;->pushDB(Ljava/lang/String;Ljava/lang/String;)[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v18

    .line 950
    .local v18, "mPPSMO":[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    const-string v25, "HS20StateMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ppsmo count :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/16 v23, 0x0

    .line 952
    .local v23, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    .line 953
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->sortPPSMO([Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v18

    .line 954
    :cond_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 955
    .local v19, "mPPSMOCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_a

    .line 956
    aget-object v23, v18, v15

    .line 957
    if-eqz v23, :cond_5

    .line 958
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_6

    .line 959
    const-string v25, "wi-fi.org"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    .line 964
    :cond_4
    :goto_2
    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    .line 968
    :goto_3
    const-string v25, "HS20StateMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "credential Type in Hs20StateMachine - CredentialType"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addPPSMONode(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v4

    .line 972
    .local v4, "addPPSmoSussess":I
    const-string v25, "HS20StateMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mHS20DBHandler.addPPSMONode(ppsmo) "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/16 v25, 0x32

    move/from16 v0, v25

    if-ne v4, v0, :cond_9

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 976
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 978
    const-string v25, "HS20StateMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "updateMethod from subscriptionUpdateNode "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "OMA-DM-ClientInitiated"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 982
    const-string v25, "HS20StateMachine"

    const-string v26, "Sending SIGMA broadcast for remediation"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 985
    .local v22, "omaDMsigmaIntent":Landroid/content/Intent;
    const-string v25, "com.samsung.action.INSTALL_CRED_SIGMA"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const-string v25, "filename"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const-string v25, "fqdn"

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 955
    .end local v4    # "addPPSmoSussess":I
    .end local v22    # "omaDMsigmaIntent":Landroid/content/Intent;
    :cond_5
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 960
    :cond_6
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 962
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_2

    .line 1049
    .end local v15    # "i":I
    .end local v18    # "mPPSMO":[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v19    # "mPPSMOCount":I
    .end local v20    # "mPushDb":Lcom/android/server/wifi/hs20/WifiHs20PushDB;
    .end local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :catch_0
    move-exception v9

    .line 1050
    .local v9, "e":Ljava/io/IOException;
    const-string v25, "HS20StateMachine"

    const-string v26, "HS20_TRIGGER_INSTALL_FILE PPSMO exception"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 1058
    .end local v9    # "e":Ljava/io/IOException;
    :goto_5
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 967
    .restart local v15    # "i":I
    .restart local v18    # "mPPSMO":[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v19    # "mPPSMOCount":I
    .restart local v20    # "mPushDb":Lcom/android/server/wifi/hs20/WifiHs20PushDB;
    .restart local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    .line 1052
    .end local v15    # "i":I
    .end local v18    # "mPPSMO":[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v19    # "mPPSMOCount":I
    .end local v20    # "mPushDb":Lcom/android/server/wifi/hs20/WifiHs20PushDB;
    .end local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :catch_1
    move-exception v9

    .line 1053
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v25, "HS20StateMachine"

    const-string v26, "HS20_TRIGGER_INSTALL_FILE PPSMO exception"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_5

    .line 992
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "addPPSmoSussess":I
    .restart local v15    # "i":I
    .restart local v18    # "mPPSMO":[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v19    # "mPPSMOCount":I
    .restart local v20    # "mPushDb":Lcom/android/server/wifi/hs20/WifiHs20PushDB;
    .restart local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_8
    :try_start_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 995
    const-string v25, "HS20StateMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "updateMethod "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "OMA-DM-ClientInitiated"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 999
    const-string v25, "HS20StateMachine"

    const-string v26, "Sending SIGMA broadcast for policy"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 1001
    .restart local v22    # "omaDMsigmaIntent":Landroid/content/Intent;
    const-string v25, "com.samsung.action.INSTALL_CRED_SIGMA"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const-string v25, "filename"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 1055
    .end local v4    # "addPPSmoSussess":I
    .end local v15    # "i":I
    .end local v18    # "mPPSMO":[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v19    # "mPPSMOCount":I
    .end local v20    # "mPushDb":Lcom/android/server/wifi/hs20/WifiHs20PushDB;
    .end local v22    # "omaDMsigmaIntent":Landroid/content/Intent;
    .end local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :catch_2
    move-exception v9

    .line 1056
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1009
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "addPPSmoSussess":I
    .restart local v15    # "i":I
    .restart local v18    # "mPPSMO":[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .restart local v19    # "mPPSMOCount":I
    .restart local v20    # "mPushDb":Lcom/android/server/wifi/hs20/WifiHs20PushDB;
    .restart local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    goto/16 :goto_4

    .line 1013
    .end local v4    # "addPPSmoSussess":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    move/from16 v25, v0

    if-nez v25, :cond_c

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1019
    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ic:Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    move-result-object v25

    const-string v26, "cacert.der"

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->installAAA(Ljava/lang/String;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mFirstTime:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ic:Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    move-result-object v25

    new-instance v26, Ljava/io/File;

    const-string v27, "/data/cert/"

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->storeAllCA(Ljava/io/File;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    # setter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mFirstTime:Z
    invoke-static/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2802(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1028
    :cond_b
    :goto_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v26

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_5

    .line 1016
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    goto :goto_6

    .line 1024
    :catch_3
    move-exception v10

    .line 1025
    .local v10, "e12":Ljava/lang/Exception;
    const-string v25, "HS20StateMachine"

    const-string v26, "error in installing cacerts"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1030
    .end local v10    # "e12":Ljava/lang/Exception;
    .end local v15    # "i":I
    .end local v18    # "mPPSMO":[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .end local v19    # "mPPSMOCount":I
    .end local v20    # "mPushDb":Lcom/android/server/wifi/hs20/WifiHs20PushDB;
    .end local v23    # "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_d
    const-string v25, "HS20StateMachine"

    const-string v26, "HS20_TRIGGER_INSTALL_FILE CERT "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    new-instance v16, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;-><init>(Landroid/content/Context;)V

    .line 1032
    .local v16, "ic":Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;->install(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1033
    .local v8, "clientHash":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1034
    .local v7, "certID":I
    const/16 v17, 0x0

    .line 1035
    .local v17, "mCredId":I
    if-eqz v8, :cond_e

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const-string v26, "username"

    const-string v27, "\"HS20_CLIENT\""

    move-object/from16 v0, v25

    move/from16 v1, v17

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const-string v26, "private_key"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\"/data/misc/wifi/hs20/HSClientCertESTKeyStore_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".p12"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v17

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1040
    new-instance v14, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;-><init>(Landroid/content/Context;)V

    .line 1042
    .local v14, "hs20PasswordGenerator":Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;
    invoke-virtual {v14}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->genPasswd1()Ljava/lang/String;

    move-result-object v21

    .line 1043
    .local v21, "newCredkeyPass":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    const-string v26, "private_key_passwd"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v17

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_5

    .line 1047
    .end local v14    # "hs20PasswordGenerator":Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;
    .end local v21    # "newCredkeyPass":Ljava/lang/String;
    :cond_e
    const-string v25, "HS20StateMachine"

    const-string v26, "client hash is null so cant update supplicant"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_5

    .line 886
    :sswitch_data_0
    .sparse-switch
        0x1b71 -> :sswitch_2
        0x1b72 -> :sswitch_3
        0x1b77 -> :sswitch_1
        0x1b78 -> :sswitch_5
        0x1b79 -> :sswitch_4
        0x1ba0 -> :sswitch_0
    .end sparse-switch
.end method

.method public sortPPSMO([Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)[Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .locals 5
    .param p1, "ppsmo"    # [Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 851
    const/4 v2, 0x0

    .line 852
    .local v2, "mo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 853
    const/4 v1, 0x0

    .local v1, "d":I
    :goto_1
    array-length v3, p1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 854
    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    if-eqz v3, :cond_0

    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    if-ge v3, v4, :cond_0

    .line 856
    aget-object v2, p1, v1

    .line 857
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    aput-object v3, p1, v1

    .line 858
    add-int/lit8 v3, v1, 0x1

    aput-object v2, p1, v3

    .line 853
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 852
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    .end local v1    # "d":I
    :cond_2
    return-object p1
.end method
