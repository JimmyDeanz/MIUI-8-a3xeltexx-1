.class Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;
.super Landroid/os/Handler;
.source "WifiHs20ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UtilityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->what:I

    .local v9, "actionType":I
    const-string v3, "WifiHs20Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    .local v10, "arguments":Landroid/os/Bundle;
    const-string v3, "networkInfo"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/NetworkInfo;

    .local v18, "netInfo":Landroid/net/NetworkInfo;
    if-nez v18, :cond_2

    const-string v3, "WifiHs20Service"

    const-string v4, "NetworkInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$000(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .end local v10    # "arguments":Landroid/os/Bundle;
    .end local v18    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    const-string v3, "WifiHs20Service"

    const-string v4, "Unknown message type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v10    # "arguments":Landroid/os/Bundle;
    .restart local v18    # "netInfo":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "wifiInfo"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiInfo;

    .local v20, "wifiInfo":Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$100(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .local v16, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v19

    .local v19, "newConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$000(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .end local v16    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v19    # "newConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$000(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .end local v10    # "arguments":Landroid/os/Bundle;
    .end local v18    # "netInfo":Landroid/net/NetworkInfo;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$000(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$100(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .restart local v16    # "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v20

    .restart local v20    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .local v14, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v14, :cond_0

    iget v3, v14, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    invoke-virtual {v3, v14}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .end local v14    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v20    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :sswitch_2
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .local v12, "clearBlackListmsg":Landroid/os/Message;
    const/16 v3, 0x2d

    iput v3, v12, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$100(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .restart local v16    # "mWifiManager":Landroid/net/wifi/WifiManager;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WifiHs20Service"

    const-string v4, "SEC_COMMAND_ID_HS20_CLEAR_BLACKLIST FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v12    # "clearBlackListmsg":Landroid/os/Message;
    .end local v16    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :sswitch_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .local v11, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Ljava/util/Calendar;->set(II)V

    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.android.server.wifi.hs20.blacklist_alarm"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$100(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v15, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .local v8, "alarmIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$100(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .local v2, "alarmMgr":Landroid/app/AlarmManager;
    const/4 v3, 0x3

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .end local v2    # "alarmMgr":Landroid/app/AlarmManager;
    .end local v8    # "alarmIntent":Landroid/app/PendingIntent;
    .end local v11    # "calendar":Ljava/util/Calendar;
    .end local v15    # "intent":Landroid/content/Intent;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_5

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    .restart local v10    # "arguments":Landroid/os/Bundle;
    const-string v3, "wifiConfiguration"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v3, "WifiHs20Service"

    const-string v4, "received HS20_UTILITY_ACTION_TYPE_HS20_CONFIGURATION_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_6

    const-string v3, "WifiHs20Service"

    const-string v4, "The changed config is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10    # "arguments":Landroid/os/Bundle;
    .end local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    const-string v3, "WifiHs20Service"

    const-string v4, "Unknown message type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v10    # "arguments":Landroid/os/Bundle;
    .restart local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$100(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .local v17, "manager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v20

    .restart local v20    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget v3, v13, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->access$000(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WifiHs20Service"

    const-string v4, "update notification"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    invoke-virtual {v3, v13}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x138b -> :sswitch_3
        0x138e -> :sswitch_2
        0x138f -> :sswitch_0
        0x1390 -> :sswitch_1
        0x1396 -> :sswitch_4
    .end sparse-switch
.end method
