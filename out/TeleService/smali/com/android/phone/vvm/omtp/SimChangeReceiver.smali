.class public Lcom/android/phone/vvm/omtp/SimChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimChangeReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const-string v0, "SimChangeReceiver"

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/SimChangeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_1

    .line 48
    const-string v7, "SimChangeReceiver"

    const-string v8, "Received broadcast for user that is not owner."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 54
    const-string v7, "SimChangeReceiver"

    const-string v8, "Null action for intent."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    move v7, v9

    :goto_1
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    const-string v7, "ABSENT"

    const-string v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    const-string v7, "SimChangeReceiver"

    const-string v8, "Sim removed, removing inactive accounts"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->removeInactiveSources()V

    goto :goto_0

    .line 58
    :sswitch_0
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    goto :goto_1

    :sswitch_1
    const-string v7, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    .line 67
    :pswitch_1
    const-string v7, "subscription"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 69
    .local v6, "subId":I
    new-instance v1, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-direct {v1, p1, v6}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v1, "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->isOmtpVvmType()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 76
    .local v5, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-static {p1, v5}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailUserSet(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    .line 78
    .local v4, "isUserSet":Z
    invoke-static {p1, v5}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    .line 81
    .local v3, "isEnabledInSettings":Z
    if-eqz v4, :cond_5

    move v2, v3

    .line 84
    .local v2, "isEnabled":Z
    :goto_2
    if-nez v4, :cond_4

    .line 87
    invoke-static {p1, v5, v2, v8}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;ZZ)V

    .line 91
    :cond_4
    if-eqz v2, :cond_6

    .line 92
    const-string v7, "SimChangeReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sim state or carrier config changed: requesting activation for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->addPhoneStateListener(Landroid/telecom/PhoneAccountHandle;)V

    .line 99
    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->startActivation()V

    goto/16 :goto_0

    .line 81
    .end local v2    # "isEnabled":Z
    :cond_5
    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->isEnabledByDefault()Z

    move-result v2

    goto :goto_2

    .line 103
    .restart local v2    # "isEnabled":Z
    :cond_6
    invoke-static {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->removeSource(Landroid/telecom/PhoneAccountHandle;)V

    .line 104
    const-string v7, "SimChangeReceiver"

    const-string v8, "Sim change for disabled account."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        -0x43dd7a3f -> :sswitch_1
        -0xdb21ee7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
