.class Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
.super Landroid/os/Handler;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    # invokes: Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->access$000(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    # invokes: Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->access$100(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    # getter for: Lcom/android/internal/telephony/gsm/GsmConnection;->mDtmfToneDelay:I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->access$200(Lcom/android/internal/telephony/gsm/GsmConnection;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 190
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    const-string v2, "Call control by SIM:send broadcast CHANGED_CALL_NUMBER"

    # invokes: Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->access$300(Lcom/android/internal/telephony/gsm/GsmConnection;Ljava/lang/String;)V

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.phone.CHANGED_CALL_NUMBER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    const-string v1, "ril.sat_setup_call"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
