.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p2, "x1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v3, 0x22010

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string v2, "wifi_state"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiState:I
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string v2, "wifi_state"

    const/16 v3, 0xb

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiApState:I
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I

    goto :goto_0

    :cond_2
    const-string v0, "edm.intent.action.internal.RESTRICTION_DISABLE_WFD"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiDirectAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "cr":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isWifiDirectAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v0

    const v2, 0x22010

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "cr":Landroid/database/Cursor;
    :cond_4
    const-string v0, "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "WifiP2pService"

    const-string v2, "ACTION_P2P_STOPFIND_TIMER_EXPIRED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v0

    const v2, 0x22004

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_5
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "reason"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .local v9, "reason":I
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifip2p"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pManager;

    .local v8, "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-eq v9, v0, :cond_6

    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .end local v8    # "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    .end local v9    # "reason":I
    :cond_7
    const-string v0, "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string v2, "sscon"

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "com.sec.android.sidesync.source.SERVICE_DESTROY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string v2, "ssdis"

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "com.sec.android.sidesync.sink.SIDESYNC_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string v2, "sicon"

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "com.sec.android.sidesync.sink.SERVICE_DESTROY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string v2, "sidis"

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string v2, "lcdon"

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string v2, "lcdoff"

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
