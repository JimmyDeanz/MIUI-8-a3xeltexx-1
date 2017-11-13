.class public Lcom/android/server/enterprise/otp/OTPService;
.super Lcom/sec/enterprise/knox/otp/IOTPService$Stub;
.source "OTPService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static OTP_CURRENT_VERSION:Ljava/lang/String; = null

.field private static final OTP_VERSION_1_1_1:Ljava/lang/String; = "1.1.1"

.field private static final OTP_VERSION_1_2_0:Ljava/lang/String; = "1.2.0"

.field public static final OTP_VERSION_2_6_0:Ljava/lang/String; = "2.6.0"

.field private static final SYSTEM_PROP_OTP:Ljava/lang/String; = "sys.enterprise.otp.version"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "1.1.1"

    sput-object v0, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/enterprise/knox/otp/IOTPService$Stub;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPService::Constructor: ENTER ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/enterprise/otp/OTPService;->otpLoadServer()I

    .line 62
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->setupIntentFilter()V

    .line 63
    return-void
.end method

.method private checkOTPVersion(Ljava/lang/String;)Z
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 607
    sget-object v0, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 608
    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKnoxVersion()Landroid/os/PersonaManager$KnoxContainerVersion;
    .locals 2

    .prologue
    .line 614
    const-string/jumbo v1, "getKnoxVersion ENTER"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 616
    .local v0, "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    return-object v0
.end method

.method private handleDBUpgrade()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 728
    return-void
.end method

.method private setOtpVersion()V
    .locals 4

    .prologue
    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion OTPSecProdFeatureMonitor.isOTPFeatureSupported(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->getKnoxVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 624
    .local v0, "knoxVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_3

    .line 625
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 626
    const-string v1, "2.6.0"

    sput-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    .line 636
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion knoxVersion :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion setting OTP_CURRENT_VERSION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 640
    const-string/jumbo v1, "sys.enterprise.otp.version"

    sget-object v2, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOtpVersion SystemProperties.get(SYSTEM_PROP_OTP): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sys.enterprise.otp.version"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 644
    .end local v0    # "knoxVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_0
    return-void

    .line 627
    .restart local v0    # "knoxVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_1
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 628
    const-string v1, "1.2.0"

    sput-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    goto :goto_0

    .line 630
    :cond_2
    const-string v1, "1.1.1"

    sput-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    goto :goto_0

    .line 633
    :cond_3
    const-string v1, "1.1.1"

    sput-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupIntentFilter()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 712
    const-string v0, "OTPService:: setup intent filter is called"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 713
    new-instance v1, Lcom/android/server/enterprise/otp/PackageRemovalReceiver;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/PackageRemovalReceiver;-><init>()V

    .line 714
    .local v1, "receiver":Lcom/android/server/enterprise/otp/PackageRemovalReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 715
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 718
    new-instance v6, Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;-><init>()V

    .line 719
    .local v6, "timeChangeReceiver":Lcom/android/server/enterprise/otp/OTPTimeChangeLogger;
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 720
    .local v8, "timeChangeFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    iget-object v5, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 722
    return-void
.end method


# virtual methods
.method public createOtpToken(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8
    .param p1, "otpConfigData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 67
    const-string v6, "OTPService::createOtpToken: ENTER"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/common/Print;->printBundle(Landroid/os/Bundle;)V

    .line 70
    if-nez p1, :cond_0

    .line 71
    const-string v6, "OTPService::createOtpToken: Invalid input."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-object v5

    .line 74
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    const-string v6, "OTPService::createOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "vendorTokenId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 86
    .local v3, "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    const-string v7, "OTP_TOKEN_ID"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCreateAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 88
    const-string v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 91
    :cond_2
    const-string v6, "ENCRYPTION_KEY_TYPE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x152

    if-ne v6, v7, :cond_3

    .line 92
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->validateCertificateHash(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v6

    if-nez v6, :cond_5

    .line 93
    const-string v6, "SECRET_ENCRYPTION_ALGO"

    const/16 v7, 0x186

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    :cond_3
    const-string v6, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 100
    .local v4, "type":I
    const/16 v6, 0x120

    if-ne v4, v6, :cond_6

    .line 101
    new-instance v3, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    .end local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;-><init>(Landroid/content/Context;)V

    .line 108
    .restart local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    :cond_4
    :goto_1
    if-eqz v3, :cond_9

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "internalTokenId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v1, v6, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 113
    .local v1, "containerId":I
    const-string v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x400

    if-le v6, v7, :cond_7

    .line 116
    const-string v6, "OTPService::createOtpToken: The max allowed sixe of Token ID is exceeded"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 117
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    const/16 v7, 0x410

    invoke-static {v6, v5, v0, v1, v7}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 95
    .end local v0    # "callerPackage":Ljava/lang/String;
    .end local v1    # "containerId":I
    .end local v2    # "internalTokenId":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_5
    const-string v6, "OTP_TOKEN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 102
    .restart local v4    # "type":I
    :cond_6
    const/16 v6, 0x121

    if-ne v4, v6, :cond_4

    .line 103
    new-instance v3, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    .end local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;-><init>(Landroid/content/Context;)V

    .restart local v3    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    goto :goto_1

    .line 121
    .restart local v0    # "callerPackage":Ljava/lang/String;
    .restart local v1    # "containerId":I
    .restart local v2    # "internalTokenId":Ljava/lang/String;
    :cond_7
    if-eqz v5, :cond_8

    .line 122
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_8
    if-nez v2, :cond_a

    .line 126
    invoke-interface {v3, p1}, Lcom/android/server/enterprise/otp/engine/provision/IProvision;->doProvision(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .end local v0    # "callerPackage":Ljava/lang/String;
    .end local v1    # "containerId":I
    .end local v2    # "internalTokenId":Ljava/lang/String;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::createOtpToken: EXIT ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    .restart local v0    # "callerPackage":Ljava/lang/String;
    .restart local v1    # "containerId":I
    .restart local v2    # "internalTokenId":Ljava/lang/String;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::createOtpToken: token already exist with tokenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for calling pkg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 130
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    const/16 v7, 0x403

    invoke-static {v6, v5, v0, v1, v7}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0
.end method

.method public generateOtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "challenge"    # Ljava/lang/String;
    .param p4, "session"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp ENTER [tokenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 286
    const/4 v4, 0x0

    .line 287
    .local v4, "ret":I
    const/4 v3, 0x0

    .line 288
    .local v3, "otp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 291
    .local v2, "internalTokenId":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 292
    const-string v6, "OTPService::generateOtp: Skip operation. DB Upgrade active."

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    const/4 v7, 0x0

    .line 343
    if-eqz v2, :cond_0

    .line 344
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v3, :cond_1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v8, v9, v2, v10, v6}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    move-object v6, v7

    .line 350
    :goto_1
    return-object v6

    .line 344
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 296
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    move-result v6

    if-nez v6, :cond_4

    .line 297
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Token is corrupted. Delete the token and try creating it"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :catchall_0
    move-exception v6

    move-object v7, v6

    if-eqz v2, :cond_3

    .line 344
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v3, :cond_c

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v8, v9, v2, v10, v6}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_3
    throw v7

    .line 301
    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    if-nez v2, :cond_5

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 305
    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 309
    :cond_5
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyGenerateAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp - verifyCall return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 312
    if-eqz v4, :cond_6

    .line 313
    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 316
    :cond_6
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v5

    .line 317
    .local v5, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getAlgorithmType()I

    move-result v0

    .line 320
    .local v0, "algo_type":I
    const-string v6, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const/16 v6, 0x102

    if-ne v0, v6, :cond_7

    .line 323
    const-string v6, "OTP_PARAM"

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getTimeStep()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    const-string v6, "OCRA_PIN"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v6, "OCRA_SESSION"

    invoke-virtual {v1, v6, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v6, "OCRA_CHALLENGE"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v6, "SDK_VERSION_DEFINED"

    const-string v7, "1.0.0"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_7
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isGenerateOtpInputValid(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::generateOtp - isGnerateOtpInputValid() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 333
    if-eqz v4, :cond_8

    .line 334
    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 337
    :cond_8
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->generateOtp(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 339
    if-eqz v3, :cond_9

    .line 340
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->incrementTransactionCount(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 343
    :cond_9
    if-eqz v2, :cond_a

    .line 344
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v3, :cond_b

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v7, v8, v2, v9, v6}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_a
    move-object v6, v3

    .line 350
    goto/16 :goto_1

    .line 344
    :cond_b
    const/4 v6, 0x1

    goto :goto_3

    .end local v0    # "algo_type":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_2
.end method

.method public generateOtpEx(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 13
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "otpGenerateData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 356
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OTPService::generateOtpEx Enter - token Id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 357
    const/4 v5, 0x0

    .line 358
    .local v5, "ret":I
    const/4 v4, 0x0

    .line 359
    .local v4, "otp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 363
    .local v3, "internalTokenId":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 364
    const-string v10, "OTPService::generateOtpEx: Skip operation. DB Upgrade active."

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    if-eqz v3, :cond_0

    .line 434
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v10, v11, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    move-object v7, v9

    .line 440
    :goto_1
    return-object v7

    :cond_1
    move v7, v8

    .line 434
    goto :goto_0

    .line 368
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    move-result v9

    if-nez v9, :cond_4

    .line 369
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Token is corrupted. Delete the token and try creating it"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_3

    .line 434
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    if-nez v4, :cond_e

    :goto_2
    invoke-virtual {v10, v11, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_3
    throw v9

    .line 373
    :cond_4
    :try_start_2
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    if-nez v3, :cond_5

    .line 375
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx: Token doesn\'t exist for given vendor TokenId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 377
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 381
    :cond_5
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9, v3}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyGenerateAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 382
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx - verifyCall return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 384
    if-eqz v5, :cond_6

    .line 385
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 388
    :cond_6
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v6

    .line 389
    .local v6, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v9, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getAlgorithmType()I

    move-result v0

    .line 392
    .local v0, "algo_type":I
    const-string v9, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const/16 v9, 0x102

    if-ne v0, v9, :cond_8

    .line 395
    if-nez p2, :cond_7

    .line 396
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx - input bundle is null for OCRA return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 398
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bundle passed is null for OCRA. Please pass a proper bundle"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 401
    :cond_7
    const-string v9, "OTP_PARAM"

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getTimeStep()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 402
    const-string v9, "OCRA_PIN"

    const-string v10, "OCRA_STRING_PIN"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v9, "OCRA_SESSION"

    const-string v10, "OCRA_STRING_SESSION"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v2, 0x0

    .line 409
    .local v2, "challenge":Ljava/lang/String;
    const-string v9, "OCRA_HEXSTRING_CHALLENGE"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 410
    const-string v9, "OCRA_CHALLENGE"

    invoke-virtual {v1, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_3
    const-string v9, "SDK_VERSION_DEFINED"

    sget-object v10, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v2    # "challenge":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3, v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isGenerateOtpInputValid(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v5

    .line 422
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OTPService::generateOtpEx - isGnerateOtpInputValid() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 424
    if-eqz v5, :cond_9

    .line 425
    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 428
    :cond_9
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->generateOtp(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 429
    if-eqz v4, :cond_a

    .line 430
    iget-object v9, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->incrementTransactionCount(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 433
    :cond_a
    if-eqz v3, :cond_b

    .line 434
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    if-nez v4, :cond_d

    :goto_4
    invoke-virtual {v9, v10, v3, v8, v7}, Lcom/android/server/enterprise/otp/RateCheck;->updateData(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_b
    move-object v7, v4

    .line 440
    goto/16 :goto_1

    .line 412
    .restart local v2    # "challenge":Ljava/lang/String;
    :cond_c
    :try_start_3
    const-string v9, "OCRA_CHALLENGE"

    const-string v10, "OCRA_BYTEARRAY_CHALLENGE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .end local v2    # "challenge":Ljava/lang/String;
    :cond_d
    move v7, v8

    .line 434
    goto :goto_4

    .end local v0    # "algo_type":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v6    # "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    :cond_e
    move v7, v8

    goto/16 :goto_2
.end method

.method public getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B
    .locals 6
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "keyParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 481
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 482
    :cond_0
    const-string v3, "OTPService::getDerivedKey: Invalid input."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 504
    :goto_0
    return-object v2

    .line 484
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    const-string v3, "OTPService::getDerivedKey: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getDerivedKey Enter [tokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getDerivedKey Enter [keyParams = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 490
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "internalTokenId":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "CRYPTO_KDF_TYPE"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v0, v4, v5}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCryptoAccess(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    .line 499
    .local v1, "result":I
    if-nez v1, :cond_4

    .line 500
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDerivedKey(Ljava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v2

    goto/16 :goto_0

    .line 502
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getDerivedKey - caller verification failed [Error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getHmac(Ljava/lang/String;I[B)[B
    .locals 5
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 455
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 456
    :cond_0
    const-string v3, "OTPService::getHmac: Invalid input."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 475
    :goto_0
    return-object v2

    .line 458
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    const-string v3, "OTPService::getHmac: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getHmac Enter [type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 464
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "internalTokenId":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::generateOtp: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v0, v4, p2}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyCryptoAccess(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    .line 471
    .local v1, "result":I
    if-nez v1, :cond_4

    .line 472
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getHmac(Ljava/lang/String;I[B)[B

    move-result-object v2

    goto :goto_0

    .line 474
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::getHmac - caller verification failed [Error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOtpCertificate()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x40e

    .line 234
    const-string v1, "OTPService::getOtpCertificate Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "OTPService::getOtpCertificate: Skip operation. DB Upgrade active."

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    .line 244
    const-string v1, "1.2.0"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/otp/OTPService;->checkOTPVersion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 245
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 248
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getCertificate()[B

    move-result-object v0

    .line 249
    .local v0, "otpCert":[B
    if-nez v0, :cond_0

    .line 250
    const-string v1, "OTPService::getOtpCertificate returned null : Throwing UnsupportedOperationException"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 251
    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    goto :goto_0
.end method

.method public getOtpSDKVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OTPService::getOtpSDKVersion | Enter [version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 446
    const-string/jumbo v1, "sys.enterprise.otp.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "otpVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OTPService::getOtpSDKVersion | SystemProperties [version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 448
    return-object v0
.end method

.method public getOtpTokenList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/otp/common/OTPToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    const-string v4, "OTPService::getOtpTokenList Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    const-string v4, "OTPService::getOtpTokenList: Skip operation. DB Upgrade active."

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 262
    const/4 v3, 0x0

    .line 278
    :goto_0
    return-object v3

    .line 265
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/otp/common/OTPToken;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v2, v4, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 270
    .local v2, "containerId":I
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v2}, Lcom/android/server/enterprise/otp/CallerVerification;->fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "callerPkgSign":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokenList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OTPService::getOtpTokenList: EXIT [Package name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Container Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[Tokens Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSupportedDSKPPVariant()I
    .locals 2

    .prologue
    .line 584
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedDSKPPVariant(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public getSupportedDSKPPVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 580
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedDSKPPVersion(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEncryptionAlgorithms()[I
    .locals 2

    .prologue
    .line 592
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedEncryptionAlgorithms(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedKeyPackages()[I
    .locals 2

    .prologue
    .line 588
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedKeyPackages(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedKeyProtectionMethods()[I
    .locals 2

    .prologue
    .line 600
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedKeyPackages(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedMacAlgorithms()[I
    .locals 2

    .prologue
    .line 596
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->getSupportedMacAlgorithms(Ljava/lang/String;Ljava/lang/Boolean;)[I

    move-result-object v0

    return-object v0
.end method

.method public keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    .locals 3
    .param p1, "trigger"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 514
    const-string v2, "OTPService::keyProvisionClientHello Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 517
    if-nez p1, :cond_0

    .line 518
    const-string v2, "OTPService::keyProvisionClientHello: Skip operation. DSKPP Key Provision Trigger data is null."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 538
    :goto_0
    return-object v1

    .line 523
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    const-string v2, "OTPService::keyProvisionClientHello: Skip operation. DB Upgrade active."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    .line 532
    invoke-static {}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->checkDeviceSupport()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 533
    const/16 v1, 0x412

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 537
    :cond_2
    new-instance v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;

    iget-object v1, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;-><init>(Landroid/content/Context;)V

    .line 538
    .local v0, "obj":Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;

    move-result-object v1

    goto :goto_0
.end method

.method public keyProvServerFinished(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;
    .locals 4
    .param p1, "data"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 545
    const-string v3, "OTPService::setKeyProvServerFinished Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 548
    if-nez p1, :cond_0

    .line 549
    const-string v3, "OTPService::keyProvServerFinished: Skip operation. DSKPP Key Provision Server Finished data is null."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 576
    :goto_0
    return-object v1

    .line 554
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    const-string v3, "OTPService::setKeyProvServerFinished: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyProvisionPermission(Landroid/content/Context;)Z

    .line 563
    invoke-static {}, Lcom/android/server/enterprise/otp/DSKPPSupportInfo;->checkDeviceSupport()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 564
    const/16 v3, 0x412

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->throwExceptionBasedOnError(I)V

    .line 568
    :cond_2
    new-instance v0, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;

    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;-><init>(Landroid/content/Context;)V

    .line 569
    .local v0, "obj":Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;
    new-instance v1, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;-><init>()V

    .line 570
    .local v1, "status":Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/otp/engine/provision/DSKPPProvision;->keyProvisionServerFinish(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvServerFinish;)Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "tokenId":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 572
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;->setStatusCode(I)V

    .line 573
    invoke-virtual {v1, v2}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;->setTokenId(Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_3
    const/16 v3, 0x4ff

    invoke-virtual {v1, v3}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPStatus;->setStatusCode(I)V

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPService::onAdminAdded | Enter [uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 677
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved | Enter [uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 678
    iget-object v6, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    .line 679
    .local v0, "dbHandler":Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 680
    .local v5, "userId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved | user id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 682
    if-nez v5, :cond_1

    .line 683
    const-string v6, "OTPService::onAdminRemoved Ignoring call for containerId 0"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokensInContainer(I)Ljava/util/List;

    move-result-object v2

    .line 688
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    .line 689
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 690
    .local v4, "token":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    move-result v3

    .line 691
    .local v3, "ret":I
    if-nez v3, :cond_2

    .line 692
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved removed token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in TZ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 697
    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    move-result v3

    .line 698
    if-nez v3, :cond_3

    .line 699
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved removed token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in OTP DB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 694
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved remove failed for token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in TZ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 702
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTPService::onAdminRemoved remove failed for token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 707
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ret":I
    .end local v4    # "token":Ljava/lang/String;
    :cond_4
    const-string v6, "OTPService::onAdminRemoved No OTP Tokens for removed container/vendor"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPreAdminRemoval(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPService::onPreAdminRemoval | Enter [uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public declared-synchronized otpLoadServer()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 731
    monitor-enter p0

    :try_start_0
    const-string v1, "OTPService::otpLoadServer Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 734
    const-string v1, "OTP"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 735
    .local v0, "otpBinder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 736
    const-string v1, "OTPService:: otp_server already loaded"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    :goto_0
    monitor-exit p0

    return v3

    .line 742
    :cond_0
    :try_start_1
    const-string/jumbo v1, "persist.security.tlc.otp"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v1, "OTPService:: Start otp_server for OTP done : setprop"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 731
    .end local v0    # "otpBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeOtpToken(Ljava/lang/String;)I
    .locals 4
    .param p1, "tokenId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: ENTER [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "OTPService::removeOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 202
    const/16 v1, 0x4ff

    .line 229
    :goto_0
    return v1

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    .line 207
    const/4 v1, 0x0

    .line 210
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "internalTokenId":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 212
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyAdminAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 220
    :goto_1
    const/16 v2, 0x40d

    if-ne v2, v1, :cond_1

    .line 221
    const/4 v1, 0x0

    .line 223
    :cond_1
    if-nez v1, :cond_2

    .line 224
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    move-result v1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: TlcHandler deleteToken [ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    move-result v1

    .line 228
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: EXIT [result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_3
    const/16 v1, 0x408

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::removeOtpToken: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resyncOtpToken(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "otpConfigData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: ENTER [tokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 143
    invoke-static {p2}, Lcom/android/server/enterprise/otp/engine/common/Print;->printBundle(Landroid/os/Bundle;)V

    .line 145
    if-nez p2, :cond_0

    .line 146
    const-string v3, "OTPService::resyncOtpToken: Invalid input."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 147
    const/16 v2, 0x401

    .line 193
    :goto_0
    return v2

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->isDbUpgradeActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    const-string v3, "OTPService::resyncOtpToken: Skip operation. DB Upgrade active."

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 152
    const/16 v2, 0x4ff

    goto :goto_0

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->verifyDbIntegrity()Z

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "internalTokenId":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 163
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/otp/CallerVerification;->verifyAdminAccess(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 171
    :goto_1
    const-string v3, "ENCRYPTION_KEY_TYPE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x152

    if-ne v3, v4, :cond_2

    .line 172
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->validateCertificateHash(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v2

    .line 173
    if-nez v2, :cond_2

    .line 174
    const-string v3, "SECRET_ENCRYPTION_ALGO"

    const/16 v4, 0x186

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    :cond_2
    if-nez v2, :cond_3

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    const-string v3, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x120

    if-ne v3, v4, :cond_5

    .line 182
    new-instance v1, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;

    .end local v1    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    iget-object v3, p0, Lcom/android/server/enterprise/otp/OTPService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;-><init>(Landroid/content/Context;)V

    .line 189
    .restart local v1    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    :goto_2
    if-eqz v1, :cond_3

    .line 190
    invoke-interface {v1, v0, p2}, Lcom/android/server/enterprise/otp/engine/provision/IProvision;->doResync(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 192
    .end local v1    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: EXIT [result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_4
    const/16 v2, 0x408

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: Token doesnt exist for given vendor TokenId = %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    .restart local v1    # "objProvision":Lcom/android/server/enterprise/otp/engine/provision/IProvision;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPService::resyncOtpToken: Not Supported for Provisioning Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OTP_OATH_PROVISIONING_TYPE"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 186
    const/16 v2, 0x404

    goto :goto_2
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 650
    const-string v0, "OTPService::systemReady | Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady OTPSecProdFeatureMonitor.isOTPFeatureSupported(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 653
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->setOtpVersion()V

    .line 654
    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    const-string/jumbo v0, "sys.enterprise.otp.version"

    sget-object v1, Lcom/android/server/enterprise/otp/OTPService;->OTP_CURRENT_VERSION:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady SystemProperties.get(SYSTEM_PROP_BILLING, null): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sys.enterprise.otp.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/OTPService;->handleDBUpgrade()V

    .line 661
    :cond_0
    return-void
.end method
