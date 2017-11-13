.class public Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
.super Ljava/lang/Object;
.source "OmtpVvmCarrierConfigHelper.java"


# instance fields
.field private mCarrierConfig:Landroid/os/PersistableBundle;

.field private mContext:Landroid/content/Context;

.field private mSubId:I

.field private mVvmType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    .line 46
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 47
    invoke-virtual {p0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    iget v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    const-string v2, "OmtpVvmCarrierConfigHelper"

    const-string v3, "Invalid subscriptionId or subscriptionId not provided in intent."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-object v1

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 115
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_1

    .line 116
    const-string v2, "OmtpVvmCarrierConfigHelper"

    const-string v3, "No carrier config service found."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_1
    iget v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_0
.end method

.method private getMessageSender()Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 124
    iget-object v5, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-nez v5, :cond_0

    .line 125
    const-string v2, "OmtpVvmCarrierConfigHelper"

    const-string v5, "Empty carrier config."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-object v4

    .line 129
    :cond_0
    iget-object v5, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v6, "vvm_port_number_int"

    invoke-virtual {v5, v6, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 131
    .local v7, "applicationPort":I
    iget-object v5, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v6, "vvm_destination_number_string"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "destinationNumber":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    const-string v2, "OmtpVvmCarrierConfigHelper"

    const-string v5, "No destination number for this carrier."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    .line 139
    .local v0, "messageSender":Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
    iget v5, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-static {v5}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v1

    .line 140
    .local v1, "smsManager":Landroid/telephony/SmsManager;
    iget-object v6, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    move v2, v5

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 150
    const-string v2, "OmtpVvmCarrierConfigHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected visual voicemail type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v4, v0

    .line 153
    goto :goto_0

    .line 140
    :sswitch_0
    const-string v8, "vvm_type_omtp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :sswitch_1
    const-string v2, "vvm_type_cvvm"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 142
    :pswitch_0
    new-instance v0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;

    .end local v0    # "messageSender":Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
    int-to-short v2, v7

    const-string v5, "11"

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;-><init>(Landroid/telephony/SmsManager;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .restart local v0    # "messageSender":Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
    goto :goto_2

    .line 146
    :pswitch_1
    new-instance v0, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;

    .end local v0    # "messageSender":Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
    int-to-short v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;-><init>(Landroid/telephony/SmsManager;SLjava/lang/String;)V

    .line 148
    .restart local v0    # "messageSender":Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
    goto :goto_2

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        -0x582a47c3 -> :sswitch_1
        -0x5824f553 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCarrierVvmPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-nez v1, :cond_0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "carrier_vvm_package_name_string"

    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVvmType()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "vvm_type_string"

    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEnabledByDefault()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 78
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v5, "carrier_vvm_package_name_string"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 87
    :goto_0
    return v2

    .line 84
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isOmtpVvmType()Z
    .locals 2

    .prologue
    .line 69
    const-string v0, "vvm_type_omtp"

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vvm_type_cvvm"

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivation()V
    .locals 4

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getMessageSender()Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;

    move-result-object v0

    .line 93
    .local v0, "messageSender":Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
    if-eqz v0, :cond_0

    .line 94
    const-string v1, "OmtpVvmCarrierConfigHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting VVM activation for subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->requestVvmActivation(Landroid/app/PendingIntent;)V

    .line 97
    :cond_0
    return-void
.end method

.method public startDeactivation()V
    .locals 4

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getMessageSender()Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;

    move-result-object v0

    .line 101
    .local v0, "messageSender":Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
    if-eqz v0, :cond_0

    .line 102
    const-string v1, "OmtpVvmCarrierConfigHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting VVM deactivation for subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->requestVvmDeactivation(Landroid/app/PendingIntent;)V

    .line 105
    :cond_0
    return-void
.end method
