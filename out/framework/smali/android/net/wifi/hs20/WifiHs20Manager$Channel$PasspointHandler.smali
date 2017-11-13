.class Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;
.super Landroid/os/Handler;
.source "WifiHs20Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20Manager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PasspointHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 340
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    .line 341
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 342
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 346
    const/4 v0, 0x0

    .line 348
    .local v0, "listener":Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 400
    const-string v2, "Hs20Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v0    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 350
    .restart local v0    # "listener":Ljava/lang/Object;
    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    # getter for: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mChannelListener:Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;
    invoke-static {v2}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$000(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    # getter for: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mChannelListener:Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;
    invoke-static {v2}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$000(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;->onChannelDisconnected()V

    .line 352
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    const/4 v3, 0x0

    # setter for: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mChannelListener:Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;
    invoke-static {v2, v3}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$002(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;)Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    goto :goto_0

    .line 358
    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->getListener(IZ)Ljava/lang/Object;
    invoke-static {v2, v3, v5}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$100(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    check-cast v0, Landroid/net/wifi/hs20/WifiHs20Manager$ActionListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/hs20/WifiHs20Manager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 365
    .restart local v0    # "listener":Ljava/lang/Object;
    :sswitch_2
    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/ScanResult;

    # invokes: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->anqpRequestFinish(Landroid/net/wifi/ScanResult;)V
    invoke-static {v3, v2}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$200(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;Landroid/net/wifi/ScanResult;)V

    .line 366
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->getListener(IZ)Ljava/lang/Object;
    invoke-static {v2, v3, v5}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$100(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 367
    if-nez v0, :cond_1

    .line 368
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->getListener(IZ)Ljava/lang/Object;
    invoke-static {v2, v3, v4}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$100(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;

    .line 369
    :cond_1
    if-eqz v0, :cond_0

    .line 370
    check-cast v0, Landroid/net/wifi/hs20/WifiHs20Manager$ActionListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Landroid/net/wifi/hs20/WifiHs20Manager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 375
    .restart local v0    # "listener":Ljava/lang/Object;
    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->getListener(IZ)Ljava/lang/Object;
    invoke-static {v2, v3, v4}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$100(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_0

    .line 377
    check-cast v0, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;->onSuccess()V

    goto :goto_0

    .line 382
    .restart local v0    # "listener":Ljava/lang/Object;
    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->getListener(IZ)Ljava/lang/Object;
    invoke-static {v2, v3, v4}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$100(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    .line 384
    check-cast v0, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;->onFailure(I)V

    goto :goto_0

    .line 389
    .restart local v0    # "listener":Ljava/lang/Object;
    :sswitch_5
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;->this$0:Landroid/net/wifi/hs20/WifiHs20Manager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->peekListener(I)Ljava/lang/Object;
    invoke-static {v2, v3}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->access$300(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;I)Ljava/lang/Object;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    .line 391
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;

    .line 392
    .local v1, "str":Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;->string:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 393
    :cond_2
    check-cast v0, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;->onBrowserDismiss()V

    goto/16 :goto_0

    .line 395
    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_3
    check-cast v0, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v2, v1, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;->string:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/net/wifi/hs20/WifiHs20Manager$OsuRemListener;->onBrowserLaunch(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    nop

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x28002 -> :sswitch_2
        0x28003 -> :sswitch_1
        0x28008 -> :sswitch_5
        0x28009 -> :sswitch_4
        0x2800a -> :sswitch_3
    .end sparse-switch
.end method
