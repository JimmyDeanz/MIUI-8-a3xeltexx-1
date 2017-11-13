.class public Lcom/android/phone/vvm/omtp/sms/StatusMessage;
.super Ljava/lang/Object;
.source "StatusMessage.java"


# instance fields
.field private final mClientSmsDestinationNumber:Ljava/lang/String;

.field private final mImapPassword:Ljava/lang/String;

.field private final mImapPort:Ljava/lang/String;

.field private final mImapUserName:Ljava/lang/String;

.field private final mProvisioningStatus:Ljava/lang/String;

.field private final mServerAddress:Ljava/lang/String;

.field private final mSmtpPassword:Ljava/lang/String;

.field private final mSmtpPort:Ljava/lang/String;

.field private final mSmtpUserName:Ljava/lang/String;

.field private final mStatusReturnCode:Ljava/lang/String;

.field private final mSubscriptionUrl:Ljava/lang/String;

.field private final mTuiAccessNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;)V
    .locals 1
    .param p1, "wrappedData"    # Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "st"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mProvisioningStatus:Ljava/lang/String;

    .line 64
    const-string v0, "rc"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mStatusReturnCode:Ljava/lang/String;

    .line 65
    const-string v0, "rs"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mSubscriptionUrl:Ljava/lang/String;

    .line 66
    const-string v0, "srv"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mServerAddress:Ljava/lang/String;

    .line 67
    const-string v0, "tui"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mTuiAccessNumber:Ljava/lang/String;

    .line 68
    const-string v0, "dn"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mClientSmsDestinationNumber:Ljava/lang/String;

    .line 70
    const-string v0, "ipt"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mImapPort:Ljava/lang/String;

    .line 71
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mImapUserName:Ljava/lang/String;

    .line 72
    const-string v0, "pw"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mImapPassword:Ljava/lang/String;

    .line 73
    const-string v0, "spt"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mSmtpPort:Ljava/lang/String;

    .line 74
    const-string v0, "smtp_u"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mSmtpUserName:Ljava/lang/String;

    .line 75
    const-string v0, "smtp_pw"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mSmtpPassword:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getImapPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mImapPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getImapPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mImapPort:Ljava/lang/String;

    return-object v0
.end method

.method public getImapUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mImapUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mStatusReturnCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusMessage [mProvisioningStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mProvisioningStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatusReturnCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mStatusReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubscriptionUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mSubscriptionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServerAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTuiAccessNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mTuiAccessNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClientSmsDestinationNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mClientSmsDestinationNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImapPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mImapPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImapUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mImapUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImapPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mImapPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSmtpPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mSmtpPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSmtpUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mSmtpUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSmtpPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->mSmtpPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
