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

    invoke-direct {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;

    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, " >>> PhoneRestrictionPolicy.PhoneRestrictionPolicy()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCheckboxState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "edm.intent.action.PHONE_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/restriction/SimDBProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deliveryBlockedMsgs(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Landroid/app/enterprise/ISimPinPolicy;)Landroid/app/enterprise/ISimPinPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .param p1, "x1"    # Landroid/app/enterprise/ISimPinPolicy;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    return-object p1
.end method

.method private blockDataNetwork()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Telephony Manager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    iget-boolean v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private changeSimPinCodeService(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "currentPinCode"    # Ljava/lang/String;
    .param p2, "newPinCode"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISimPinPolicy;->changeSimPinCode(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/16 v1, 0x64

    goto :goto_0

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
    const-wide/16 v2, 0x0

    .local v2, "storageValue":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    add-long/2addr v2, p2

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception v0

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

    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "smsMmsBlockedRowId"

    aput-object v2, v0, v3

    .local v0, "columnRowId":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .local v1, "rowIdValue":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SMSMMSBlockedDelivery"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private declared-synchronized deliveryBlockedMsgs(I)V
    .locals 18
    .param p1, "type"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, " >>>> deliveryBlockedMsgs"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x5

    new-array v2, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "smsMmsBlockedRowId"

    aput-object v16, v2, v15

    const/4 v15, 0x1

    const-string v16, "smsMmsSendType"

    aput-object v16, v2, v15

    const/4 v15, 0x2

    const-string v16, "smsMmsPdu"

    aput-object v16, v2, v15

    const/4 v15, 0x3

    const-string v16, "smsMmsTimeStamp"

    aput-object v16, v2, v15

    const/4 v15, 0x4

    const-string v16, "smsMmsOrigAddress"

    aput-object v16, v2, v15

    .local v2, "columns":[Ljava/lang/String;
    if-nez p1, :cond_0

    const-string v14, "1"

    .local v14, "whereValue":Ljava/lang/String;
    :goto_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .local v13, "whereClause":Landroid/content/ContentValues;
    const-string v15, "smsMmsType"

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "SMSMMSBlockedDelivery"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v12

    .local v12, "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v15, "PhoneRestrictionPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cvList size "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-eqz v15, :cond_1

    :goto_1
    monitor-exit p0

    return-void

    .end local v12    # "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v13    # "whereClause":Landroid/content/ContentValues;
    .end local v14    # "whereValue":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v14, "0"

    goto :goto_0

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

    .local v11, "smsMms":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    if-eqz v15, :cond_3

    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Phone is shutting down ...quitting"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

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

    .local v6, "intent":Landroid/content/Intent;
    if-nez p1, :cond_8

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Block SMS with storage applies... quitting"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v15, "smsMmsOrigAddress"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

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

    :cond_5
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Other incoming SMS policies apply... delete message and continue"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "smsMmsBlockedRowId"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v15, "edm.intent.action.internal.RESTRICTION_SEND_BLOCKED_SMS"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .end local v7    # "origAddress":Ljava/lang/String;
    :goto_3
    const-string v15, "smsMmsBlockedRowId"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    const-string v15, "smsMmsPdu"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "hexPdu":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .local v8, "pdu":[B
    const/4 v9, -0x1

    .local v9, "sendType":I
    const-string v15, "smsMmsSendType"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .local v10, "sendTypeInteger":Ljava/lang/Integer;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_7
    const-string v15, "extra_pdu"

    invoke-virtual {v6, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v15, "send_type"

    invoke-virtual {v6, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.sec.RECEIVE_BLOCKED_SMS_MMS"

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v16, 0x1f4

    :try_start_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

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

    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Block MMS with storage applies... quitting"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

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

    :cond_b
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Other incoming MMS policies apply... delete message and continue"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "smsMmsBlockedRowId"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const-string v15, "extra_time_stamp"

    const-string v16, "smsMmsTimeStamp"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "extra_orig_address"

    const-string v16, "smsMmsOrigAddress"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "edm.intent.action.internal.RESTRICTION_SEND_BLOCKED_MMS"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

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
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforcePhoneAppOrAdmin(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_1
    return-object p1
.end method

.method private enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_1
    return-object p1
.end method

.method private enforcePhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
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
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only receive SMS by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getDataCheckboxState()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "dataCallPacketDataCheckBox"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

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
    const/4 v4, 0x0

    .local v4, "result":Ljava/lang/String;
    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PHONERESTRICTION"

    invoke-virtual {v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .local v3, "restrictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

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

    .local v2, "regex":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .end local v2    # "regex":Ljava/lang/String;
    :cond_3
    const-string v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

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
    const/4 v1, 0x1

    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

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

    .local v2, "value":Z
    if-nez v2, :cond_0

    move v1, v2

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
    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    .local v11, "restrictionColumn":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "PHONERESTRICTION"

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .local v10, "restPatternList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v12, 0x1

    :goto_0
    return v12

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

    .local v2, "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "adminId":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "restPattern":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    :try_start_0
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .local v8, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .local v7, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "PHONERESTRICTION"

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "exceptionPattern":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    .end local v5    # "exceptionPattern":Ljava/lang/String;
    .end local v7    # "match":Ljava/util/regex/Matcher;
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/util/regex/PatternSyntaxException;
    const-string v12, "PhoneRestrictionPolicy"

    const-string v13, "failed to compile pattern for restriction"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

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

    .local v4, "excPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    .end local v4    # "excPattern":Ljava/util/regex/Pattern;
    :catch_1
    move-exception v3

    .restart local v3    # "ex":Ljava/util/regex/PatternSyntaxException;
    const-string v12, "PhoneRestrictionPolicy"

    const-string v13, "failed to compile pattern for exception"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_0

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
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISimPinPolicy;->isSimLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

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
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "dataCallPacketDataCheckBox"

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

    iget-boolean v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Telephony Manager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return v1

    .restart local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    iget-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private setIccLockEnabled(ZLjava/lang/String;)I
    .locals 6
    .param p1, "lock"    # Z
    .param p2, "pinCode"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISimPinPolicy;->setIccLockEnabled(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/16 v1, 0x64

    goto :goto_0

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

    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> PhoneRestrictionPolicy.updateDateAndCounters()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendarCurrent":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, "calendarDay":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .local v3, "calendarWeek":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "calendarMonth":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, "time":J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "incomingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "outgoingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

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

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "incomingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "outgoingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

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

    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "incomingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "outgoingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "PhoneRestrictionPolicy.updateDateAndCounters() >>>"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateDateAndCountersSms()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> SmsRestrictionPolicy.updateDateAndCountersSms()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendarCurrent":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, "calendarDay":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "smsDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .local v3, "calendarWeek":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "smsDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "calendarMonth":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "smsDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, "time":J
    const-string v6, "PhoneRestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "smsDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "incomingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "outgoingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

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

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "smsDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "incomingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "outgoingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

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

    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "smsDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "incomingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "outgoingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "SmsRestrictionPolicy.updateDateAndCountersSms() >>>"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validatePinCode(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pinCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

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

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

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
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addIncomingCallExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addIncomingCallExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addIncomingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addIncomingCallRestriction()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v2

    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addIncomingCallRestriction"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addIncomingCallRestriction calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addIncomingSmsExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addIncomingSmsExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addIncomingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    if-nez p2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "regex":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const-string v1, "|"

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
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfIncomingCalls()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    .local v4, "ret":Z
    const/4 v0, 0x0

    .local v0, "countDay":I
    const/4 v2, 0x0

    .local v2, "countWeek":I
    const/4 v1, 0x0

    .local v1, "countMonth":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "incomingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "strCountDay":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "incomingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "strCountWeek":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "incomingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "strCountMonth":Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "incomingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v2, v2, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "incomingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfIncomingCalls() >>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfIncomingCalls - exception"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addNumberOfIncomingSms()Z
    .locals 8

    .prologue
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SMSRestrictionPolicy.addNumberOfIncomingSMS()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v3, 0x0

    .local v3, "ret":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "incomingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "countDay":I
    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "incomingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "incomingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "countWeek":I
    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "incomingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "incomingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "countMonth":I
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "incomingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SMSRestrictionPolicy.addNumberOfIncomingSMS() >>>"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 11

    .prologue
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfOutgoingCalls()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    .local v4, "ret":Z
    const/4 v0, 0x0

    .local v0, "countDay":I
    const/4 v2, 0x0

    .local v2, "countWeek":I
    const/4 v1, 0x0

    .local v1, "countMonth":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "outgoingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "strCountDay":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "outgoingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "strCountWeek":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "outgoingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "strCountMonth":Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "outgoingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v2, v2, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "outgoingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfOutgoingCalls >>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfOutgoingCalls - exception"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 8

    .prologue
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.addNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v3, 0x0

    .local v3, "ret":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "countDay":I
    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "countWeek":I
    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "countMonth":I
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method public addOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addOutgoingCallExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addOutgoingCallExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addOutgoingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addOutgoingCallRestriction()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v2

    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addOutgoingCallRestriction"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addOutgoingCallRestriction calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addOutgoingSmsExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_3
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userId":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "addOutgoingSmsExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addOutgoingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    if-nez p2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "regex":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const-string v1, "|"

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
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v2, 0x0

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

    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v4, "PhoneRestriction"

    const-string v5, "allowCallerIDDisplay"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "allowCallerIDDisplay calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return v2

    .end local v3    # "userId":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PhoneRestrictionPolicy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public allowCopyContactToSim(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "ctx"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "PHONERESTRICTION"

    const-string v11, "copyContactToSimEnabled"

    invoke-virtual {v9, v0, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "success":Z
    const-string v9, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .local v8, "userId":I
    if-eqz v4, :cond_1

    if-nez v8, :cond_1

    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v9, "PhoneRestriction"

    const-string v10, "allowCopyContactToSim"

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    invoke-virtual {v3, v9, v10, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v9, "PhoneRestrictionPolicy"

    const-string v10, "allowCopyContactToSim calling gearPolicyManager  "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowIncomingMms(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowIncomingMms"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "allowIncomingMms"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

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

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowIncomingSms(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowIncomingSms"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "allowIncomingSms"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

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

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowOutgoingMms(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowOutgoingMms"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "allowOutgoingMms"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

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

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowOutgoingSms(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowOutgoingSms"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "allowOutgoingSms"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

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

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public allowWapPush(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "wapPushEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "allowWapPush"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "allowWapPush calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public blockMmsWithStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "block"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PHONERESTRICTION"

    const-string v8, "blockMmsWithStorage"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .local v3, "ret":Z
    if-nez p2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userId":I
    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "blockMmsWithStorage"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "blockMmsWithStorage calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return v3

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public blockSmsWithStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "block"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PHONERESTRICTION"

    const-string v8, "blockSmsWithStorage"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .local v3, "ret":Z
    if-nez p2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .local v4, "userId":I
    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v5, "PhoneRestriction"

    const-string v6, "blockSmsWithStorage"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "blockSmsWithStorage calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_0
    return v3

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 14
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    if-nez p1, :cond_1

    const/4 v7, 0x1

    goto :goto_0

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

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const-string v11, "incomingPattern"

    const-string v12, "incomingCallExceptionPattern"

    invoke-direct {p0, p1, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, "canCall":Z
    const/4 v10, 0x0

    .local v10, "underLimit":Z
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCounters()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

    .local v4, "limitDay":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "incomingCallCountDay"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "countDay":I
    if-lt v1, v4, :cond_3

    const/4 v11, 0x1

    if-ge v4, v11, :cond_6

    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .local v6, "limitWeek":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "incomingCallCountWeek"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "countWeek":I
    if-lt v3, v6, :cond_4

    const/4 v11, 0x1

    if-ge v6, v11, :cond_6

    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .local v5, "limitMonth":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "incomingCallCountMonth"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .local v2, "countMonth":I
    if-lt v2, v5, :cond_5

    const/4 v11, 0x1

    if-ge v5, v11, :cond_6

    :cond_5
    const/4 v10, 0x1

    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_1
    if-eqz v0, :cond_8

    if-eqz v10, :cond_8

    const/4 v7, 0x1

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

    .end local v7    # "result":Z
    .restart local v8    # "token":J
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .end local v8    # "token":J
    :cond_7
    const/4 v10, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 13
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    const-string v10, "smsRestrictionIncomingPattern"

    const-string v11, "incomingSmsExceptionPattern"

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, "canReceive":Z
    const/4 v7, 0x0

    .local v7, "underLimit":Z
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

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

    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "incomingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

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

    if-lt v1, v4, :cond_1

    const/4 v10, 0x1

    if-ge v4, v10, :cond_4

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .local v6, "limitWeek":I
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "incomingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "countWeek":I
    if-lt v3, v6, :cond_2

    const/4 v10, 0x1

    if-ge v6, v10, :cond_4

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .local v5, "limitMonth":I
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "incomingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "countMonth":I
    if-lt v2, v5, :cond_3

    const/4 v10, 0x1

    if-ge v5, v10, :cond_4

    :cond_3
    const/4 v7, 0x1

    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canIncomingSms - limit = true"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v7, :cond_6

    const/4 v10, 0x1

    goto/16 :goto_0

    .restart local v8    # "token":J
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .end local v8    # "token":J
    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 14
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const-string v11, "outgoingPattern"

    const-string v12, "outgoingCallExceptionPattern"

    invoke-direct {p0, p1, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, "canCall":Z
    const/4 v10, 0x0

    .local v10, "underLimit":Z
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCounters()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

    .local v4, "limitDay":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "outgoingCallCountDay"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "countDay":I
    if-lt v1, v4, :cond_2

    const/4 v11, 0x1

    if-ge v4, v11, :cond_5

    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .local v6, "limitWeek":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "outgoingCallCountWeek"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "countWeek":I
    if-lt v3, v6, :cond_3

    const/4 v11, 0x1

    if-ge v6, v11, :cond_5

    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .local v5, "limitMonth":I
    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "outgoingCallCountMonth"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .local v2, "countMonth":I
    if-lt v2, v5, :cond_4

    const/4 v11, 0x1

    if-ge v5, v11, :cond_5

    :cond_4
    const/4 v10, 0x1

    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_1
    if-eqz v0, :cond_7

    if-eqz v10, :cond_7

    const/4 v7, 0x1

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

    .end local v7    # "result":Z
    .restart local v8    # "token":J
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .end local v8    # "token":J
    :cond_6
    const/4 v10, 0x1

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 13
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    const-string v10, "smsRestrictionOutgoingPattern"

    const-string v11, "outgoingSmsExceptionPattern"

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, "canSend":Z
    const/4 v7, 0x0

    .local v7, "underLimit":Z
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

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

    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "outgoingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

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

    if-lt v1, v4, :cond_1

    const/4 v10, 0x1

    if-ge v4, v10, :cond_4

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .local v6, "limitWeek":I
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "outgoingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "countWeek":I
    if-lt v3, v6, :cond_2

    const/4 v10, 0x1

    if-ge v6, v10, :cond_4

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .local v5, "limitMonth":I
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "outgoingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "countMonth":I
    if-lt v2, v5, :cond_3

    const/4 v10, 0x1

    if-ge v5, v10, :cond_4

    :cond_3
    const/4 v7, 0x1

    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canOutgoingSms - limit = true"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    if-eqz v0, :cond_6

    if-eqz v7, :cond_6

    const/4 v10, 0x1

    goto/16 :goto_0

    .restart local v8    # "token":J
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .end local v8    # "token":J
    :cond_5
    const/4 v7, 0x1

    goto :goto_1

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
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v4, "uid":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const/4 v2, 0x2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .local v1, "icc":Ljava/lang/String;
    if-nez v1, :cond_3

    const/16 v2, 0x9

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLocked()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v2, 0x5

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getAdminBySimcard(Ljava/lang/String;)I

    move-result v3

    .local v3, "simOwner":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_5

    const/16 v2, 0xc

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->changeSimPinCodeService(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, "result":I
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, "databaseRet":Z
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v4, v1, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v4, v1, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->setPincode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method public checkDataCallLimit()Z
    .locals 18

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J

    move-result-wide v4

    .local v4, "dayLimit":J
    const/4 v7, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J

    move-result-wide v14

    .local v14, "weekLimit":J
    const/4 v7, 0x0

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J

    move-result-wide v10

    .local v10, "monthLimit":J
    const-wide/16 v2, 0x0

    .local v2, "dayCurrent":J
    const-wide/16 v12, 0x0

    .local v12, "weekCurrent":J
    const-wide/16 v8, 0x0

    .local v8, "monthCurrent":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "dataCallBytesCountByDay"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "dataCallBytesCountByWeek"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "dataCallByteCountByMonth"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v8

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

    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v16, "Could not read from Storage"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v16, "Could not read from Storage"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v16, "Could not read from Storage"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    const/4 v0, 0x0

    .local v0, "ret":Z
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

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

    :cond_0
    if-eqz p1, :cond_1

    const v1, 0x1040bad

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    new-array v0, v8, [Ljava/lang/String;

    const-string v6, "smsMmsType"

    aput-object v6, v0, v7

    .local v0, "columnType":[Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v4, v7

    .local v4, "type":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SMSMMSBlockedDelivery"

    invoke-virtual {v6, v7, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userId":I
    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v6, "PhoneRestriction"

    const-string v7, "clearStoredBlockedMms"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "clearStoredBlockedMms calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v3

    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    new-array v0, v8, [Ljava/lang/String;

    const-string v6, "smsMmsType"

    aput-object v6, v0, v7

    .local v0, "columnType":[Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v4, v7

    .local v4, "type":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SMSMMSBlockedDelivery"

    invoke-virtual {v6, v7, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userId":I
    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v6, "PhoneRestriction"

    const-string v7, "clearStoredBlockedSms"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "clearStoredBlockedSms calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v3

    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 8

    .prologue
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.decreaseNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v3, 0x0

    .local v3, "ret":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "countDay":I
    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "countWeek":I
    add-int/lit8 v2, v2, -0x1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "countMonth":I
    add-int/lit8 v1, v1, -0x1

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method public enableLimitNumberOfCalls(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, " >>>> enableLimitNumberOfCalls "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v3, 0x1

    .local v3, "ret":Z
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetCallsCount(Landroid/app/enterprise/ContextInfo;)Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .local v6, "time":J
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "dateDay"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "dateWeek"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "dateMonth"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v3, 0x1

    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_2
    :goto_2
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "enableLimitNumberOfCalls  >>>>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v10, "PHONERESTRICTION"

    const-string v11, "limitCallEnable"

    invoke-virtual {v8, v9, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v4, 0x1

    .local v4, "success":Z
    :goto_3
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userId":I
    if-eqz v4, :cond_0

    if-nez v5, :cond_0

    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v8, "PhoneRestriction"

    const-string v9, "enableLimitNumberOfCalls"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "enableLimitNumberOfCalls calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v4    # "success":Z
    .end local v5    # "userId":I
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "time":J
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

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
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, " >>>> enableLimitNumberOfSMS "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v3, 0x1

    .local v3, "ret":Z
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetSmsCount(Landroid/app/enterprise/ContextInfo;)Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .local v6, "time":J
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "smsDateDay"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "smsDateWeek"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "smsDateMonth"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_0
    :goto_1
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "enableLimitNumberOfSMS  >>>>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v10, "PHONERESTRICTION"

    const-string v11, "limitSmsEnable"

    invoke-virtual {v8, v9, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    .local v4, "success":Z
    :goto_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .local v5, "userId":I
    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v8, "PhoneRestriction"

    const-string v9, "enableLimitNumberOfSms"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "enableLimitNumberOfSms calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_3
    return v4

    .end local v4    # "success":Z
    .end local v5    # "userId":I
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "time":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v4    # "success":Z
    .restart local v5    # "userId":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableLimitDataCall"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

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

    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v1, v2

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

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, " getEmergencyCallOnly calls from Profile return default value"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x0

    .local v5, "result":Z
    if-nez p2, :cond_6

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .local v6, "userId":I
    if-nez p1, :cond_2

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v1, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    move-object p1, v1

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

    :cond_3
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Operation supported only on owner space"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "userId":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    const-string v7, "PhoneRestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getEmergencyCall >>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local v6    # "userId":I
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v9, "PHONERESTRICTION"

    const-string v10, "emergencyCallOnly"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .end local v6    # "userId":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string v9, "emergencyCallOnly"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

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

    .local v0, "block":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_7

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getIncomingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "incomingCallExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "incomingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIncomingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingSmsExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "incomingSmsExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "smsRestrictionIncomingPattern"

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    packed-switch p2, :pswitch_data_0

    const-wide/16 v2, -0x1

    :cond_0
    return-wide v2

    :pswitch_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByDay"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-wide/16 v2, 0x0

    .local v2, "res":J
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

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

    .local v4, "value":J
    cmp-long v6, v4, v10

    if-eqz v6, :cond_1

    cmp-long v6, v4, v2

    if-ltz v6, :cond_2

    cmp-long v6, v2, v10

    if-nez v6, :cond_1

    :cond_2
    move-wide v2, v4

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":J
    .end local v4    # "value":J
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByWeek"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-wide/16 v2, 0x0

    .restart local v2    # "res":J
    goto :goto_0

    .end local v2    # "res":J
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByMonth"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-wide/16 v2, 0x0

    .restart local v2    # "res":J
    goto :goto_0

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .local v2, "res":I
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

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

    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3

    if-nez v2, :cond_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2    # "res":I
    goto :goto_1

    .end local v2    # "res":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2    # "res":I
    goto :goto_1

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
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_0

    const/4 v2, -0x1

    :cond_0
    return v2

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .local v2, "res":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

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

    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_2

    if-nez v2, :cond_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2    # "res":I
    goto :goto_0

    .end local v2    # "res":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2    # "res":I
    goto :goto_0

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .local v2, "res":I
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

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

    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3

    if-nez v2, :cond_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2    # "res":I
    goto :goto_1

    .end local v2    # "res":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2    # "res":I
    goto :goto_1

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
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_0

    const/4 v2, -0x1

    :cond_0
    return v2

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .local v2, "res":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

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

    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_2

    if-nez v2, :cond_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2    # "res":I
    goto :goto_0

    .end local v2    # "res":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2    # "res":I
    goto :goto_0

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
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "outgoingCallExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "outgoingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingSmsExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "outgoingSmsExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPinCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, "callingUid":I
    const/4 v6, -0x1

    .local v6, "sysUiUid":I
    const/4 v5, 0x0

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

    :goto_0
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .local v0, "callingAppId":I
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "callingPkg":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .local v4, "index":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    invoke-virtual {v1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v7, "android.uid.systemui"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-ne v0, v6, :cond_1

    const/4 v5, 0x1

    .end local v4    # "index":I
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-eq v2, v7, :cond_2

    const/16 v7, 0x3e9

    if-eq v2, v7, :cond_2

    if-nez v5, :cond_2

    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Can only be called by System, Phone or System UI"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0    # "callingAppId":I
    .end local v1    # "callingPkg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "Unable to resolve SystemUI\'s UID."

    invoke-static {v7, v8, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

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
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, " isBlockMmsWithStorageEnabled calls from Profile return default value"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "blockMmsWithStorage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

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
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, " isBlockSmsWithStorageEnabled calls from Profile return default value"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "blockSmsWithStorage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

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
    const/4 v2, 0x1

    .local v2, "ret":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowCallerID"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

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

    .local v3, "value":Z
    if-nez v3, :cond_0

    move v2, v3

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

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
    const/4 v1, 0x1

    .local v1, "isCopyAllowed":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "copyContactToSimEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

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

    .local v2, "value":Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v2    # "value":Z
    :cond_1
    if-nez v1, :cond_2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCopyContactToSimAllowed wrong message value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1

    :pswitch_1
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "Access to PB ADD "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x1040bb7

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

    :pswitch_2
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "Access to PB Edit "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x1040bb8

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

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
    const/4 v1, 0x1

    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "copyContactToSimEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

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

    .local v2, "value":Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v0, "allowIncomingMms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " isIncomingSmsAllowed calls from Profile return default value"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "limitCallEnable"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

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

    .local v0, "enable":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PHONERESTRICTION"

    const-string v5, "limitSmsEnable"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

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

    .local v0, "enable":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

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
    const-string v0, "allowOutgoingMms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " isOutgoingSmsAllowed calls from Profile return default value"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->hasAnySimcard()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "pincode":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x1

    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "wapPushEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

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

    .local v2, "value":Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v2    # "value":Z
    :cond_1
    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWapPushAllowed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v7, "uid":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    const/4 v5, 0x2

    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    .local v3, "icc":Ljava/lang/String;
    if-nez v3, :cond_2

    const/16 v5, 0x9

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getAdminBySimcard(Ljava/lang/String;)I

    move-result v6

    .local v6, "simOwner":I
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLocked()Z

    move-result v4

    .local v4, "isLocked":Z
    if-eqz p3, :cond_a

    if-eqz v4, :cond_8

    if-ne v6, v11, :cond_3

    const/4 v5, 0x4

    goto :goto_0

    :cond_3
    if-ne v6, v7, :cond_4

    const/16 v5, 0xb

    goto :goto_0

    :cond_4
    if-ne v6, v7, :cond_0

    :cond_5
    :goto_1
    invoke-direct {p0, p3, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIccLockEnabled(ZLjava/lang/String;)I

    move-result v5

    .local v5, "result":I
    if-nez v5, :cond_0

    const/4 v0, 0x1

    .local v0, "databaseRet":Z
    if-eqz p3, :cond_f

    if-ne v6, v11, :cond_e

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .local v8, "userId":I
    if-eqz v0, :cond_7

    if-nez v8, :cond_7

    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_2
    const-string v9, "PhoneRestriction"

    const-string v10, "lockUnlockCorporateSimCard"

    invoke-virtual {v2, v9, v10, p2, p3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v9, "PhoneRestrictionPolicy"

    const-string v10, "enableLimitNumberOfCalls calling gearPolicyManager  "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_7
    :goto_3
    if-nez v0, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    .end local v0    # "databaseRet":Z
    .end local v5    # "result":I
    .end local v8    # "userId":I
    :cond_8
    if-eq v6, v11, :cond_5

    if-ne v6, v7, :cond_9

    :try_start_3
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v3    # "icc":Ljava/lang/String;
    .end local v4    # "isLocked":Z
    .end local v6    # "simOwner":I
    .end local v7    # "uid":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v3    # "icc":Ljava/lang/String;
    .restart local v4    # "isLocked":Z
    .restart local v6    # "simOwner":I
    .restart local v7    # "uid":I
    :cond_9
    if-eq v6, v7, :cond_5

    goto :goto_0

    :cond_a
    if-eqz v4, :cond_b

    if-eq v6, v11, :cond_5

    if-eq v6, v7, :cond_5

    if-eq v6, v7, :cond_5

    goto :goto_0

    :cond_b
    if-ne v6, v11, :cond_c

    move v5, v9

    goto :goto_0

    :cond_c
    if-ne v6, v7, :cond_d

    :try_start_4
    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v10, v7, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z

    move v5, v9

    goto :goto_0

    :cond_d
    if-eq v6, v7, :cond_5

    move v5, v9

    goto/16 :goto_0

    .restart local v0    # "databaseRet":Z
    .restart local v5    # "result":I
    :cond_e
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->setPincode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_f
    if-eq v6, v11, :cond_6

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z

    move-result v0

    goto :goto_2

    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v8    # "userId":I
    :catch_0
    move-exception v1

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
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDataLimitState()V

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcardsByAdmin(I)Z

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public removeIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeIncomingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "removeIncomingCallExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "removeIncomingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeIncomingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "removeIncomingCallRestriction"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "removeIncomingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeIncomingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "removeIncomingSmsExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "removeIncomingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeOutgoingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "removeOutgoingCallExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "removeOutgoingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeOutgoingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "removeOutgoingCallRestriction"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "removeOutgoingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeOutgoingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "removeOutgoingSmsExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "removeOutgoingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "incomingCallCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "ret":Z
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingCallCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "incomingCallCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingCallCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "incomingCallCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "outgoingCallCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "resetCallsCount"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "resetCallsCount calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetDataCallLimitCounter(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dataCallBytesCountByDay"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dataCallBytesCountByWeek"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dataCallByteCountByMonth"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "resetDataCallLimitCounter"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "resetDataCallLimitCounter calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetSmsCount(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "incomingSmsCountDay"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "outgoingSmsCountDay"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "incomingSmsCountWeek"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "outgoingSmsCountWeek"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "incomingSmsCountMonth"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "outgoingSmsCountMonth"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "resetSmsCount"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "resetSmsCount calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v3, 0x1

    .local v3, "ret":Z
    if-eqz p2, :cond_0

    iget-boolean v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v9, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetDataCallLimitCounter(Landroid/app/enterprise/ContextInfo;)Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v9, 0xb

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xc

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xd

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xe

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, "time":J
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "dataCallDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v3, v9

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "dataCallDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v3, v9

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "dataCallDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v3, v9

    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v4    # "time":J
    :cond_0
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v11, "PHONERESTRICTION"

    const-string v12, "enableLimitDataCall"

    invoke-virtual {v9, v10, v11, v12, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    and-int/2addr v3, v9

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    iget-boolean v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v9, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v6    # "token":J
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/DeviceInventory;->dataUsageTimerActivation()V

    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .local v8, "userId":I
    if-eqz v3, :cond_3

    if-nez v8, :cond_3

    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v9, "PhoneRestriction"

    const-string v10, "setDataCallLimitEnabled"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    invoke-virtual {v2, v9, v10, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v9, "PhoneRestrictionPolicy"

    const-string v10, "setDataCallLimitEnabled calling gearPolicyManager  "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_0
    return v3

    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "emergencyCallOnly"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "setEmergencyCallOnly"

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "setEmergencyCallOnly calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setIncomingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "incomingCallExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "setIncomingCallExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "setIncomingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setIncomingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "incomingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "setIncomingCallRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "setIncomingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "incomingSmsExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "setIncomingSmsExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "setIncomingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "smsRestrictionIncomingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "setIncomingSmsRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "setIncomingSmsRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v1, "callingUid":I
    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    cmp-long v0, p4, v2

    if-ltz v0, :cond_0

    cmp-long v0, p6, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByDay"

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v6

    .local v6, "ret":Z
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByWeek"

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByMonth"

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .local v1, "ret":Z
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .local v1, "ret":Z
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v1, v3

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .local v1, "ret":Z
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .local v1, "ret":Z
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "outgoingCallExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "setOutgoingCallExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "setOutgoingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "outgoingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "setOutgoingCallRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "setOutgoingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "outgoingSmsExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "setOutgoingSmsExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "setOutgoingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "smsRestrictionOutgoingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "PhoneRestriction"

    const-string v5, "setOutgoingSmsRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "setOutgoingSmsRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

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
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .local v2, "hexPdu":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "SMSMMSBlockedDelivery"

    .local v3, "tableName":Ljava/lang/String;
    const-string v4, "smsMmsPdu"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "smsMmsSendType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "smsMmsType"

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "smsMmsOrigAddress"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v4, "smsMmsTimeStamp"

    invoke-virtual {v0, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "sms/mms stored successfully"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "could not write sms/mms into edm database"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method

.method public updateDataLimitState()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

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

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    iget-boolean v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendarCurrent":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, "calendarDay":Ljava/util/Calendar;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dataCallDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .local v3, "calendarWeek":Ljava/util/Calendar;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dataCallDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "calendarMonth":Ljava/util/Calendar;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dataCallDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, "time":J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dataCallDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dataCallBytesCountByDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

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

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dataCallDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dataCallBytesCountByWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

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

    :cond_3
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dataCallDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dataCallByteCountByMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v6, p1

    if-gez v6, :cond_5

    const-string v6, "dataCallBytesCountByDay"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    const-string v6, "dataCallBytesCountByWeek"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    const-string v6, "dataCallByteCountByMonth"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->blockDataNetwork()Z

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    goto/16 :goto_0

    .end local v4    # "time":J
    :catch_0
    move-exception v6

    goto/16 :goto_3

    .end local v2    # "calendarMonth":Ljava/util/Calendar;
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .end local v3    # "calendarWeek":Ljava/util/Calendar;
    :catch_2
    move-exception v6

    goto/16 :goto_1
.end method
