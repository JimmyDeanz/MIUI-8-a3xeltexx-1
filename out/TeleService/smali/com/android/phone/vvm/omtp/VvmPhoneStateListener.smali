.class public Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "VvmPhoneStateListener.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mPreviousState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 43
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPreviousState:I

    .line 44
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 46
    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 10
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 51
    .local v2, "state":I
    iget v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPreviousState:I

    if-eq v2, v4, :cond_0

    if-eqz v2, :cond_2

    iget v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPreviousState:I

    if-eqz v4, :cond_2

    .line 55
    :cond_0
    iput v2, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPreviousState:I

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    if-nez v2, :cond_5

    .line 60
    new-instance v3, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;-><init>(Landroid/content/Context;)V

    .line 62
    .local v3, "voicemailStatusQueryHelper":Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v4}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->isVoicemailSourceConfigured(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v4}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->isNotificationsChannelActive(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 64
    const-string v4, "VvmPhoneStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifications channel is active for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v4, v5, v8, v8, v8}, Landroid/provider/VoicemailContract$Status;->setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V

    .line 69
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->clearMwiIndicator(I)V

    .line 74
    :cond_3
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->isVvmSourceRegistered(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    const-string v4, "VvmPhoneStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal returned: requesting resync for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v4, "VvmPhoneStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal returned: requesting resync for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v5, "full_sync"

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v4, v5, v6, v9}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, "serviceIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    .end local v3    # "voicemailStatusQueryHelper":Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;
    :goto_1
    iput v2, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPreviousState:I

    goto/16 :goto_0

    .line 85
    .restart local v3    # "voicemailStatusQueryHelper":Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;
    :cond_4
    const-string v4, "VvmPhoneStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal returned: reattempting activation for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v4, "VvmPhoneStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal returned: reattempting activation for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    .line 93
    .local v0, "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    invoke-virtual {v0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->startActivation()V

    goto :goto_1

    .line 96
    .end local v0    # "carrierConfigHelper":Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
    .end local v3    # "voicemailStatusQueryHelper":Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;
    :cond_5
    const-string v4, "VvmPhoneStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifications channel is inactive for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v6, "full_sync"

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v5, v6, v7, v9}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 101
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->isVvmSourceRegistered(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v4, v5, v8, v9, v9}, Landroid/provider/VoicemailContract$Status;->setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V

    goto/16 :goto_1
.end method
