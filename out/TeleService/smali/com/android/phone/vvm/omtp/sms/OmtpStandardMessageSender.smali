.class public Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;
.super Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
.source "OmtpStandardMessageSender.java"


# instance fields
.field private final mClientPrefix:Ljava/lang/String;

.field private final mClientType:Ljava/lang/String;

.field private final mProtocolVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/telephony/SmsManager;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "smsManager"    # Landroid/telephony/SmsManager;
    .param p2, "applicationPort"    # S
    .param p3, "destinationNumber"    # Ljava/lang/String;
    .param p4, "clientType"    # Ljava/lang/String;
    .param p5, "protocolVersion"    # Ljava/lang/String;
    .param p6, "clientPrefix"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;-><init>(Landroid/telephony/SmsManager;SLjava/lang/String;)V

    .line 50
    iput-object p4, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mClientType:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mClientPrefix:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private appendApplicationPort(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 110
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, "pt"

    iget-short v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mApplicationPort:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method private appendClientPrefix(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 115
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mClientPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    return-void
.end method

.method private appendProtocolVersionAndClientType(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 103
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v0, "pv"

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, "ct"

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mClientType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-void
.end method


# virtual methods
.method public requestVvmActivation(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendProtocolVersionAndClientType(Ljava/lang/StringBuilder;)V

    .line 64
    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    const-string v2, "12"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    const-string v2, "13"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendApplicationPort(Ljava/lang/StringBuilder;)V

    .line 67
    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendClientPrefix(Ljava/lang/StringBuilder;)V

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 71
    return-void
.end method

.method public requestVvmDeactivation(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deactivate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendProtocolVersionAndClientType(Ljava/lang/StringBuilder;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 83
    return-void
.end method
