.class public Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;
.super Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
.source "OmtpCvvmMessageSender.java"


# direct methods
.method public constructor <init>(Landroid/telephony/SmsManager;SLjava/lang/String;)V
    .locals 0
    .param p1, "smsManager"    # Landroid/telephony/SmsManager;
    .param p2, "applicationPort"    # S
    .param p3, "destinationNumber"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;-><init>(Landroid/telephony/SmsManager;SLjava/lang/String;)V

    .line 31
    return-void
.end method

.method private sendCvvmMessage(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "dt"

    const-string v2, "6"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 53
    return-void
.end method


# virtual methods
.method public requestVvmActivation(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 35
    const-string v0, "Activate"

    invoke-direct {p0, v0, p1}, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;->sendCvvmMessage(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 36
    return-void
.end method

.method public requestVvmDeactivation(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 40
    const-string v0, "Deactivate"

    invoke-direct {p0, v0, p1}, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;->sendCvvmMessage(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 41
    return-void
.end method
