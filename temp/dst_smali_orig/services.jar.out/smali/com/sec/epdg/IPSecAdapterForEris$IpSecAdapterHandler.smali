.class Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;
.super Landroid/os/Handler;
.source "IPSecAdapterForEris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapterForEris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IpSecAdapterHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecAdapterForEris;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/IPSecAdapterForEris;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/erisclient/ErisError;

    # invokes: Lcom/sec/epdg/IPSecAdapterForEris;->onIpSecAdapterServiceStatusChanged(Lcom/sec/erisclient/ErisError;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/IPSecAdapterForEris;->access$700(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/erisclient/ErisError;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;

    # invokes: Lcom/sec/epdg/IPSecAdapterForEris;->onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/IPSecAdapterForEris;->access$800(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecAdapterForEris;->onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;I)V
    invoke-static {v1, v0, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->access$900(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecAdapterForEris;->onDisconnectRequestRecv(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecAdapterForEris;->access$1000(Lcom/sec/epdg/IPSecAdapterForEris;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapterForEris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/sec/epdg/IPSecAdapterForEris;->onCheckConnectionRequestRecv(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->access$1100(Lcom/sec/epdg/IPSecAdapterForEris;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
