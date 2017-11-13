.class public abstract Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
.super Ljava/lang/Object;
.source "OmtpMessageSender.java"


# instance fields
.field protected mApplicationPort:S

.field protected mDestinationNumber:Ljava/lang/String;

.field protected mSmsManager:Landroid/telephony/SmsManager;


# direct methods
.method public constructor <init>(Landroid/telephony/SmsManager;SLjava/lang/String;)V
    .locals 0
    .param p1, "smsManager"    # Landroid/telephony/SmsManager;
    .param p2, "applicationPort"    # S
    .param p3, "destinationNumber"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mSmsManager:Landroid/telephony/SmsManager;

    .line 45
    iput-short p2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mApplicationPort:S

    .line 46
    iput-object p3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method protected appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    return-void
.end method

.method public requestVvmActivation(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 55
    return-void
.end method

.method public requestVvmDeactivation(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 63
    return-void
.end method

.method protected sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 75
    iget-short v0, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mApplicationPort:S

    if-nez v0, :cond_0

    .line 76
    const-string v0, "OmtpMessageSender"

    const-string v1, "Sending TEXT sms \'%s\' to %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v6

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    aput-object v5, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mSmsManager:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 91
    :goto_0
    return-void

    .line 82
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 86
    .local v4, "data":[B
    const-string v0, "OmtpMessageSender"

    const-string v1, "Sending BINARY sms \'%s\' to %s:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    aput-object v5, v3, v8

    iget-short v5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mApplicationPort:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mSmsManager:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    iget-short v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mApplicationPort:S

    move-object v5, p2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 83
    .end local v4    # "data":[B
    :catch_0
    move-exception v7

    .line 84
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
