.class Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;
.super Landroid/os/Handler;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IpSecAdapterHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/IPSecAdapter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapter;

    .line 1954
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1955
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1959
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1981
    :goto_0
    return-void

    .line 1961
    :pswitch_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onIpSecAdapterServiceStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/IPSecAdapter;->access$900(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;)V

    goto :goto_0

    .line 1964
    :pswitch_1
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/IPSecAdapter;->access$1000(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$IPSecEventInfo;)V

    goto :goto_0

    .line 1967
    :pswitch_2
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;I)V
    invoke-static {v1, v0, v2}, Lcom/sec/epdg/IPSecAdapter;->access$1100(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$ConnectInfo;I)V

    goto :goto_0

    .line 1970
    :pswitch_3
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onDisconnectRequestRecv(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->access$1200(Lcom/sec/epdg/IPSecAdapter;I)V

    goto :goto_0

    .line 1973
    :pswitch_4
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onCheckConnectionRequestRecv(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/epdg/IPSecAdapter;->access$1300(Lcom/sec/epdg/IPSecAdapter;II)V

    goto :goto_0

    .line 1976
    :pswitch_5
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$IpSecAdapterHandler;->this$0:Lcom/sec/epdg/IPSecAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecAdapter;->onSendKeepalive(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecAdapter;->access$1400(Lcom/sec/epdg/IPSecAdapter;I)V

    goto :goto_0

    .line 1959
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
