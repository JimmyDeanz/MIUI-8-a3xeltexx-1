.class Lcom/android/internal/telephony/RIL$1;
.super Landroid/content/BroadcastReceiver;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x200

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "reason"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "state":I
    const-string v6, "enterType"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "enterType":I
    if-ne v5, v11, :cond_1

    if-eq v1, v12, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->sendSafemode(Z)V
    invoke-static {v6, v10}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;Z)V

    .end local v1    # "enterType":I
    .end local v5    # "state":I
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "enterType":I
    .restart local v5    # "state":I
    :cond_1
    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    if-eq v1, v12, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->sendSafemode(Z)V
    invoke-static {v6, v8}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;Z)V

    goto :goto_0

    .end local v1    # "enterType":I
    .end local v5    # "state":I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jp.co.android.softbankCBM.ETWS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jp.co.android.ETWS_WAPPUSH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_3
    const-string v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "persist.EarthquakeTestmode"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_4

    const-string v6, "RILJ"

    const-string v7, "intent.getExtras() = null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jp.co.android.softbankCBM.ETWS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz v6, :cond_5

    const-string v6, "RILJ"

    const-string v7, "ETWS_TEST receive"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "pdus"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "sendData":Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v9, v3, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v3    # "sendData":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jp.co.android.ETWS_WAPPUSH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    if-eqz v6, :cond_0

    const-string v6, "RILJ"

    const-string v7, "WAPPUSH_TEST receive"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "pdus"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "sendData":Ljava/lang/String;
    new-array v0, v11, [Ljava/lang/String;

    .local v0, "a":[Ljava/lang/String;
    aput-object v3, v0, v10

    const-string v6, "RILJ"

    const-string v7, "call newFromCMT"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v4

    .local v4, "sms":Landroid/telephony/SmsMessage;
    const-string v6, "RILJ"

    const-string v7, "call mGsmSmsRegistrant notifyRegistrant"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v6, v6, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v9, v4, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v0    # "a":[Ljava/lang/String;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "sendData":Ljava/lang/String;
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_6
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RIL received unexpected Intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
