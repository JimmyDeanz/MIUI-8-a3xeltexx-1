.class Lcom/android/services/telephony/PstnIncomingCallNotifier$1;
.super Landroid/os/Handler;
.source "PstnIncomingCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/PstnIncomingCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/PstnIncomingCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/PstnIncomingCallNotifier;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier$1;->this$0:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier$1;->this$0:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleNewRingingConnection(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->access$000(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier$1;->this$0:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleCdmaCallWaiting(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->access$100(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier$1;->this$0:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleNewUnknownConnection(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->access$200(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
