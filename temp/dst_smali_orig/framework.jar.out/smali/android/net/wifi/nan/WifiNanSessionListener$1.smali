.class Landroid/net/wifi/nan/WifiNanSessionListener$1;
.super Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;
.source "WifiNanSessionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/WifiNanSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/nan/WifiNanSessionListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/WifiNanSessionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/nan/WifiNanSessionListener;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-direct {p0}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMatch(I[BI[BI)V
    .locals 4
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "serviceSpecificInfoLength"    # I
    .param p4, "matchFilter"    # [B
    .param p5, "matchFilterLength"    # I

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "peer_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "message2"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    iput p5, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessageReceived(I[BI)V
    .locals 4
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .param p3, "messageLength"    # I

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    iput p1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v2}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessageSendFail(II)V
    .locals 3
    .param p1, "messageId"    # I
    .param p2, "reason"    # I

    .prologue
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessageSendSuccess(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPublishFail(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPublishTerminated(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSubscribeFail(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSubscribeTerminated(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanSessionListener$1;->this$0:Landroid/net/wifi/nan/WifiNanSessionListener;

    invoke-static {v1}, Landroid/net/wifi/nan/WifiNanSessionListener;->-get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
