.class Lcom/android/internal/telephony/PhoneProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x7d0

    const/4 v3, 0x0

    const-string v0, "PhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneProxyReceiver: action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.action.LTE_MODE_CHNAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PhoneProxy"

    const-string v1, "disableDataConnectivity"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(Z)V

    const-string v0, "lte_mode"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/PhoneProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/PhoneProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
