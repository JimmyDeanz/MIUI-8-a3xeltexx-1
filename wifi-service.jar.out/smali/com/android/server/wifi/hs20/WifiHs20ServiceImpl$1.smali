.class Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiHs20ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "action":Ljava/lang/String;
    const-string v3, "WifiHs20Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast received:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 414
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    if-eqz v3, :cond_0

    .line 415
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 416
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x138f

    iput v3, v1, Landroid/os/Message;->what:I

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 418
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 420
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 421
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    if-eqz v3, :cond_0

    .line 422
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 423
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    const/16 v3, 0x1393

    iput v3, v1, Landroid/os/Message;->what:I

    .line 425
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 427
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    const-string v3, "com.android.server.wifi.hs20.blacklist_alarm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 428
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    if-eqz v3, :cond_0

    .line 429
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 430
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v3, 0x138e

    iput v3, v1, Landroid/os/Message;->what:I

    .line 431
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 433
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 434
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    if-eqz v3, :cond_0

    .line 435
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 436
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v3, 0x138b

    iput v3, v1, Landroid/os/Message;->what:I

    .line 437
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 439
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 440
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    if-eqz v3, :cond_0

    .line 441
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 442
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v3, 0x1390

    iput v3, v1, Landroid/os/Message;->what:I

    .line 443
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 445
    .end local v1    # "msg":Landroid/os/Message;
    :cond_6
    const-string v3, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    const-string v3, "changeReason"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 447
    .local v2, "reason":I
    const-string v3, "WifiHs20Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    if-ne v2, v6, :cond_0

    .line 449
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    if-eqz v3, :cond_0

    .line 450
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 451
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v3, 0x1396

    iput v3, v1, Landroid/os/Message;->what:I

    .line 452
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 453
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;->this$0:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
