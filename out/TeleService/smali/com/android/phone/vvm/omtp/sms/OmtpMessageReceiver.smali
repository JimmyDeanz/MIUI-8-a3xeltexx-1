.class public Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmtpMessageReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private processSync(Lcom/android/phone/vvm/omtp/sms/SyncMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/android/phone/vvm/omtp/sms/SyncMessage;

    .prologue
    const/4 v4, 0x1

    .line 104
    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 126
    const-string v3, "OmtpMessageReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized sync trigger event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_1
    :pswitch_0
    return-void

    .line 104
    :sswitch_0
    const-string v6, "NM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v6, "MBU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_2
    const-string v6, "GU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getSender()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/telecom/Voicemail;->createForInsertion(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v4}, Landroid/telecom/Voicemail$Builder;->setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Voicemail$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getLength()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/telecom/Voicemail$Builder;->setDuration(J)Landroid/telecom/Voicemail$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/Voicemail$Builder;->setSourcePackage(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Voicemail$Builder;->build()Landroid/telecom/Voicemail;

    move-result-object v2

    .line 113
    .local v2, "voicemail":Landroid/telecom/Voicemail;
    new-instance v0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "queryHelper":Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;
    invoke-virtual {v0, v2}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->insertIfUnique(Landroid/telecom/Voicemail;)V

    goto :goto_1

    .line 117
    .end local v0    # "queryHelper":Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;
    .end local v2    # "voicemail":Landroid/telecom/Voicemail;
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    const-string v5, "download_only"

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v3, v5, v6, v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, "serviceIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x8ee -> :sswitch_2
        0x9bf -> :sswitch_0
        0x12960 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateSource(Lcom/android/phone/vvm/omtp/sms/StatusMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/android/phone/vvm/omtp/sms/StatusMessage;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v1

    .line 135
    .local v1, "vvmSourceManager":Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;
    const-string v2, "0"

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->getReturnCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3, v4, v4, v4}, Landroid/provider/VoicemailContract$Status;->setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V

    .line 142
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailCredentialsFromStatusMessage(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/phone/vvm/omtp/sms/StatusMessage;)V

    .line 148
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1, v2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->addSource(Landroid/telecom/PhoneAccountHandle;)V

    .line 150
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    const-string v3, "full_sync"

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v0

    .line 153
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 155
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->clearMwiIndicator(I)V

    .line 164
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v2, "OmtpMessageReceiver"

    const-string v3, "Visual voicemail not available for subscriber."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 54
    iget-object v5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    if-nez v5, :cond_1

    .line 55
    const-string v5, "OmtpMessageReceiver"

    const-string v6, "Received message for null phone account"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v5, v6}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 60
    const-string v5, "OmtpMessageReceiver"

    const-string v6, "Received vvm message for disabled vvm source."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 65
    .local v4, "messages":[Landroid/telephony/SmsMessage;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v2, "messageBody":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 68
    aget-object v5, v4, v0

    iget-object v5, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v5, :cond_3

    .line 69
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->parse(Ljava/lang/String;)Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;

    move-result-object v3

    .line 74
    .local v3, "messageData":Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;
    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->getPrefix()Ljava/lang/String;

    move-result-object v5

    const-string v6, "//VVM:SYNC:"

    if-ne v5, v6, :cond_5

    .line 76
    new-instance v1, Lcom/android/phone/vvm/omtp/sms/SyncMessage;

    invoke-direct {v1, v3}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;-><init>(Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;)V

    .line 78
    .local v1, "message":Lcom/android/phone/vvm/omtp/sms/SyncMessage;
    const-string v5, "OmtpMessageReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SYNC sms for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v7}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with event"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v5, "OmtpMessageReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SYNC sms for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v7}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with event"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->processSync(Lcom/android/phone/vvm/omtp/sms/SyncMessage;)V

    goto/16 :goto_0

    .line 83
    .end local v1    # "message":Lcom/android/phone/vvm/omtp/sms/SyncMessage;
    :cond_5
    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->getPrefix()Ljava/lang/String;

    move-result-object v5

    const-string v6, "//VVM:STATUS:"

    if-ne v5, v6, :cond_6

    .line 84
    const-string v5, "OmtpMessageReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received STATUS sms for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v7}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v5, "OmtpMessageReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received Status sms for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v7}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/android/phone/vvm/omtp/sms/StatusMessage;

    invoke-direct {v1, v3}, Lcom/android/phone/vvm/omtp/sms/StatusMessage;-><init>(Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;)V

    .line 87
    .local v1, "message":Lcom/android/phone/vvm/omtp/sms/StatusMessage;
    invoke-direct {p0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->updateSource(Lcom/android/phone/vvm/omtp/sms/StatusMessage;)V

    goto/16 :goto_0

    .line 89
    .end local v1    # "message":Lcom/android/phone/vvm/omtp/sms/StatusMessage;
    :cond_6
    const-string v5, "OmtpMessageReceiver"

    const-string v6, "This should never have happened"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
