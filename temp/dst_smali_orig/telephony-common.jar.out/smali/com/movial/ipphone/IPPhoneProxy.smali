.class public Lcom/movial/ipphone/IPPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "IPPhoneProxy.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x2710

.field private static final DELAY_BROADCAST_OPERATORNAME:I = 0x3e8

.field private static final DELAY_REBIND_IPSERVICE:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "IPPhoneProxy"

.field private static final TAG:Ljava/lang/String; = "IPPhoneProxy"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;

.field private static mRegistered:Z


# instance fields
.field private final binded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private forceEmergency:Z

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mIPPhone:Lcom/movial/ipphone/IPPhone;

.field private mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

.field private mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

.field private mIPStateListener:Lcom/movial/ipphone/IPStateListener;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOperatorName:Ljava/lang/String;

.field private mOperatorName_metropcs:Ljava/lang/String;

.field private mOutgoingPhone:Ljava/lang/String;

.field private mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field private mRealName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRilVersion:I

.field private mRingingCall:Lcom/android/internal/telephony/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/movial/ipphone/IPPhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const-string v0, "1,T-Mobile,1,T-Mobile"

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    const-string v0, "1,MetroPCS,1,MetroPCS"

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName_metropcs:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$1;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/movial/ipphone/IPPhoneProxy$2;-><init>(Lcom/movial/ipphone/IPPhoneProxy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$3;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$3;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$4;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$4;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    const-string v0, "IPPhoneProxy"

    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    new-instance v0, Lcom/movial/ipphone/IPPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CELL_ONLY"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    :cond_0
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/movial/ipphone/IPPhoneSettings;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "GBA_INIT"

    invoke-static {v0, v1, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    new-instance v1, Lcom/movial/ipphone/IPSMSDispatcher;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v3, v0, Lcom/movial/ipphone/IPPhone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v4, v0, Lcom/movial/ipphone/IPPhone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/movial/ipphone/IPSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

    new-instance v0, Lcom/movial/ipphone/EmergencyCallController;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1}, Lcom/movial/ipphone/EmergencyCallController;-><init>(Lcom/movial/ipphone/IPPhoneProxy;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .local v6, "intentfilter":Landroid/content/IntentFilter;
    const-string v0, "com.movial.gba_initialized"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.movial.ACTION_TERMINATE_STACK"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.movial.ACTION_REREAD_ISIM"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->unbindService(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/movial/ipphone/IPPhoneProxy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->updateNetworkName(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IIPRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/movial/ipphone/IPPhoneProxy;Lcom/movial/ipphone/IIPRegistry;)Lcom/movial/ipphone/IIPRegistry;
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Lcom/movial/ipphone/IIPRegistry;

    .prologue
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindToIPRegistry()V

    return-void
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    return-void
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPPhone;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/EmergencyCallController;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->setIPSMSDispatcher(Z)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return p0
.end method

.method static synthetic access$700(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private bindService()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$5;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$5;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private bindToIPRegistry()V
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "IPPhoneProxy"

    const-string v4, "bindToIPRegistry"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v2}, Ljava/util/concurrent/CyclicBarrier;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/movial/ipphone/IIPRegistry;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.movial.ipservice"

    const-string v4, "com.movial.ipservice.IPService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->waitConnectionResponse()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService FAILED. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private broadcastOperatorName()V
    .locals 0

    .prologue
    return-void
.end method

.method private deleteAndCreatePhone(I)V
    .locals 5
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    const-string v2, "Unknown"

    .local v2, "outgoingPhoneName":Ljava/lang/String;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .local v1, "oldPhone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switching Voice Phone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "GSM"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->relinquishOwnershipOfImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->acquireOwnershipOfImsPhone(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    const-string v3, "Disposing old phone.."

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->dispose()V

    :cond_4
    const/4 v1, 0x0

    return-void

    :cond_5
    const-string v3, "CDMA"

    goto :goto_0

    :cond_6
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method public static getRegister()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private phoneObjectUpdater(I)V
    .locals 8
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_4

    const/16 v3, 0xe

    if-eq p1, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .local v2, "volteReplacementRat":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: volteReplacementRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    move p1, v2

    .end local v2    # "volteReplacementRat":I
    :cond_1
    iget v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v7, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: LTE ON CDMA property is set. Use CDMA Phone newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: LTE ON CDMA property is set. Switch to CDMALTEPhone newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    const/4 p1, 0x6

    :cond_4
    if-nez p1, :cond_8

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: Unknown rat ignore,  newVoiceRadioTech=Unknown. mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-eq v3, v7, :cond_7

    :cond_6
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_4

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: No change ignore, newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    .local v1, "oldPowerState":Z
    iget-boolean v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    const-string v3, "phoneObjectUpdater: Setting Radio Power to Off"

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :cond_9
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->deleteAndCreatePhone(I)V

    iget-boolean v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    const-string v3, "phoneObjectUpdater: Resetting Radio"

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :cond_a
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    :cond_b
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v4}, Lcom/movial/ipphone/IPPhone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_d

    const-string v3, "phoneName"

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    iget v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneId:I

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const/4 v3, -0x1

    invoke-static {v0, v5, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private setCall(Z)V
    .locals 7
    .param p1, "result"    # Z

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .local v0, "f":Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .local v1, "g":Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    .local v4, "r":Lcom/android/internal/telephony/Call;
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v5}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v5}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v5}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    const-string v3, "IP_WFC"

    .local v3, "phoneName":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "phoneName"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "phoneName":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "phoneName":Ljava/lang/String;
    goto :goto_0
.end method

.method private setIPSMSDispatcher(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIPSMSDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V

    goto :goto_0
.end method

.method private unbindService(Z)V
    .locals 4
    .param p1, "restart"    # Z

    .prologue
    const/4 v3, 0x0

    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sput-boolean v3, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->unbindService()V

    if-eqz p1, :cond_1

    const/16 v0, 0xd

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/movial/ipphone/IPPhoneProxy;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private updateNetworkName(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const-string v5, "showSpn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .local v3, "showSpn":Z
    const-string v5, "spn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "spn":Ljava/lang/String;
    const-string v5, "showPlmn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "showPlmn":Z
    const-string v5, "plmn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "plmn":Ljava/lang/String;
    const-string v5, "com.movial.IMS_WIFICALL"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_6

    const-string v5, "1"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "null"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_8

    const-string v5, "1"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "null"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRealName:Ljava/lang/String;

    :cond_0
    const-string v0, ""

    .local v0, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_a

    const-string v5, "1"

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "null"

    .end local v4    # "spn":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_b

    const-string v5, "1"

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v1, "null"

    .end local v1    # "plmn":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    :cond_5
    :goto_6
    return-void

    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "plmn":Ljava/lang/String;
    .restart local v4    # "spn":Ljava/lang/String;
    :cond_6
    const-string v5, "0"

    goto/16 :goto_0

    :cond_7
    move-object v5, v4

    goto/16 :goto_1

    :cond_8
    const-string v5, "0"

    goto/16 :goto_2

    :cond_9
    move-object v5, v1

    goto :goto_3

    .restart local v0    # "name":Ljava/lang/String;
    :cond_a
    const-string v5, "0"

    goto :goto_4

    .end local v4    # "spn":Ljava/lang/String;
    :cond_b
    const-string v5, "0"

    goto :goto_5

    .end local v1    # "plmn":Ljava/lang/String;
    :cond_c
    const-string v5, "com.movial.IMS_WIFICALL"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0xe

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v5, v6, v7}, Lcom/movial/ipphone/IPPhoneProxy;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6
.end method

.method private waitConnectionResponse()V
    .locals 5

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhoneProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitConnectionResponse FAILED. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPPhoneProxy;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->acceptCall(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    goto :goto_0
.end method

.method public canConference()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->canConference()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    goto :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->canTransfer()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newPwdAgain"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->clearDisconnected()V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->conference()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .local v0, "isEmergencyCall":Z
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/EmergencyCallController;->transitToDialingState(Ljava/lang/String;)V

    :cond_1
    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v1, :cond_2

    const-string v1, "IPPhoneProxy"

    const-string v2, "ims call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1, p1, p3}, Lcom/movial/ipphone/IPPhone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    const-string v1, "IPPhoneProxy"

    const-string v2, "gsm call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .param p5, "callType"    # I
    .param p6, "callDomain"    # I
    .param p7, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    const-string v0, "dispose"

    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->exitEmergencyCallbackMode()V

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->explicitCallTransfer()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    goto :goto_0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivePhone(), mRegistered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "dialingNumber"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->getCallWaiting(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getEmergencyCallPowerState()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getDesiredPowerState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEmergencyPreference()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0}, Lcom/movial/ipphone/EmergencyCallController;->getEmergencyPreference()I

    move-result v0

    return v0
.end method

.method public getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0}, Lcom/movial/ipphone/EmergencyCallController;->getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v0

    return-object v0
.end method

.method public getForceEmergencyMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getImsBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getImsForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getImsRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getMute()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .local v0, "mGsm":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .local v1, "mIP":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! This handler was not registered for this message type. Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    :goto_0
    :pswitch_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .local v1, "emergencyCallPref":I
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v2, v1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyPreference(I)V

    const-string v2, "IPPhoneProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mEmergencyCallPref to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "emergencyCallPref":I
    :pswitch_3
    const-string v2, "IPPhoneProxy"

    const-string v3, "EVENT_BIND_TO_IPSERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public holdCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->switchHoldingAndActive()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public isWfcRegistered()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return v0
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->rejectCall()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    goto :goto_0
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->sendDtmf(C)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->sendUssdResponse(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 6
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "startTime"    # Ljava/lang/String;
    .param p7, "endTime"    # Ljava/lang/String;
    .param p8, "onComplete"    # Landroid/os/Message;

    .prologue
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->setCallWaiting(ZLandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V
    .locals 1
    .param p1, "state"    # Lcom/movial/ipphone/IPUtils$EmergencyState;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V

    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setForceEmergencyMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "CELL_ONLY"

    invoke-static {v1, v4, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-nez p1, :cond_3

    :goto_1
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    if-eq p1, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.movial.force_emergency_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "force"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/EmergencyCallController;->notifyForceEmergencyModeChanged(Z)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iput-boolean p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->setMute(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_0
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 1
    .param p1, "powerLevel"    # I
    .param p2, "onCompleted"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTransmitPower(ILandroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->startDtmf(C)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->stopDtmf()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    goto :goto_0
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->switchHoldingAndActive()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForDisconnect(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    return-void
.end method

.method public updatePhoneObject(I)V
    .locals 3
    .param p1, "voiceRadioTech"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneObject: radioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/movial/ipphone/IPPhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPPhoneProxy;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
