.class public Lcom/android/services/telephony/sip/SipBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SipBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipBroadcastReceiver] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method private takeCall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const-string v4, "com.android.services.telephony.sip.phone_account"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 63
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "com.android.services.telephony.sip.incoming_call_intent"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 67
    .local v3, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v3, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 68
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccount;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v3, v0, v1}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 74
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v3    # "tm":Landroid/telecom/TelecomManager;
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v1    # "extras":Landroid/os/Bundle;
    .restart local v2    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .restart local v3    # "tm":Landroid/telecom/TelecomManager;
    :cond_1
    const-string v4, "takeCall, PhoneAccount is disabled. Not accepting incoming call..."

    invoke-static {v4}, Lcom/android/services/telephony/sip/SipBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/services/telephony/sip/SipUtil;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;

    move-result-object v1

    .line 46
    .local v1, "sipAccountRegistry":Lcom/android/services/telephony/sip/SipAccountRegistry;
    const-string v2, "com.android.phone.SIP_INCOMING_CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/sip/SipBroadcastReceiver;->takeCall(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v2, "android.net.sip.SIP_SERVICE_UP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.phone.SIP_CALL_OPTION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->setup(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_4
    const-string v2, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const-string v2, "android:localSipUri"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipAccountRegistry;->removeSipProfile(Ljava/lang/String;)V

    goto :goto_0
.end method
