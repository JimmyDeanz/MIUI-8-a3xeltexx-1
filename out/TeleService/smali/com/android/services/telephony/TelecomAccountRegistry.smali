.class final Lcom/android/services/telephony/TelecomAccountRegistry;
.super Ljava/lang/Object;
.source "TelecomAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:I

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry$1;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 275
    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry$2;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 292
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    .line 293
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I

    .line 300
    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    .line 301
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 302
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 303
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/TelecomAccountRegistry;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/TelecomAccountRegistry;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/TelecomAccountRegistry;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/TelecomAccountRegistry;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelecomAccountRegistry;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->tearDownAccounts()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelecomAccountRegistry;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->setupAccounts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/services/telephony/TelecomAccountRegistry;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/TelecomAccountRegistry;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/services/telephony/TelecomAccountRegistry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelecomAccountRegistry;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I

    return p1
.end method

.method private cleanupPhoneAccounts()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 377
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v3, "telephonyComponentName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4, v7}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 381
    .local v0, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 382
    .local v1, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 384
    const-string v4, "Unregistering phone account %s."

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v4, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    .line 388
    .end local v1    # "handle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    return-void
.end method

.method static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const-class v1, Lcom/android/services/telephony/TelecomAccountRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 308
    new-instance v0, Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;

    .line 310
    :cond_0
    sget-object v0, Lcom/android/services/telephony/TelecomAccountRegistry;->sInstance:Lcom/android/services/telephony/TelecomAccountRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setupAccounts()V
    .locals 22

    .prologue
    .line 393
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 394
    .local v12, "phones":[Lcom/android/internal/telephony/Phone;
    const-string v17, "Found %d phones.  Attempting to register."

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    array-length v0, v12

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    move-object v6, v12

    .local v6, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v10, v6, v8

    .line 396
    .local v10, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v17

    move/from16 v0, v17

    int-to-long v14, v0

    .line 397
    .local v14, "subscriptionId":J
    const-string v17, "Phone with subscription id %d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    const-wide/16 v18, 0x0

    cmp-long v17, v14, v18

    if-ltz v17, :cond_0

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;Lcom/android/internal/telephony/Phone;ZZ)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 406
    .end local v10    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v14    # "subscriptionId":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;-><init>(Lcom/android/services/telephony/TelecomAccountRegistry;Lcom/android/internal/telephony/Phone;ZZ)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->cleanupPhoneAccounts()V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 424
    .local v7, "defaultPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-class v18, Lcom/android/services/telephony/TelephonyConnectionService;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    .local v13, "telephonyComponentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 431
    invoke-virtual {v7}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v11

    .line 432
    .local v11, "phoneAccountId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 433
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v16

    .line 437
    .local v16, "upgradedPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 442
    .end local v11    # "phoneAccountId":Ljava/lang/String;
    .end local v16    # "upgradedPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    :cond_3
    return-void
.end method

.method private tearDownAccounts()V
    .locals 3

    .prologue
    .line 445
    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    .line 446
    .local v0, "entry":Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->teardown()V

    goto :goto_0

    .line 448
    .end local v0    # "entry":Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 449
    return-void
.end method


# virtual methods
.method getTelephonyConnectionService()Lcom/android/services/telephony/TelephonyConnectionService;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    return-object v0
.end method

.method hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 364
    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    .line 365
    .local v0, "entry":Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    const/4 v2, 0x1

    .line 369
    .end local v0    # "entry":Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isVideoPauseSupported(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;

    .line 330
    .local v0, "entry":Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->isVideoPauseSupported()Z

    move-result v2

    .line 334
    .end local v0    # "entry":Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method setTelephonyConnectionService(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 0
    .param p1, "telephonyConnectionService"    # Lcom/android/services/telephony/TelephonyConnectionService;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    .line 315
    return-void
.end method

.method setupOnBoot()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 354
    return-void
.end method
