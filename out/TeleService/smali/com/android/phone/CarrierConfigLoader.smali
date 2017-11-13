.class public Lcom/android/phone/CarrierConfigLoader;
.super Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;
.source "CarrierConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;,
        Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/CarrierConfigLoader;


# instance fields
.field private mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

.field private mConfigFromDefaultApp:[Landroid/os/PersistableBundle;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 356
    invoke-direct {p0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;-><init>()V

    .line 97
    new-instance v0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;-><init>(Lcom/android/phone/CarrierConfigLoader;Lcom/android/phone/CarrierConfigLoader$1;)V

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/android/phone/CarrierConfigLoader$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CarrierConfigLoader$1;-><init>(Lcom/android/phone/CarrierConfigLoader;)V

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    .line 357
    iput-object p1, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    .line 361
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 362
    .local v3, "pkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 368
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .line 369
    .local v6, "numPhones":I
    new-array v0, v6, [Landroid/os/PersistableBundle;

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;

    .line 370
    new-array v0, v6, [Landroid/os/PersistableBundle;

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    .line 371
    new-array v0, v6, [Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    .line 373
    const-string v0, "carrier_config"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 374
    const-string v0, "CarrierConfigLoader has started"

    invoke-static {v0}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 376
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CarrierConfigLoader;->restoreConfigFromXml(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CarrierConfigLoader;->bindToConfigPackage(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CarrierConfigLoader;I)Landroid/service/carrier/CarrierIdentifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getCarrierIdForPhoneId(I)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/PersistableBundle;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CarrierConfigLoader;->saveConfigToXml(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/CarrierConfigLoader;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->unbindService(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getCarrierPackageForPhoneId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CarrierConfigLoader;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->broadcastConfigChangedIntent(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->clearCachedConfigForPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CarrierConfigLoader;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->updateConfigForPhoneId(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CarrierConfigLoader;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getIccIdForPhoneId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bindToConfigPackage(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "eventId"    # I

    .prologue
    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.service.carrier.CarrierService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "carrierService":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object v2, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    new-instance v3, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    invoke-direct {v3, p0, p2, p3}, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;-><init>(Lcom/android/phone/CarrierConfigLoader;II)V

    aput-object v3, v2, p2

    .line 410
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    aget-object v3, v3, p2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 413
    :goto_0
    return v2

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, "ex":Ljava/lang/SecurityException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private broadcastConfigChangedIntent(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 399
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 401
    return-void
.end method

.method private clearCachedConfigForPackage(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 591
    iget-object v7, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 592
    .local v1, "dir":Ljava/io/File;
    new-instance v7, Lcom/android/phone/CarrierConfigLoader$2;

    invoke-direct {v7, p0, p1}, Lcom/android/phone/CarrierConfigLoader$2;-><init>(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 601
    .local v5, "packageFiles":[Ljava/io/File;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-ge v7, v6, :cond_2

    :cond_0
    const/4 v6, 0x0

    .line 606
    :cond_1
    return v6

    .line 602
    :cond_2
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 603
    .local v2, "f":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 602
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getCarrierIdForPhoneId(I)Landroid/service/carrier/CarrierIdentifier;
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const/4 v9, 0x3

    .line 418
    const-string v1, ""

    .line 419
    .local v1, "mcc":Ljava/lang/String;
    const-string v2, ""

    .line 420
    .local v2, "mnc":Ljava/lang/String;
    const-string v4, ""

    .line 421
    .local v4, "imsi":Ljava/lang/String;
    const-string v5, ""

    .line 422
    .local v5, "gid1":Ljava/lang/String;
    const-string v6, ""

    .line 423
    .local v6, "gid2":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "spn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v8

    .line 426
    .local v8, "simOperator":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 427
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 430
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 431
    .local v7, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v7, :cond_1

    .line 432
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v5

    .line 434
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v6

    .line 437
    :cond_1
    new-instance v0, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct/range {v0 .. v6}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCarrierPackageForPhoneId(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.carrier.CarrierService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 445
    .local v0, "carrierPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 446
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 448
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFilenameForConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carrierconfig-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIccIdForPhoneId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-object v1

    .line 456
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 457
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPackageVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 617
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 618
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 620
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/CarrierConfigLoader;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    const-class v1, Lcom/android/phone/CarrierConfigLoader;

    monitor-enter v1

    .line 386
    :try_start_0
    sget-object v0, Lcom/android/phone/CarrierConfigLoader;->sInstance:Lcom/android/phone/CarrierConfigLoader;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/android/phone/CarrierConfigLoader;

    invoke-direct {v0, p0}, Lcom/android/phone/CarrierConfigLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/CarrierConfigLoader;->sInstance:Lcom/android/phone/CarrierConfigLoader;

    .line 391
    :goto_0
    sget-object v0, Lcom/android/phone/CarrierConfigLoader;->sInstance:Lcom/android/phone/CarrierConfigLoader;

    monitor-exit v1

    return-object v0

    .line 389
    :cond_0
    const-string v0, "CarrierConfigLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CarrierConfigLoader;->sInstance:Lcom/android/phone/CarrierConfigLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 779
    const-string v0, "CarrierConfigLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 783
    const-string v0, "CarrierConfigLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void
.end method

.method private restoreConfigFromXml(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x2

    .line 533
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getPackageVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, "version":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 535
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get package version for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    .line 578
    :goto_0
    return-object v5

    .line 538
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 539
    :cond_1
    const-string v8, "Cannot restore config with null packageName or iccid."

    invoke-static {v8}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_2
    const/4 v5, 0x0

    .line 544
    .local v5, "restoredBundle":Landroid/os/PersistableBundle;
    const/4 v2, 0x0

    .line 546
    .local v2, "inFile":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CarrierConfigLoader;->getFilenameForConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 548
    .end local v2    # "inFile":Ljava/io/FileInputStream;
    .local v3, "inFile":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 549
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "utf-8"

    invoke-interface {v4, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 552
    :cond_3
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "event":I
    const/4 v8, 0x1

    if-eq v1, v8, :cond_4

    .line 554
    if-ne v1, v11, :cond_5

    const-string v8, "package_version"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 555
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, "savedVersion":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 557
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved version mismatch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " vs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    .line 566
    .end local v6    # "savedVersion":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-object v2, v3

    .line 576
    .end local v3    # "inFile":Ljava/io/FileInputStream;
    .restart local v2    # "inFile":Ljava/io/FileInputStream;
    goto :goto_0

    .line 562
    .end local v2    # "inFile":Ljava/io/FileInputStream;
    .restart local v3    # "inFile":Ljava/io/FileInputStream;
    :cond_5
    if-ne v1, v11, :cond_3

    const-string v8, "bundle_data"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 563
    invoke-static {v4}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    goto :goto_1

    .line 568
    .end local v1    # "event":I
    .end local v3    # "inFile":Ljava/io/FileInputStream;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "inFile":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 571
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 572
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 574
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 575
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 574
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inFile":Ljava/io/FileInputStream;
    .restart local v3    # "inFile":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/FileInputStream;
    .restart local v2    # "inFile":Ljava/io/FileInputStream;
    goto :goto_4

    .line 571
    .end local v2    # "inFile":Ljava/io/FileInputStream;
    .restart local v3    # "inFile":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/FileInputStream;
    .restart local v2    # "inFile":Ljava/io/FileInputStream;
    goto :goto_3

    .line 568
    .end local v2    # "inFile":Ljava/io/FileInputStream;
    .restart local v3    # "inFile":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/FileInputStream;
    .restart local v2    # "inFile":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private saveConfigToXml(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/os/PersistableBundle;

    .prologue
    .line 477
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 478
    :cond_0
    const-string v5, "Cannot save config with null packageName or iccid."

    invoke-static {v5}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    .line 516
    :goto_0
    return-void

    .line 481
    :cond_1
    if-nez p3, :cond_2

    .line 482
    new-instance p3, Landroid/os/PersistableBundle;

    .end local p3    # "config":Landroid/os/PersistableBundle;
    invoke-direct {p3}, Landroid/os/PersistableBundle;-><init>()V

    .line 485
    .restart local p3    # "config":Landroid/os/PersistableBundle;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getPackageVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "version":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 487
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get package version for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_3
    const/4 v2, 0x0

    .line 493
    .local v2, "outFile":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CarrierConfigLoader;->getFilenameForConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 495
    .end local v2    # "outFile":Ljava/io/FileOutputStream;
    .local v3, "outFile":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 496
    .local v1, "out":Lcom/android/internal/util/FastXmlSerializer;
    const-string v5, "utf-8"

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 497
    const-string v5, "utf-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 498
    const/4 v5, 0x0

    const-string v6, "carrier_config"

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    const/4 v5, 0x0

    const-string v6, "package_version"

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const/4 v5, 0x0

    const-string v6, "package_version"

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    const/4 v5, 0x0

    const-string v6, "bundle_data"

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    invoke-virtual {p3, v1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 504
    const/4 v5, 0x0

    const-string v6, "bundle_data"

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    const/4 v5, 0x0

    const-string v6, "carrier_config"

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 506
    invoke-virtual {v1}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 507
    invoke-virtual {v1}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 508
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 515
    .end local v3    # "outFile":Ljava/io/FileOutputStream;
    .restart local v2    # "outFile":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 510
    .end local v1    # "out":Lcom/android/internal/util/FastXmlSerializer;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 514
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "outFile":Ljava/io/FileOutputStream;
    .restart local v3    # "outFile":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "outFile":Ljava/io/FileOutputStream;
    .restart local v2    # "outFile":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 510
    .end local v2    # "outFile":Ljava/io/FileOutputStream;
    .restart local v3    # "outFile":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "outFile":Ljava/io/FileOutputStream;
    .restart local v2    # "outFile":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private unbindService(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->bound:Z

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 792
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;->bound:Z

    .line 793
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 795
    :cond_0
    return-void
.end method

.method private updateConfigForPhoneId(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getCarrierPackageForPhoneId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 638
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 710
    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump carrierconfig from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    :cond_0
    return-void

    .line 716
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarrierConfigLoader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Phone Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mConfigFromDefaultApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mConfigFromCarrierApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getConfigForSubId(I)Landroid/os/PersistableBundle;
    .locals 8
    .param p1, "subId"    # I

    .prologue
    const/4 v7, 0x0

    .line 644
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 650
    .local v2, "phoneId":I
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 651
    .local v3, "retConfig":Landroid/os/PersistableBundle;
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;

    aget-object v0, v4, v2

    .line 653
    .local v0, "config":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 655
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    aget-object v0, v4, v2

    .line 656
    if-eqz v0, :cond_1

    .line 657
    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 659
    .end local v0    # "config":Landroid/os/PersistableBundle;
    :cond_1
    return-object v3

    .line 646
    .end local v2    # "phoneId":I
    .end local v3    # "retConfig":Landroid/os/PersistableBundle;
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyConfigChangedForSubId(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 664
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 665
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore invalid phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    .line 684
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "callingPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v2

    .line 674
    .local v2, "privilegeStatus":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 675
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package is not privileged for subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 682
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/CarrierConfigLoader;->clearCachedConfigForPackage(Ljava/lang/String;)Z

    .line 683
    invoke-direct {p0, v1}, Lcom/android/phone/CarrierConfigLoader;->updateConfigForPhoneId(I)V

    goto :goto_0
.end method

.method public updateConfigForPhoneId(ILjava/lang/String;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 688
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update config for phoneId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " simState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    .line 691
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 695
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 699
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 695
    :sswitch_0
    const-string v0, "ABSENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "CARD_IO_ERROR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "UNKNOWN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "LOADED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "LOCKED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    .line 703
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->updateConfigForPhoneId(I)V

    goto :goto_0

    .line 695
    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_3
        -0x79d6d8f6 -> :sswitch_4
        -0x6d207e22 -> :sswitch_1
        0x19d1382a -> :sswitch_2
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
