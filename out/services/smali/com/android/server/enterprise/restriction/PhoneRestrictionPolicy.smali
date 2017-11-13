.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.super Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
    }
.end annotation


# static fields
.field private static final ACCESS_TO_PB_ADD:I = 0x1

.field private static final ACCESS_TO_PB_EDIT:I = 0x3

.field private static final ACTION_SIM_PIN_SERVICE:Ljava/lang/String; = "com.sec.enterprise.SimPinCode"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG_DELIVERY_MMS:I = 0x1

.field private static final MSG_DELIVERY_SMS:I = 0x0

.field private static final MSG_DELIVERY_SMS_MMS:I = 0x2

.field private static final SIM_PIN_BIND_TIMER:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "PhoneRestrictionPolicy"

.field private static final TYPE_MMS:I = 0x1

.field private static final TYPE_SMS:I


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDataCheckboxPreviousState:Z

.field private mDataLimitEnabled:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private volatile mIsPhoneShuttingDown:Z

.field private mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

.field private mSimPinBind:Ljava/lang/Runnable;

.field private mSimPinHandler:Landroid/os/Handler;

.field private mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

.field private mSimPinServiceConn:Landroid/content/ServiceConnection;

.field private mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;-><init>()V

    .line 107
    iput-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 111
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 120
    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 121
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    .line 2502
    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2732
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    .line 2733
    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    .line 2744
    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;

    .line 133
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, " >>> PhoneRestrictionPolicy.PhoneRestrictionPolicy()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 135
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 136
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 137
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCheckboxState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 138
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "edm.intent.action.PHONE_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/restriction/SimDBProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deliveryBlockedMsgs(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Landroid/app/enterprise/ISimPinPolicy;)Landroid/app/enterprise/ISimPinPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .param p1, "x1"    # Landroid/app/enterprise/ISimPinPolicy;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    return-object p1
.end method

.method private blockDataNetwork()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1852
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1854
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 1855
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Telephony Manager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    :goto_0
    return v1

    .line 1858
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1860
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 1861
    iget-boolean v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    .line 1862
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_1
    move v1, v2

    .line 1864
    goto :goto_0
.end method

.method private changeSimPinCodeService(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "currentPinCode"    # Ljava/lang/String;
    .param p2, "newPinCode"    # Ljava/lang/String;

    .prologue
    .line 2774
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    if-eqz v1, :cond_0

    .line 2776
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISimPinPolicy;->changeSimPinCode(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2784
    :goto_0
    return v1

    .line 2777
    :catch_0
    move-exception v0

    .line 2778
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/16 v1, 0x64

    goto :goto_0

    .line 2782
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private dataLimitCounter(Ljava/lang/String;J)V
    .locals 6
    .param p1, "period"    # Ljava/lang/String;
    .param p2, "totalBytes"    # J

    .prologue
    .line 1836
    const-wide/16 v2, 0x0

    .line 1838
    .local v2, "storageValue":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1842
    :goto_0
    add-long/2addr v2, p2

    .line 1843
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1844
    return-void

    .line 1839
    :catch_0
    move-exception v0

    .line 1840
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private deleteMessageFromStorageProvider(Ljava/lang/String;)V
    .locals 5
    .param p1, "rowId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2404
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "smsMmsBlockedRowId"

    aput-object v2, v0, v3

    .line 2405
    .local v0, "columnRowId":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 2406
    .local v1, "rowIdValue":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SMSMMSBlockedDelivery"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2408
    return-void
.end method

.method private declared-synchronized deliveryBlockedMsgs(I)V
    .locals 18
    .param p1, "type"    # I

    .prologue
    .line 2297
    monitor-enter p0

    :try_start_0
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, " >>>> deliveryBlockedMsgs"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    const/4 v15, 0x5

    new-array v2, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "smsMmsBlockedRowId"

    aput-object v16, v2, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "smsMmsSendType"

    aput-object v16, v2, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "smsMmsPdu"

    aput-object v16, v2, v15

    const/4 v15, 0x3

    const-string/jumbo v16, "smsMmsTimeStamp"

    aput-object v16, v2, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "smsMmsOrigAddress"

    aput-object v16, v2, v15

    .line 2307
    .local v2, "columns":[Ljava/lang/String;
    if-nez p1, :cond_0

    const-string v14, "1"

    .line 2308
    .local v14, "whereValue":Ljava/lang/String;
    :goto_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2309
    .local v13, "whereClause":Landroid/content/ContentValues;
    const-string/jumbo v15, "smsMmsType"

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "SMSMMSBlockedDelivery"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v12

    .line 2313
    .local v12, "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v15, "PhoneRestrictionPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "cvList size "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-eqz v15, :cond_1

    .line 2398
    :goto_1
    monitor-exit p0

    return-void

    .line 2307
    .end local v12    # "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v13    # "whereClause":Landroid/content/ContentValues;
    .end local v14    # "whereValue":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v14, "0"

    goto :goto_0

    .line 2318
    .restart local v12    # "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v13    # "whereClause":Landroid/content/ContentValues;
    .restart local v14    # "whereValue":Ljava/lang/String;
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 2319
    .local v11, "smsMms":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    if-eqz v15, :cond_3

    .line 2320
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Phone is shutting down ...quitting"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2297
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "smsMms":Landroid/content/ContentValues;
    .end local v12    # "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v13    # "whereClause":Landroid/content/ContentValues;
    .end local v14    # "whereValue":Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 2324
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v11    # "smsMms":Landroid/content/ContentValues;
    .restart local v12    # "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v13    # "whereClause":Landroid/content/ContentValues;
    .restart local v14    # "whereValue":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2328
    .local v6, "intent":Landroid/content/Intent;
    if-nez p1, :cond_8

    .line 2329
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2330
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Block SMS with storage applies... quitting"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2336
    :cond_4
    const-string/jumbo v15, "smsMmsOrigAddress"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2337
    .local v7, "origAddress":Ljava/lang/String;
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v15

    if-nez v15, :cond_5

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 2340
    :cond_5
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Other incoming SMS policies apply... delete message and continue"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    const-string/jumbo v15, "smsMmsBlockedRowId"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    goto :goto_2

    .line 2345
    :cond_6
    const-string/jumbo v15, "edm.intent.action.internal.RESTRICTION_SEND_BLOCKED_SMS"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2373
    .end local v7    # "origAddress":Ljava/lang/String;
    :goto_3
    const-string/jumbo v15, "smsMmsBlockedRowId"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    .line 2375
    const-string/jumbo v15, "smsMmsPdu"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2376
    .local v4, "hexPdu":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2377
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 2378
    .local v8, "pdu":[B
    const/4 v9, -0x1

    .line 2379
    .local v9, "sendType":I
    const-string/jumbo v15, "smsMmsSendType"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 2380
    .local v10, "sendTypeInteger":Ljava/lang/Integer;
    if-eqz v10, :cond_7

    .line 2381
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2385
    :cond_7
    const-string/jumbo v15, "extra_pdu"

    invoke-virtual {v6, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2386
    const-string/jumbo v15, "send_type"

    invoke-virtual {v6, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2387
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.sec.RECEIVE_BLOCKED_SMS_MMS"

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2391
    const-wide/16 v16, 0x1f4

    :try_start_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 2392
    :catch_0
    move-exception v3

    .line 2393
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2347
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .end local v4    # "hexPdu":Ljava/lang/String;
    .end local v8    # "pdu":[B
    .end local v9    # "sendType":I
    .end local v10    # "sendTypeInteger":Ljava/lang/Integer;
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2348
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Block MMS with storage applies... quitting"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2354
    :cond_9
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isWapPushAllowed()Z

    move-result v15

    if-nez v15, :cond_c

    .line 2359
    :cond_b
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Other incoming MMS policies apply... delete message and continue"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    const-string/jumbo v15, "smsMmsBlockedRowId"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2365
    :cond_c
    const-string/jumbo v15, "extra_time_stamp"

    const-string/jumbo v16, "smsMmsTimeStamp"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2367
    const-string/jumbo v15, "extra_orig_address"

    const-string/jumbo v16, "smsMmsOrigAddress"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2369
    const-string/jumbo v15, "edm.intent.action.internal.RESTRICTION_SEND_BLOCKED_MMS"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2397
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v11    # "smsMms":Landroid/content/ContentValues;
    :cond_d
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, " deliveryBlockedMsgs >>>> "

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePhoneApp()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    return-void
.end method

.method private enforcePhoneAppOrAdmin(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 179
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 183
    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_1
    return-object p1
.end method

.method private enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 190
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 194
    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_1
    return-object p1
.end method

.method private enforcePhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSms()V
    .locals 2

    .prologue
    .line 962
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 963
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only receive SMS by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_0
    return-void
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    return-void
.end method

.method private getDataCheckboxState()Z
    .locals 2

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "dataCallPacketDataCheckBox"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "patternType"    # Ljava/lang/String;

    .prologue
    .line 553
    const/4 v4, 0x0

    .line 554
    .local v4, "result":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 555
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 556
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 570
    :cond_0
    :goto_0
    return-object v4

    .line 559
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PHONERESTRICTION"

    invoke-virtual {v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 561
    .local v3, "restrictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

    .line 562
    .local v0, "allRestriction":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 563
    .local v2, "regex":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 564
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 566
    .end local v2    # "regex":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 567
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getSmsMmsAllowed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 2105
    const/4 v1, 0x1

    .line 2106
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2108
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2109
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 2110
    move v1, v2

    .line 2114
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method private isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "restrictionPolicy"    # Ljava/lang/String;
    .param p3, "exceptionPolicy"    # Ljava/lang/String;

    .prologue
    .line 441
    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    .line 442
    .local v11, "restrictionColumn":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "PHONERESTRICTION"

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 444
    .local v10, "restPatternList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 445
    :cond_0
    const/4 v12, 0x1

    .line 484
    :goto_0
    return v12

    .line 448
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 449
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 450
    .local v1, "adminId":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 452
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, "restPattern":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 458
    :try_start_0
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 463
    .local v8, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 465
    .local v7, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 467
    iget-object v12, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "PHONERESTRICTION"

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "exceptionPattern":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 470
    const/4 v12, 0x0

    goto :goto_0

    .line 459
    .end local v5    # "exceptionPattern":Ljava/lang/String;
    .end local v7    # "match":Ljava/util/regex/Matcher;
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v3

    .line 460
    .local v3, "ex":Ljava/util/regex/PatternSyntaxException;
    const-string v12, "PhoneRestrictionPolicy"

    const-string/jumbo v13, "failed to compile pattern for restriction"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 474
    .end local v3    # "ex":Ljava/util/regex/PatternSyntaxException;
    .restart local v5    # "exceptionPattern":Ljava/lang/String;
    .restart local v7    # "match":Ljava/util/regex/Matcher;
    .restart local v8    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    :try_start_1
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 479
    .local v4, "excPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 480
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_2

    .line 481
    const/4 v12, 0x0

    goto :goto_0

    .line 475
    .end local v4    # "excPattern":Ljava/util/regex/Pattern;
    :catch_1
    move-exception v3

    .line 476
    .restart local v3    # "ex":Ljava/util/regex/PatternSyntaxException;
    const-string v12, "PhoneRestrictionPolicy"

    const-string/jumbo v13, "failed to compile pattern for exception"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/4 v12, 0x0

    goto :goto_0

    .line 484
    .end local v1    # "adminId":Ljava/lang/Integer;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "ex":Ljava/util/regex/PatternSyntaxException;
    .end local v5    # "exceptionPattern":Ljava/lang/String;
    .end local v7    # "match":Ljava/util/regex/Matcher;
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    .end local v9    # "restPattern":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x1

    goto :goto_0
.end method

.method private isSimLocked()Z
    .locals 6

    .prologue
    .line 2788
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    if-eqz v1, :cond_0

    .line 2790
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISimPinPolicy;->isSimLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2798
    :goto_0
    return v1

    .line 2791
    :catch_0
    move-exception v0

    .line 2792
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2796
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private putDataCheckboxState(Z)Z
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "dataCallPacketDataCheckBox"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private restorePacketDataNetworkSetting()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1873
    iget-boolean v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1874
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1876
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 1877
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Telephony Manager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return v1

    .line 1880
    .restart local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1881
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1883
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 1884
    iget-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    move v1, v2

    .line 1886
    goto :goto_0
.end method

.method private setIccLockEnabled(ZLjava/lang/String;)I
    .locals 6
    .param p1, "lock"    # Z
    .param p2, "pinCode"    # Ljava/lang/String;

    .prologue
    .line 2760
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    if-eqz v1, :cond_0

    .line 2762
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISimPinPolicy;->setIccLockEnabled(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2770
    :goto_0
    return v1

    .line 2763
    :catch_0
    move-exception v0

    .line 2764
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/16 v1, 0x64

    goto :goto_0

    .line 2768
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private updateDateAndCounters()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1466
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> PhoneRestrictionPolicy.updateDateAndCounters()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1469
    .local v0, "calendarCurrent":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1470
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1471
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1472
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1475
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1476
    .local v1, "calendarDay":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1479
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1480
    .local v3, "calendarWeek":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1483
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1484
    .local v2, "calendarMonth":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1487
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1490
    .local v4, "time":J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1491
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1493
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1495
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1499
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 1504
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1506
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1509
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1515
    :cond_1
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1518
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1520
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1523
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1528
    :cond_3
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "PhoneRestrictionPolicy.updateDateAndCounters() >>>"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    return-void
.end method

.method private updateDateAndCountersSms()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1068
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> SmsRestrictionPolicy.updateDateAndCountersSms()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1071
    .local v0, "calendarCurrent":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1072
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1073
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1074
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1077
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1078
    .local v1, "calendarDay":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1081
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1082
    .local v3, "calendarWeek":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1085
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1086
    .local v2, "calendarMonth":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1088
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1090
    .local v4, "time":J
    const-string v6, "PhoneRestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "current time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1093
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1095
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1097
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1101
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 1106
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1108
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1111
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1117
    :cond_1
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1120
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1122
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1125
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1130
    :cond_3
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "SmsRestrictionPolicy.updateDateAndCountersSms() >>>"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    return-void
.end method

.method private validatePinCode(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pinCode"    # Ljava/lang/String;

    .prologue
    .line 2529
    const/4 v1, 0x1

    .line 2530
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    .line 2532
    :cond_0
    const/4 v1, 0x0

    .line 2542
    :cond_1
    :goto_0
    return v1

    .line 2535
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_1

    .line 2536
    const/4 v1, 0x0

    goto :goto_0

    .line 2538
    :catch_0
    move-exception v0

    .line 2539
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2874
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addIncomingCallExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    if-nez p2, :cond_1

    const/4 v3, 0x0

    .line 2892
    :cond_0
    :goto_0
    return v3

    .line 2877
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2878
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2879
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 2881
    :cond_3
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 2882
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2883
    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    .line 2884
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2886
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addIncomingCallExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addIncomingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2888
    :catch_0
    move-exception v0

    .line 2889
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 281
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addIncomingCallRestriction()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-nez p2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v3

    .line 284
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 286
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 288
    :cond_3
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 289
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 290
    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    .line 291
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 293
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addIncomingCallRestriction"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addIncomingCallRestriction calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 3008
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addIncomingSmsExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    if-nez p2, :cond_1

    const/4 v3, 0x0

    .line 3026
    :cond_0
    :goto_0
    return v3

    .line 3011
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 3012
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3013
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 3015
    :cond_3
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 3016
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 3017
    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    .line 3018
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 3020
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addIncomingSmsExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addIncomingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3022
    :catch_0
    move-exception v0

    .line 3023
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 639
    if-nez p2, :cond_0

    .line 646
    :goto_0
    return v1

    .line 641
    :cond_0
    const-string/jumbo v2, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "regex":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 644
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 646
    :cond_2
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 11

    .prologue
    .line 1333
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfIncomingCalls()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 1335
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1336
    const/4 v4, 0x0

    .line 1375
    :cond_0
    :goto_0
    return v4

    .line 1338
    :cond_1
    const/4 v4, 0x0

    .line 1339
    .local v4, "ret":Z
    const/4 v0, 0x0

    .line 1340
    .local v0, "countDay":I
    const/4 v2, 0x0

    .line 1341
    .local v2, "countWeek":I
    const/4 v1, 0x0

    .line 1342
    .local v1, "countMonth":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1345
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1347
    .local v5, "strCountDay":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1349
    .local v7, "strCountWeek":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1351
    .local v6, "strCountMonth":Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 1353
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1354
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1355
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1361
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1362
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1365
    add-int/lit8 v2, v2, 0x1

    .line 1366
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1370
    add-int/lit8 v1, v1, 0x1

    .line 1371
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1374
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfIncomingCalls() >>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    :catch_0
    move-exception v3

    .line 1357
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfIncomingCalls - exception"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addNumberOfIncomingSms()Z
    .locals 8

    .prologue
    .line 869
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SMSRestrictionPolicy.addNumberOfIncomingSMS()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    .line 871
    const/4 v3, 0x0

    .line 872
    .local v3, "ret":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 896
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 876
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 878
    .local v0, "countDay":I
    add-int/lit8 v0, v0, 0x1

    .line 879
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 882
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 884
    .local v2, "countWeek":I
    add-int/lit8 v2, v2, 0x1

    .line 885
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 889
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 891
    .local v1, "countMonth":I
    add-int/lit8 v1, v1, 0x1

    .line 892
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 895
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SMSRestrictionPolicy.addNumberOfIncomingSMS() >>>"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 896
    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 11

    .prologue
    .line 1384
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfOutgoingCalls()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 1386
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1387
    const/4 v4, 0x0

    .line 1426
    :cond_0
    :goto_0
    return v4

    .line 1389
    :cond_1
    const/4 v4, 0x0

    .line 1390
    .local v4, "ret":Z
    const/4 v0, 0x0

    .line 1391
    .local v0, "countDay":I
    const/4 v2, 0x0

    .line 1392
    .local v2, "countWeek":I
    const/4 v1, 0x0

    .line 1393
    .local v1, "countMonth":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1396
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1398
    .local v5, "strCountDay":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1400
    .local v7, "strCountWeek":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1402
    .local v6, "strCountMonth":Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 1404
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1405
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1406
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1412
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1413
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1416
    add-int/lit8 v2, v2, 0x1

    .line 1417
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1421
    add-int/lit8 v1, v1, 0x1

    .line 1422
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1425
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfOutgoingCalls >>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1407
    :catch_0
    move-exception v3

    .line 1408
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfOutgoingCalls - exception"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 8

    .prologue
    .line 900
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.addNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    .line 902
    const/4 v3, 0x0

    .line 903
    .local v3, "ret":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 927
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 907
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 909
    .local v0, "countDay":I
    add-int/lit8 v0, v0, 0x1

    .line 910
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 913
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 915
    .local v2, "countWeek":I
    add-int/lit8 v2, v2, 0x1

    .line 916
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 920
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 922
    .local v1, "countMonth":I
    add-int/lit8 v1, v1, 0x1

    .line 923
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 926
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 927
    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method public addOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2853
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addOutgoingCallExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    if-nez p2, :cond_1

    const/4 v3, 0x0

    .line 2871
    :cond_0
    :goto_0
    return v3

    .line 2856
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2857
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2858
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 2860
    :cond_3
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 2861
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2862
    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    .line 2863
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2865
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addOutgoingCallExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addOutgoingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2867
    :catch_0
    move-exception v0

    .line 2868
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 259
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addOutgoingCallRestriction()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-nez p2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v3

    .line 262
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 264
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 266
    :cond_3
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 267
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 268
    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    .line 269
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addOutgoingCallRestriction"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addOutgoingCallRestriction calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2987
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addOutgoingSmsExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    if-nez p2, :cond_1

    const/4 v3, 0x0

    .line 3005
    :cond_0
    :goto_0
    return v3

    .line 2990
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2991
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2992
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 2994
    :cond_3
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 2995
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2996
    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    .line 2997
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2999
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addOutgoingSmsExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addOutgoingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3001
    :catch_0
    move-exception v0

    .line 3002
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 623
    if-nez p2, :cond_0

    .line 630
    :goto_0
    return v1

    .line 625
    :cond_0
    const-string/jumbo v2, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "regex":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 628
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 630
    :cond_2
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public allowCallerIDDisplay(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2460
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2461
    const/4 v2, 0x0

    .line 2463
    .local v2, "success":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowCallerID"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2470
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2471
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2472
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2474
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v4, "PhoneRestriction"

    const-string v5, "allowCallerIDDisplay"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2475
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "allowCallerIDDisplay calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2480
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return v2

    .line 2466
    .end local v3    # "userId":I
    :catch_0
    move-exception v0

    .line 2467
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PhoneRestrictionPolicy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2476
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_1
    move-exception v0

    .line 2477
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public allowCopyContactToSim(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "ctx"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1987
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    .line 1988
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1989
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1990
    .local v6, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "PHONERESTRICTION"

    const-string/jumbo v11, "copyContactToSimEnabled"

    invoke-virtual {v9, v0, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 1995
    .local v4, "success":Z
    const-string/jumbo v9, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1997
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 1998
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2001
    :cond_0
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 2002
    .local v8, "userId":I
    if-eqz v4, :cond_1

    if-nez v8, :cond_1

    .line 2003
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2005
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v9, "PhoneRestriction"

    const-string v10, "allowCopyContactToSim"

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    invoke-virtual {v3, v9, v10, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2006
    const-string v9, "PhoneRestrictionPolicy"

    const-string v10, "allowCopyContactToSim calling gearPolicyManager  "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2012
    return v4

    .line 2007
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v2

    .line 2008
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowIncomingMms(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2061
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2062
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowIncomingMms"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2065
    .local v2, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2066
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2067
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2069
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "allowIncomingMms"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2070
    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GearPolicy SetCombinationTypePolicy allowIncomingMms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2071
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2072
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowIncomingSms(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1937
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1938
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowIncomingSms"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1942
    .local v2, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1943
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 1944
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1946
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "allowIncomingSms"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1947
    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GearPolicy SetCombinationTypePolicy allowIncomingSms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 1948
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 1949
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowOutgoingMms(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2079
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2080
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowOutgoingMms"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2083
    .local v2, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2084
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2085
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2087
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "allowOutgoingMms"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2088
    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GearPolicy SetCombinationTypePolicy allowOutgoingMms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2093
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2089
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2090
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowOutgoingSms(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1956
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1957
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowOutgoingSms"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1960
    .local v2, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1961
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 1962
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1964
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "allowOutgoingSms"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1965
    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GearPolicy SetCombinationTypePolicy allowOutgoingSms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1970
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 1966
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 1967
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowWapPush(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2418
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2419
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "wapPushEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2421
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2422
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2423
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2425
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "allowWapPush"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2426
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "allowWapPush calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2431
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2427
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2428
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public blockMmsWithStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "block"    # Z

    .prologue
    .line 2156
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2157
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PHONERESTRICTION"

    const-string v8, "blockMmsWithStorage"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2160
    .local v3, "ret":Z
    if-nez p2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2161
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 2162
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2164
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2165
    .local v4, "userId":I
    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    .line 2166
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2168
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "blockMmsWithStorage"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2169
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "blockMmsWithStorage calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2174
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return v3

    .line 2170
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public blockSmsWithStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "block"    # Z

    .prologue
    .line 2121
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2122
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PHONERESTRICTION"

    const-string v8, "blockSmsWithStorage"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2125
    .local v3, "ret":Z
    if-nez p2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2126
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 2127
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2129
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2130
    .local v4, "userId":I
    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    .line 2131
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2133
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "blockSmsWithStorage"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2134
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "blockSmsWithStorage calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2139
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return v3

    .line 2135
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 14
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v11

    if-nez v11, :cond_0

    .line 391
    const/4 v7, 0x1

    .line 435
    :goto_0
    return v7

    .line 394
    :cond_0
    if-nez p1, :cond_1

    .line 395
    const/4 v7, 0x1

    goto :goto_0

    .line 397
    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 398
    const/4 v7, 0x0

    goto :goto_0

    .line 401
    :cond_2
    const-string/jumbo v11, "incomingPattern"

    const-string/jumbo v12, "incomingCallExceptionPattern"

    invoke-direct {p0, p1, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 404
    .local v0, "canCall":Z
    const/4 v10, 0x0

    .line 405
    .local v10, "underLimit":Z
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 406
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 408
    .local v8, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCounters()V

    .line 409
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

    .line 410
    .local v4, "limitDay":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "incomingCallCountDay"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 412
    .local v1, "countDay":I
    if-lt v1, v4, :cond_3

    const/4 v11, 0x1

    if-ge v4, v11, :cond_6

    .line 413
    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .line 414
    .local v6, "limitWeek":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "incomingCallCountWeek"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 417
    .local v3, "countWeek":I
    if-lt v3, v6, :cond_4

    const/4 v11, 0x1

    if-ge v6, v11, :cond_6

    .line 418
    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .line 419
    .local v5, "limitMonth":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "incomingCallCountMonth"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 422
    .local v2, "countMonth":I
    if-lt v2, v5, :cond_5

    const/4 v11, 0x1

    if-ge v5, v11, :cond_6

    .line 423
    :cond_5
    const/4 v10, 0x1

    .line 428
    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_1
    if-eqz v0, :cond_8

    if-eqz v10, :cond_8

    const/4 v7, 0x1

    .line 434
    .local v7, "result":Z
    :goto_2
    const-string v11, "PhoneRestrictionPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PhoneRestrictionPolicy.canIncomingCall >>>>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    .end local v7    # "result":Z
    .restart local v8    # "token":J
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 431
    .end local v8    # "token":J
    :cond_7
    const/4 v10, 0x1

    goto :goto_1

    .line 433
    :cond_8
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 13
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 972
    if-nez p1, :cond_0

    .line 973
    const/4 v10, 0x1

    .line 1012
    :goto_0
    return v10

    .line 974
    :cond_0
    const-string/jumbo v10, "smsRestrictionIncomingPattern"

    const-string/jumbo v11, "incomingSmsExceptionPattern"

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 978
    .local v0, "canReceive":Z
    const/4 v7, 0x0

    .line 979
    .local v7, "underLimit":Z
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 980
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 982
    .local v8, "token":J
    :try_start_0
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    .line 984
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

    .line 985
    .local v4, "limitDay":I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canIncomingSms - limitDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "incomingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 988
    .local v1, "countDay":I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canIncomingSms - countDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    if-lt v1, v4, :cond_1

    const/4 v10, 0x1

    if-ge v4, v10, :cond_4

    .line 990
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .line 991
    .local v6, "limitWeek":I
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "incomingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 993
    .local v3, "countWeek":I
    if-lt v3, v6, :cond_2

    const/4 v10, 0x1

    if-ge v6, v10, :cond_4

    .line 994
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .line 995
    .local v5, "limitMonth":I
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "incomingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 998
    .local v2, "countMonth":I
    if-lt v2, v5, :cond_3

    const/4 v10, 0x1

    if-ge v5, v10, :cond_4

    .line 999
    :cond_3
    const/4 v7, 0x1

    .line 1000
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canIncomingSms - limit = true"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v7, :cond_6

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1005
    .restart local v8    # "token":J
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 1008
    .end local v8    # "token":J
    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    .line 1012
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 14
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    const/4 v7, 0x1

    .line 386
    :goto_0
    return v7

    .line 347
    :cond_0
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 348
    const/4 v7, 0x1

    goto :goto_0

    .line 351
    :cond_1
    const-string/jumbo v11, "outgoingPattern"

    const-string/jumbo v12, "outgoingCallExceptionPattern"

    invoke-direct {p0, p1, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 355
    .local v0, "canCall":Z
    const/4 v10, 0x0

    .line 356
    .local v10, "underLimit":Z
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 359
    .local v8, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCounters()V

    .line 360
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

    .line 361
    .local v4, "limitDay":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "outgoingCallCountDay"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 363
    .local v1, "countDay":I
    if-lt v1, v4, :cond_2

    const/4 v11, 0x1

    if-ge v4, v11, :cond_5

    .line 364
    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .line 365
    .local v6, "limitWeek":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "outgoingCallCountWeek"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 368
    .local v3, "countWeek":I
    if-lt v3, v6, :cond_3

    const/4 v11, 0x1

    if-ge v6, v11, :cond_5

    .line 369
    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .line 370
    .local v5, "limitMonth":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "outgoingCallCountMonth"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 373
    .local v2, "countMonth":I
    if-lt v2, v5, :cond_4

    const/4 v11, 0x1

    if-ge v5, v11, :cond_5

    .line 374
    :cond_4
    const/4 v10, 0x1

    .line 379
    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_1
    if-eqz v0, :cond_7

    if-eqz v10, :cond_7

    const/4 v7, 0x1

    .line 385
    .local v7, "result":Z
    :goto_2
    const-string v11, "PhoneRestrictionPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PhoneRestrictionPolicy.canOutgoingCall >>>> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    .end local v7    # "result":Z
    .restart local v8    # "token":J
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 382
    .end local v8    # "token":J
    :cond_6
    const/4 v10, 0x1

    goto :goto_1

    .line 384
    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 13
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1020
    if-nez p1, :cond_0

    .line 1021
    const/4 v10, 0x1

    .line 1059
    :goto_0
    return v10

    .line 1022
    :cond_0
    const-string/jumbo v10, "smsRestrictionOutgoingPattern"

    const-string/jumbo v11, "outgoingSmsExceptionPattern"

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1026
    .local v0, "canSend":Z
    const/4 v7, 0x0

    .line 1027
    .local v7, "underLimit":Z
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1030
    .local v8, "token":J
    :try_start_0
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    .line 1032
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

    .line 1033
    .local v4, "limitDay":I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canOutgoingSms - limitDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "outgoingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1036
    .local v1, "countDay":I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canOutgoingSms - countDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    if-lt v1, v4, :cond_1

    const/4 v10, 0x1

    if-ge v4, v10, :cond_4

    .line 1038
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .line 1039
    .local v6, "limitWeek":I
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "outgoingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1041
    .local v3, "countWeek":I
    if-lt v3, v6, :cond_2

    const/4 v10, 0x1

    if-ge v6, v10, :cond_4

    .line 1042
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .line 1043
    .local v5, "limitMonth":I
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "outgoingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1046
    .local v2, "countMonth":I
    if-lt v2, v5, :cond_3

    const/4 v10, 0x1

    if-ge v5, v10, :cond_4

    .line 1047
    :cond_3
    const/4 v7, 0x1

    .line 1048
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canOutgoingSms - limit = true"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_1
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsRestrictionPolicy.canOutgoingSms >>>>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " >>> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    if-eqz v0, :cond_6

    if-eqz v7, :cond_6

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1053
    .restart local v8    # "token":J
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 1056
    .end local v8    # "token":J
    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    .line 1059
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public changeSimPinCode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "currentPinCode"    # Ljava/lang/String;
    .param p3, "newPinCode"    # Ljava/lang/String;

    .prologue
    .line 2641
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2642
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2645
    .local v4, "uid":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2646
    :cond_0
    const/4 v2, 0x2

    .line 2681
    :cond_1
    :goto_0
    return v2

    .line 2650
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 2651
    .local v1, "icc":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 2652
    const/16 v2, 0x9

    goto :goto_0

    .line 2656
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLocked()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2657
    const/4 v2, 0x5

    goto :goto_0

    .line 2663
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getAdminBySimcard(Ljava/lang/String;)I

    move-result v3

    .line 2664
    .local v3, "simOwner":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_5

    .line 2665
    const/16 v2, 0xc

    goto :goto_0

    .line 2669
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->changeSimPinCodeService(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2670
    .local v2, "result":I
    if-nez v2, :cond_1

    .line 2671
    const/4 v0, 0x1

    .line 2672
    .local v0, "databaseRet":Z
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2673
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v4, v1, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2677
    :goto_1
    if-nez v0, :cond_1

    .line 2678
    const/16 v2, 0xa

    goto :goto_0

    .line 2675
    :cond_6
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v4, v1, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->setPincode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method public checkDataCallLimit()Z
    .locals 18

    .prologue
    .line 1694
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1696
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v7, :cond_0

    .line 1697
    const/4 v7, 0x0

    .line 1737
    :goto_0
    return v7

    .line 1700
    :cond_0
    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J

    move-result-wide v4

    .line 1701
    .local v4, "dayLimit":J
    const/4 v7, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J

    move-result-wide v14

    .line 1702
    .local v14, "weekLimit":J
    const/4 v7, 0x0

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J

    move-result-wide v10

    .line 1704
    .local v10, "monthLimit":J
    const-wide/16 v2, 0x0

    .line 1705
    .local v2, "dayCurrent":J
    const-wide/16 v12, 0x0

    .line 1706
    .local v12, "weekCurrent":J
    const-wide/16 v8, 0x0

    .line 1710
    .local v8, "monthCurrent":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v16, "dataCallBytesCountByDay"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1717
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v16, "dataCallBytesCountByWeek"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    .line 1724
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v16, "dataCallByteCountByMonth"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v8

    .line 1732
    :goto_3
    const-wide/16 v16, 0x0

    cmp-long v7, v16, v4

    if-gez v7, :cond_1

    cmp-long v7, v2, v4

    if-gtz v7, :cond_3

    :cond_1
    const-wide/16 v16, 0x0

    cmp-long v7, v16, v14

    if-gez v7, :cond_2

    cmp-long v7, v12, v14

    if-gtz v7, :cond_3

    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v7, v16, v10

    if-gez v7, :cond_4

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 1735
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 1712
    :catch_0
    move-exception v6

    .line 1713
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v16, "Could not read from Storage"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1719
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 1720
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v16, "Could not read from Storage"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1726
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v6

    .line 1727
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v16, "Could not read from Storage"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1737
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 1666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1667
    .local v2, "token":J
    const/4 v0, 0x0

    .line 1668
    .local v0, "ret":Z
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 1669
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1670
    :cond_0
    if-eqz p1, :cond_1

    .line 1671
    const v1, 0x1040bad

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1674
    :cond_1
    const/4 v0, 0x0

    .line 1678
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1679
    return v0

    .line 1676
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearStoredBlockedMms(Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2211
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2213
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v6, "smsMmsType"

    aput-object v6, v0, v7

    .line 2214
    .local v0, "columnType":[Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v4, v7

    .line 2215
    .local v4, "type":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SMSMMSBlockedDelivery"

    invoke-virtual {v6, v7, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 2216
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2217
    .local v5, "userId":I
    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    .line 2218
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2220
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v6, "PhoneRestriction"

    const-string v7, "clearStoredBlockedMms"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2221
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "clearStoredBlockedMms calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2226
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v3

    .line 2222
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .line 2223
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clearStoredBlockedSms(Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2191
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2193
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v6, "smsMmsType"

    aput-object v6, v0, v7

    .line 2194
    .local v0, "columnType":[Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v4, v7

    .line 2195
    .local v4, "type":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SMSMMSBlockedDelivery"

    invoke-virtual {v6, v7, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 2197
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2198
    .local v5, "userId":I
    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    .line 2199
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2201
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v6, "PhoneRestriction"

    const-string v7, "clearStoredBlockedSms"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2202
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "clearStoredBlockedSms calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2207
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v3

    .line 2203
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .line 2204
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 8

    .prologue
    .line 931
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.decreaseNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    .line 933
    const/4 v3, 0x0

    .line 934
    .local v3, "ret":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 958
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 938
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 940
    .local v0, "countDay":I
    add-int/lit8 v0, v0, -0x1

    .line 941
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 944
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 946
    .local v2, "countWeek":I
    add-int/lit8 v2, v2, -0x1

    .line 947
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 951
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 953
    .local v1, "countMonth":I
    add-int/lit8 v1, v1, -0x1

    .line 954
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 957
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 958
    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method public enableLimitNumberOfCalls(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 1139
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, " >>>> enableLimitNumberOfCalls "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1141
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1142
    const/4 v4, 0x0

    .line 1175
    :cond_0
    :goto_0
    return v4

    .line 1144
    :cond_1
    const/4 v3, 0x1

    .line 1145
    .local v3, "ret":Z
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1146
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetCallsCount(Landroid/app/enterprise/ContextInfo;)Z

    .line 1147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1148
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1149
    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1150
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1151
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1152
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1153
    .local v6, "time":J
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "dateDay"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1155
    if-eqz v3, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "dateWeek"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    .line 1158
    :goto_1
    if-eqz v3, :cond_4

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "dateMonth"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v3, 0x1

    .line 1162
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_2
    :goto_2
    const-string v8, "PhoneRestrictionPolicy"

    const-string/jumbo v9, "enableLimitNumberOfCalls  >>>>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    if-eqz v3, :cond_5

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v10, "PHONERESTRICTION"

    const-string/jumbo v11, "limitCallEnable"

    invoke-virtual {v8, v9, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v4, 0x1

    .line 1165
    .local v4, "success":Z
    :goto_3
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1166
    .local v5, "userId":I
    if-eqz v4, :cond_0

    if-nez v5, :cond_0

    .line 1167
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1169
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v8, "PhoneRestriction"

    const-string/jumbo v9, "enableLimitNumberOfCalls"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1170
    const-string v8, "PhoneRestrictionPolicy"

    const-string/jumbo v9, "enableLimitNumberOfCalls calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1171
    :catch_0
    move-exception v1

    .line 1172
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1155
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v4    # "success":Z
    .end local v5    # "userId":I
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "time":J
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1158
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 1163
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public enableLimitNumberOfSms(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 695
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, " >>>> enableLimitNumberOfSMS "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 697
    const/4 v3, 0x1

    .line 698
    .local v3, "ret":Z
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 699
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetSmsCount(Landroid/app/enterprise/ContextInfo;)Z

    .line 700
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 701
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 702
    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 703
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 704
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 705
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 706
    .local v6, "time":J
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "smsDateDay"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 708
    if-eqz v3, :cond_2

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "smsDateWeek"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    .line 711
    :goto_0
    if-eqz v3, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "smsDateMonth"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    .line 715
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_0
    :goto_1
    const-string v8, "PhoneRestrictionPolicy"

    const-string/jumbo v9, "enableLimitNumberOfSMS  >>>>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    if-eqz v3, :cond_4

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v10, "PHONERESTRICTION"

    const-string/jumbo v11, "limitSmsEnable"

    invoke-virtual {v8, v9, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    .line 718
    .local v4, "success":Z
    :goto_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 719
    .local v5, "userId":I
    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    .line 720
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 722
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v8, "PhoneRestriction"

    const-string/jumbo v9, "enableLimitNumberOfSms"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 723
    const-string v8, "PhoneRestrictionPolicy"

    const-string/jumbo v9, "enableLimitNumberOfSms calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_3
    return v4

    .line 708
    .end local v4    # "success":Z
    .end local v5    # "userId":I
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "time":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 711
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 716
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 724
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v4    # "success":Z
    .restart local v5    # "userId":I
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1575
    const/4 v1, 0x0

    .line 1576
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "enableLimitDataCall"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1579
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1580
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1581
    move v1, v2

    .line 1585
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v5, 0x0

    .line 509
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 510
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, " getEmergencyCallOnly calls from Profile return default value"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    :goto_0
    return v5

    .line 513
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 516
    const/4 v5, 0x0

    .line 518
    .local v5, "result":Z
    if-nez p2, :cond_6

    .line 519
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 521
    .local v6, "userId":I
    if-nez p1, :cond_2

    .line 522
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v1, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    move-object p1, v1

    .line 526
    .end local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_2
    if-nez v6, :cond_3

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-nez v7, :cond_3

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lez v7, :cond_5

    .line 529
    :cond_3
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Operation supported only on owner space"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v6    # "userId":I
    :catch_0
    move-exception v2

    .line 545
    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 548
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    const-string v7, "PhoneRestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getEmergencyCall >>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 531
    .restart local v6    # "userId":I
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v9, "PHONERESTRICTION"

    const-string/jumbo v10, "emergencyCallOnly"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 534
    goto :goto_1

    .line 535
    .end local v6    # "userId":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string/jumbo v9, "emergencyCallOnly"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 538
    .local v4, "restrictionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 539
    .local v0, "block":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_7

    .line 540
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getIncomingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2815
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2817
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2818
    const/4 v0, 0x0

    .line 2820
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "incomingCallExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 218
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "incomingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIncomingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2949
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingSmsExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2951
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2952
    const/4 v0, 0x0

    .line 2954
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "incomingSmsExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 594
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 597
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    const-wide/16 v10, 0x0

    .line 1606
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1607
    const/4 v1, 0x0

    .line 1609
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    packed-switch p2, :pswitch_data_0

    .line 1626
    const-wide/16 v2, -0x1

    .line 1635
    :cond_0
    return-wide v2

    .line 1611
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string/jumbo v8, "dataCallByDay"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1613
    const-wide/16 v2, 0x0

    .line 1628
    .local v2, "res":J
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1629
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1630
    .local v4, "value":J
    cmp-long v6, v4, v10

    if-eqz v6, :cond_1

    cmp-long v6, v4, v2

    if-ltz v6, :cond_2

    cmp-long v6, v2, v10

    if-nez v6, :cond_1

    .line 1631
    :cond_2
    move-wide v2, v4

    goto :goto_1

    .line 1616
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":J
    .end local v4    # "value":J
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string/jumbo v8, "dataCallByWeek"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1618
    const-wide/16 v2, 0x0

    .line 1619
    .restart local v2    # "res":J
    goto :goto_0

    .line 1621
    .end local v2    # "res":J
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string/jumbo v8, "dataCallByMonth"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1623
    const-wide/16 v2, 0x0

    .line 1624
    .restart local v2    # "res":J
    goto :goto_0

    .line 1609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    const/4 v2, -0x1

    .line 1228
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1229
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return v2

    .line 1232
    :cond_1
    const/4 v1, 0x0

    .line 1234
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1236
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1238
    const/4 v2, 0x0

    .line 1253
    .local v2, "res":I
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1255
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3

    if-nez v2, :cond_2

    .line 1256
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 1241
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1243
    const/4 v2, 0x0

    .line 1244
    .restart local v2    # "res":I
    goto :goto_1

    .line 1246
    .end local v2    # "res":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1248
    const/4 v2, 0x0

    .line 1249
    .restart local v2    # "res":I
    goto :goto_1

    .line 1234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    .line 788
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 789
    const/4 v1, 0x0

    .line 791
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_0

    .line 808
    const/4 v2, -0x1

    .line 817
    :cond_0
    return v2

    .line 793
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 795
    const/4 v2, 0x0

    .line 810
    .local v2, "res":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 811
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 812
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_2

    if-nez v2, :cond_1

    .line 813
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 798
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 800
    const/4 v2, 0x0

    .line 801
    .restart local v2    # "res":I
    goto :goto_0

    .line 803
    .end local v2    # "res":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 805
    const/4 v2, 0x0

    .line 806
    .restart local v2    # "res":I
    goto :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    const/4 v2, -0x1

    .line 1292
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1293
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return v2

    .line 1296
    :cond_1
    const/4 v1, 0x0

    .line 1298
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1300
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1302
    const/4 v2, 0x0

    .line 1317
    .local v2, "res":I
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1318
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1319
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3

    if-nez v2, :cond_2

    .line 1320
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 1305
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1307
    const/4 v2, 0x0

    .line 1308
    .restart local v2    # "res":I
    goto :goto_1

    .line 1310
    .end local v2    # "res":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1312
    const/4 v2, 0x0

    .line 1313
    .restart local v2    # "res":I
    goto :goto_1

    .line 1298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 837
    const/4 v1, 0x0

    .line 839
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_0

    .line 856
    const/4 v2, -0x1

    .line 865
    :cond_0
    return v2

    .line 841
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 843
    const/4 v2, 0x0

    .line 858
    .local v2, "res":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 859
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 860
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_2

    if-nez v2, :cond_1

    .line 861
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 846
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 848
    const/4 v2, 0x0

    .line 849
    .restart local v2    # "res":I
    goto :goto_0

    .line 851
    .end local v2    # "res":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 853
    const/4 v2, 0x0

    .line 854
    .restart local v2    # "res":I
    goto :goto_0

    .line 839
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOutgoingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2807
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2809
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2810
    const/4 v0, 0x0

    .line 2812
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "outgoingCallExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 209
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "outgoingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2941
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingSmsExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2942
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2943
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2944
    const/4 v0, 0x0

    .line 2946
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "outgoingSmsExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 580
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 583
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPinCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 2689
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2690
    .local v2, "callingUid":I
    const/4 v6, -0x1

    .line 2691
    .local v6, "sysUiUid":I
    const/4 v5, 0x0

    .line 2693
    .local v5, "isSystemUi":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.android.systemui"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 2697
    :goto_0
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2698
    .local v0, "callingAppId":I
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 2699
    .local v1, "callingPkg":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2700
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 2701
    .local v4, "index":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 2702
    invoke-virtual {v1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2704
    :cond_0
    const-string v7, "android.uid.systemui"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-ne v0, v6, :cond_1

    .line 2705
    const/4 v5, 0x1

    .line 2709
    .end local v4    # "index":I
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-eq v2, v7, :cond_2

    const/16 v7, 0x3e9

    if-eq v2, v7, :cond_2

    if-nez v5, :cond_2

    .line 2711
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Can only be called by System, Phone or System UI"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2694
    .end local v0    # "callingAppId":I
    .end local v1    # "callingPkg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2695
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "Unable to resolve SystemUI\'s UID."

    invoke-static {v7, v8, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2714
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "callingAppId":I
    .restart local v1    # "callingPkg":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2178
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2179
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, " isBlockMmsWithStorageEnabled calls from Profile return default value"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    const/4 v1, 0x0

    .line 2187
    :goto_0
    return v1

    .line 2182
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2184
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "blockMmsWithStorage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2187
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2143
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2144
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, " isBlockSmsWithStorageEnabled calls from Profile return default value"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    const/4 v1, 0x0

    .line 2152
    :goto_0
    return v1

    .line 2147
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2149
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "blockSmsWithStorage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2152
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2484
    const/4 v2, 0x1

    .line 2486
    .local v2, "ret":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowCallerID"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2489
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2490
    .local v3, "value":Z
    if-nez v3, :cond_0

    .line 2491
    move v2, v3

    .line 2499
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    return v2

    .line 2495
    :catch_0
    move-exception v0

    .line 2496
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "PhoneRestrictionPolicy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCopyContactToSimAllowed(I)Z
    .locals 7
    .param p1, "message"    # I

    .prologue
    .line 2017
    const/4 v1, 0x1

    .line 2018
    .local v1, "isCopyAllowed":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "copyContactToSimEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2021
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2022
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 2023
    move v1, v2

    .line 2027
    .end local v2    # "value":Z
    :cond_1
    if-nez v1, :cond_2

    .line 2028
    packed-switch p1, :pswitch_data_0

    .line 2038
    :pswitch_0
    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCopyContactToSimAllowed wrong message value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    :cond_2
    :goto_0
    return v1

    .line 2030
    :pswitch_1
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "Access to PB ADD "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const v4, 0x1040bb7

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

    .line 2034
    :pswitch_2
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "Access to PB Edit "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    const v4, 0x1040bb8

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

    .line 2028
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isCopyContactToSimAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1973
    const/4 v1, 0x1

    .line 1974
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "copyContactToSimEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1977
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1978
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 1979
    move v1, v2

    .line 1983
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2097
    const-string v0, "allowIncomingMms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " isIncomingSmsAllowed calls from Profile return default value"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    const/4 v0, 0x0

    .line 2049
    :goto_0
    return v0

    :cond_0
    const-string v0, "allowIncomingSms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x0

    .line 1183
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return v3

    .line 1186
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "limitCallEnable"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1189
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1190
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1191
    .local v0, "enable":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1192
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 732
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PHONERESTRICTION"

    const-string/jumbo v5, "limitSmsEnable"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 735
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 736
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 737
    .local v0, "enable":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 738
    const/4 v3, 0x1

    .line 742
    .end local v0    # "enable":Ljava/lang/Boolean;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isOutgoingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2101
    const-string v0, "allowOutgoingMms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " isOutgoingSmsAllowed calls from Profile return default value"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const/4 v0, 0x0

    .line 2057
    :goto_0
    return v0

    :cond_0
    const-string v0, "allowOutgoingSms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 2718
    if-nez p1, :cond_0

    .line 2719
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->hasAnySimcard()Z

    move-result v1

    .line 2725
    :goto_0
    return v1

    .line 2721
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2722
    .local v0, "pincode":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2723
    const/4 v1, 0x1

    goto :goto_0

    .line 2725
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2443
    const/4 v1, 0x1

    .line 2444
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "wapPushEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2447
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2448
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 2449
    move v1, v2

    .line 2454
    .end local v2    # "value":Z
    :cond_1
    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isWapPushAllowed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    return v1
.end method

.method public declared-synchronized lockUnlockCorporateSimCard(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)I
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "lock"    # Z

    .prologue
    const/16 v5, 0xc

    const/4 v9, 0x5

    const/4 v11, -0x1

    .line 2549
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2550
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2553
    .local v7, "uid":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 2554
    const/4 v5, 0x2

    .line 2634
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 2558
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 2559
    .local v3, "icc":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 2560
    const/16 v5, 0x9

    goto :goto_0

    .line 2564
    :cond_2
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getAdminBySimcard(Ljava/lang/String;)I

    move-result v6

    .line 2565
    .local v6, "simOwner":I
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLocked()Z

    move-result v4

    .line 2566
    .local v4, "isLocked":Z
    if-eqz p3, :cond_a

    .line 2567
    if-eqz v4, :cond_8

    .line 2568
    if-ne v6, v11, :cond_3

    .line 2569
    const/4 v5, 0x4

    goto :goto_0

    .line 2570
    :cond_3
    if-ne v6, v7, :cond_4

    .line 2571
    const/16 v5, 0xb

    goto :goto_0

    .line 2572
    :cond_4
    if-ne v6, v7, :cond_0

    .line 2606
    :cond_5
    :goto_1
    invoke-direct {p0, p3, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIccLockEnabled(ZLjava/lang/String;)I

    move-result v5

    .line 2607
    .local v5, "result":I
    if-nez v5, :cond_0

    .line 2608
    const/4 v0, 0x1

    .line 2609
    .local v0, "databaseRet":Z
    if-eqz p3, :cond_f

    .line 2610
    if-ne v6, v11, :cond_e

    .line 2611
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2620
    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 2621
    .local v8, "userId":I
    if-eqz v0, :cond_7

    if-nez v8, :cond_7

    .line 2622
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2624
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_2
    const-string v9, "PhoneRestriction"

    const-string/jumbo v10, "lockUnlockCorporateSimCard"

    invoke-virtual {v2, v9, v10, p2, p3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2625
    const-string v9, "PhoneRestrictionPolicy"

    const-string/jumbo v10, "enableLimitNumberOfCalls calling gearPolicyManager  "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2630
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_7
    :goto_3
    if-nez v0, :cond_0

    .line 2631
    const/16 v5, 0xa

    goto :goto_0

    .line 2576
    .end local v0    # "databaseRet":Z
    .end local v5    # "result":I
    .end local v8    # "userId":I
    :cond_8
    if-eq v6, v11, :cond_5

    .line 2578
    if-ne v6, v7, :cond_9

    .line 2580
    :try_start_3
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2549
    .end local v3    # "icc":Ljava/lang/String;
    .end local v4    # "isLocked":Z
    .end local v6    # "simOwner":I
    .end local v7    # "uid":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 2581
    .restart local v3    # "icc":Ljava/lang/String;
    .restart local v4    # "isLocked":Z
    .restart local v6    # "simOwner":I
    .restart local v7    # "uid":I
    :cond_9
    if-eq v6, v7, :cond_5

    goto :goto_0

    .line 2586
    :cond_a
    if-eqz v4, :cond_b

    .line 2587
    if-eq v6, v11, :cond_5

    .line 2589
    if-eq v6, v7, :cond_5

    .line 2591
    if-eq v6, v7, :cond_5

    goto :goto_0

    .line 2595
    :cond_b
    if-ne v6, v11, :cond_c

    move v5, v9

    .line 2596
    goto :goto_0

    .line 2597
    :cond_c
    if-ne v6, v7, :cond_d

    .line 2598
    :try_start_4
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v10, v7, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z

    move v5, v9

    .line 2599
    goto :goto_0

    .line 2600
    :cond_d
    if-eq v6, v7, :cond_5

    move v5, v9

    .line 2601
    goto/16 :goto_0

    .line 2613
    .restart local v0    # "databaseRet":Z
    .restart local v5    # "result":I
    :cond_e
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->setPincode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 2616
    :cond_f
    if-eq v6, v11, :cond_6

    .line 2617
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 2626
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v8    # "userId":I
    :catch_0
    move-exception v1

    .line 2627
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1909
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1913
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDataLimitState()V

    .line 1917
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1918
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1919
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcardsByAdmin(I)Z

    .line 1921
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1931
    return-void
.end method

.method public removeIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2838
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeIncomingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2840
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2841
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2842
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2844
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeIncomingCallExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2845
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeIncomingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2850
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2846
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2847
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 243
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeIncomingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 245
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 246
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 247
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeIncomingCallRestriction"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 250
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeIncomingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 251
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2972
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeIncomingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2974
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2975
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2976
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2978
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeIncomingSmsExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2979
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeIncomingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2984
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2980
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2981
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 614
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2823
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeOutgoingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2825
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2826
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2827
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2829
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeOutgoingCallExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2830
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeOutgoingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2835
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2831
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2832
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 227
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeOutgoingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 229
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 230
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 231
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 233
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeOutgoingCallRestriction"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 234
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeOutgoingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 235
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2957
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeOutgoingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2959
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2960
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2961
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2963
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeOutgoingSmsExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2964
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeOutgoingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2969
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 2965
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 2966
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 606
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetCallsCount(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 1431
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1432
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 1457
    :cond_0
    :goto_0
    return v2

    .line 1435
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingCallCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1437
    .local v2, "ret":Z
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingCallCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1439
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingCallCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1441
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingCallCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1443
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingCallCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1445
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingCallCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 1447
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1448
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 1449
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1451
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "resetCallsCount"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1452
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "resetCallsCount calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetDataCallLimitCounter(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 1639
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1640
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "dataCallBytesCountByDay"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1642
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "dataCallBytesCountByWeek"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 1644
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "dataCallByteCountByMonth"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 1646
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1647
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 1648
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1650
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "resetDataCallLimitCounter"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1651
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "resetDataCallLimitCounter calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 1652
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetSmsCount(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 746
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 747
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "incomingSmsCountDay"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 749
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "outgoingSmsCountDay"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 751
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "incomingSmsCountWeek"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 753
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "outgoingSmsCountWeek"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 755
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "incomingSmsCountMonth"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 757
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "outgoingSmsCountMonth"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 759
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 760
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 761
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 763
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "resetSmsCount"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 764
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "resetSmsCount calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 765
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1533
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1534
    const/4 v3, 0x1

    .line 1535
    .local v3, "ret":Z
    if-eqz p2, :cond_0

    iget-boolean v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v9, :cond_0

    .line 1536
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetDataCallLimitCounter(Landroid/app/enterprise/ContextInfo;)Z

    .line 1537
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1538
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v9, 0xb

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1539
    const/16 v9, 0xc

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1540
    const/16 v9, 0xd

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1541
    const/16 v9, 0xe

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1542
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1543
    .local v4, "time":J
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "dataCallDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v3, v9

    .line 1545
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "dataCallDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v3, v9

    .line 1547
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "dataCallDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v3, v9

    .line 1550
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v4    # "time":J
    :cond_0
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v11, "PHONERESTRICTION"

    const-string/jumbo v12, "enableLimitDataCall"

    invoke-virtual {v9, v10, v11, v12, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    and-int/2addr v3, v9

    .line 1552
    if-eqz v3, :cond_2

    .line 1553
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 1554
    iget-boolean v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v9, :cond_1

    .line 1555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1556
    .local v6, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    .line 1557
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1559
    .end local v6    # "token":J
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/DeviceInventory;->dataUsageTimerActivation()V

    .line 1561
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 1562
    .local v8, "userId":I
    if-eqz v3, :cond_3

    if-nez v8, :cond_3

    .line 1563
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1565
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v9, "PhoneRestriction"

    const-string/jumbo v10, "setDataCallLimitEnabled"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    invoke-virtual {v2, v9, v10, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1566
    const-string v9, "PhoneRestrictionPolicy"

    const-string/jumbo v10, "setDataCallLimitEnabled calling gearPolicyManager  "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_0
    return v3

    .line 1567
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .line 1568
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 489
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 490
    const/4 v2, 0x0

    .line 505
    :cond_0
    :goto_0
    return v2

    .line 492
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "emergencyCallOnly"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 495
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 496
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 497
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 499
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setEmergencyCallOnly"

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 500
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setEmergencyCallOnly calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2915
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setIncomingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2917
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2918
    const/4 v2, 0x0

    .line 2932
    :cond_0
    :goto_0
    return v2

    .line 2920
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "incomingCallExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2922
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2923
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2924
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2926
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setIncomingCallExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setIncomingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2928
    :catch_0
    move-exception v0

    .line 2929
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setIncomingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 326
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 327
    const/4 v2, 0x0

    .line 341
    :cond_0
    :goto_0
    return v2

    .line 329
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "incomingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 331
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 332
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 333
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 335
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setIncomingCallRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setIncomingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 3049
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3051
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3052
    const/4 v2, 0x0

    .line 3066
    :cond_0
    :goto_0
    return v2

    .line 3054
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "incomingSmsExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3056
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 3057
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 3058
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 3060
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setIncomingSmsExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setIncomingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3062
    :catch_0
    move-exception v0

    .line 3063
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 678
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "smsRestrictionIncomingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 680
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 681
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 682
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 684
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setIncomingSmsRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setIncomingSmsRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 686
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;JJJ)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "limitByDay"    # J
    .param p4, "limitByWeek"    # J
    .param p6, "limitByMonth"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1589
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1590
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1592
    .local v1, "callingUid":I
    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    cmp-long v0, p4, v2

    if-ltz v0, :cond_0

    cmp-long v0, p6, v2

    if-gez v0, :cond_1

    .line 1593
    :cond_0
    const/4 v6, 0x0

    .line 1602
    :goto_0
    return v6

    .line 1596
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "dataCallByDay"

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v6

    .line 1598
    .local v6, "ret":Z
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "dataCallByWeek"

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1600
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "dataCallByMonth"

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1602
    goto :goto_0
.end method

.method public setLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;III)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "limitByDay"    # I
    .param p3, "limitByWeek"    # I
    .param p4, "limitByMonth"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1205
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1206
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1207
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return v3

    .line 1210
    :cond_1
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    .line 1212
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1214
    .local v1, "ret":Z
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 1217
    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1214
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1217
    goto :goto_2
.end method

.method public setLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;III)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "limitByDay"    # I
    .param p3, "limitByWeek"    # I
    .param p4, "limitByMonth"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 773
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 774
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 775
    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_2

    :cond_0
    move v2, v3

    .line 782
    :cond_1
    :goto_0
    return v2

    .line 777
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 779
    .local v1, "ret":Z
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 782
    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v1, v3

    .line 779
    goto :goto_1
.end method

.method public setLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;III)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "limitByDay"    # I
    .param p3, "limitByWeek"    # I
    .param p4, "limitByMonth"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1269
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1270
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1271
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return v3

    .line 1274
    :cond_1
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    .line 1276
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1278
    .local v1, "ret":Z
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 1281
    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1278
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1281
    goto :goto_2
.end method

.method public setLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;III)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "limitByDay"    # I
    .param p3, "limitByWeek"    # I
    .param p4, "limitByMonth"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 821
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 822
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 823
    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_2

    :cond_0
    move v2, v3

    .line 830
    :cond_1
    :goto_0
    return v2

    .line 825
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 827
    .local v1, "ret":Z
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 830
    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v1, v3

    .line 827
    goto :goto_1
.end method

.method public setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2895
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2896
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2897
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2898
    const/4 v2, 0x0

    .line 2912
    :cond_0
    :goto_0
    return v2

    .line 2900
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "outgoingCallExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2902
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2903
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 2904
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2906
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setOutgoingCallExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setOutgoingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2908
    :catch_0
    move-exception v0

    .line 2909
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 305
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    const/4 v2, 0x0

    .line 320
    :cond_0
    :goto_0
    return v2

    .line 308
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "outgoingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 310
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 311
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 312
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 314
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setOutgoingCallRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setOutgoingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 3029
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3031
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3032
    const/4 v2, 0x0

    .line 3046
    :cond_0
    :goto_0
    return v2

    .line 3034
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "outgoingSmsExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3036
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 3037
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 3038
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 3040
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setOutgoingSmsExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setOutgoingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3042
    :catch_0
    move-exception v0

    .line 3043
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 656
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "smsRestrictionOutgoingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 658
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 659
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 660
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 662
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setOutgoingSmsRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setOutgoingSmsRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 664
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "isSms"    # Z
    .param p2, "pdu"    # [B
    .param p3, "srcAddress"    # Ljava/lang/String;
    .param p4, "sendType"    # I
    .param p5, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 2237
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 2240
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 2243
    .local v2, "hexPdu":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2244
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "SMSMMSBlockedDelivery"

    .line 2245
    .local v3, "tableName":Ljava/lang/String;
    const-string/jumbo v4, "smsMmsPdu"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    const-string/jumbo v4, "smsMmsSendType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2247
    const-string/jumbo v5, "smsMmsType"

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2248
    const-string/jumbo v4, "smsMmsOrigAddress"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    if-nez p1, :cond_0

    .line 2250
    const-string/jumbo v4, "smsMmsTimeStamp"

    invoke-virtual {v0, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2253
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "sms/mms stored successfully"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2257
    :goto_1
    return-void

    .line 2247
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2254
    :catch_0
    move-exception v1

    .line 2255
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "could not write sms/mms into edm database"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1926
    return-void
.end method

.method public updateDataLimitState()V
    .locals 1

    .prologue
    .line 1901
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1902
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 1903
    return-void
.end method

.method public updateDateAndDataCallCounters(J)V
    .locals 13
    .param p1, "bytes"    # J

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1746
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1748
    iget-boolean v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v6, :cond_0

    .line 1827
    :goto_0
    return-void

    .line 1753
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1754
    .local v0, "calendarCurrent":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1755
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1756
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1757
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1760
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1762
    .local v1, "calendarDay":Ljava/util/Calendar;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1767
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1769
    .local v3, "calendarWeek":Ljava/util/Calendar;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1774
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1776
    .local v2, "calendarMonth":Ljava/util/Calendar;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1781
    :goto_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1784
    .local v4, "time":J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1785
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1787
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallBytesCountByDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1791
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 1796
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1798
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallBytesCountByWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1804
    :cond_2
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_4

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 1807
    :cond_3
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1810
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallByteCountByMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1815
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v6, p1

    if-gez v6, :cond_5

    .line 1816
    const-string/jumbo v6, "dataCallBytesCountByDay"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 1817
    const-string/jumbo v6, "dataCallBytesCountByWeek"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 1818
    const-string/jumbo v6, "dataCallByteCountByMonth"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 1822
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1823
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->blockDataNetwork()Z

    goto/16 :goto_0

    .line 1825
    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    goto/16 :goto_0

    .line 1778
    .end local v4    # "time":J
    :catch_0
    move-exception v6

    goto/16 :goto_3

    .line 1771
    .end local v2    # "calendarMonth":Ljava/util/Calendar;
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .line 1764
    .end local v3    # "calendarWeek":Ljava/util/Calendar;
    :catch_2
    move-exception v6

    goto/16 :goto_1
.end method
