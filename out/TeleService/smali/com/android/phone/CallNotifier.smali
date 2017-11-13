.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static sInstance:Lcom/android/phone/CallNotifier;


# instance fields
.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothManager:Lcom/android/phone/BluetoothManager;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLogger:Lcom/android/phone/CallLogger;

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mIsCdmaRedialCall:Z

.field private mPhoneStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoicePrivacyState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    .line 80
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallNotifier;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallStateMonitor;Lcom/android/phone/BluetoothManager;)V
    .locals 4
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "callLogger"    # Lcom/android/phone/CallLogger;
    .param p3, "callStateMonitor"    # Lcom/android/phone/CallStateMonitor;
    .param p4, "bluetoothManager"    # Lcom/android/phone/BluetoothManager;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 97
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:Ljava/util/Map;

    .line 112
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1123
    new-instance v1, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 146
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 147
    iget-object v1, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 148
    iput-object p2, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 149
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    .line 151
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 152
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 154
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 157
    invoke-virtual {p3, p0}, Lcom/android/phone/CallStateMonitor;->addListener(Landroid/os/Handler;)V

    .line 159
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 160
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v2, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/CallNotifier;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method private containsSubId(Ljava/util/List;I)Z
    .locals 3
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v2, 0x0

    .line 975
    if-nez p1, :cond_0

    move v1, v2

    .line 984
    :goto_0
    return v1

    .line 979
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 980
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 981
    const/4 v1, 0x1

    goto :goto_0

    .line 979
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 984
    goto :goto_0
.end method

.method private createSignalInfoToneGenerator()V
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_0

    .line 182
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    .line 184
    const-string v1, "CallNotifier"

    const-string v2, "CallNotifier: mSignalInfoToneGenerator created when toneplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-string v1, "CallNotifier"

    const-string v2, "mSignalInfoToneGenerator created already, hence skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 366
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v6, :cond_0

    .line 370
    const-string v5, "CallNotifier"

    const-string v6, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return v4

    .line 377
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 378
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_1
    move v4, v5

    .line 379
    goto :goto_0

    .line 383
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v2, v4

    .line 385
    .local v2, "provisioned":Z
    :goto_1
    if-nez v2, :cond_4

    .line 386
    const-string v5, "CallNotifier"

    const-string v6, "Ignoring incoming call: not provisioned"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "provisioned":Z
    :cond_3
    move v2, v5

    .line 383
    goto :goto_1

    .line 391
    .restart local v2    # "provisioned":Z
    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 392
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_5

    move v0, v4

    .line 394
    .local v0, "activateState":Z
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_6

    move v1, v4

    .line 396
    .local v1, "dialogState":Z
    :goto_3
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v3, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 398
    .local v3, "spcState":Z
    if-eqz v3, :cond_7

    .line 399
    const-string v5, "CallNotifier"

    const-string v6, "Ignoring incoming call: OTA call is active"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "activateState":Z
    .end local v1    # "dialogState":Z
    .end local v3    # "spcState":Z
    :cond_5
    move v0, v5

    .line 392
    goto :goto_2

    .restart local v0    # "activateState":Z
    :cond_6
    move v1, v5

    .line 394
    goto :goto_3

    .line 401
    .restart local v1    # "dialogState":Z
    .restart local v3    # "spcState":Z
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_a

    .line 406
    :cond_8
    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->dismissOtaDialogs()V

    .line 407
    :cond_9
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->clearOtaState()V

    move v4, v5

    .line 408
    goto :goto_0

    .end local v0    # "activateState":Z
    .end local v1    # "dialogState":Z
    .end local v3    # "spcState":Z
    :cond_a
    move v4, v5

    .line 413
    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallStateMonitor;Lcom/android/phone/BluetoothManager;)Lcom/android/phone/CallNotifier;
    .locals 4
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "callLogger"    # Lcom/android/phone/CallLogger;
    .param p2, "callStateMonitor"    # Lcom/android/phone/CallStateMonitor;
    .param p3, "bluetoothManager"    # Lcom/android/phone/BluetoothManager;

    .prologue
    .line 130
    const-class v1, Lcom/android/phone/CallNotifier;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/android/phone/CallNotifier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallStateMonitor;Lcom/android/phone/BluetoothManager;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 136
    :goto_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v1

    return-object v0

    .line 134
    :cond_0
    const-string v0, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1154
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 487
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 488
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 489
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_a

    .line 490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDisconnect: cause = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", incoming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", date = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 497
    :goto_0
    const/4 v0, 0x0

    .line 498
    .local v0, "autoretrySetting":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 500
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "call_auto_retry"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 507
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 510
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 514
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 515
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 517
    sget-boolean v8, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "onDisconnect: this was an OTASP call!"

    invoke-direct {p0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 518
    :cond_2
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->handleOtaspDisconnect()V

    .line 524
    .end local v4    # "number":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    .line 533
    .local v7, "toneToPlay":I
    if-nez v7, :cond_5

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_5

    if-eqz v1, :cond_5

    .line 536
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v2

    .line 537
    .local v2, "cause":I
    const/4 v8, 0x2

    if-eq v2, v8, :cond_4

    const/4 v8, 0x3

    if-ne v2, v8, :cond_5

    .line 540
    :cond_4
    const/4 v7, 0x4

    .line 541
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 546
    .end local v2    # "cause":I
    :cond_5
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_6

    .line 549
    if-nez v7, :cond_6

    .line 550
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 554
    :cond_6
    if-eqz v1, :cond_9

    .line 555
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v8, v1}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;)V

    .line 557
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 558
    .restart local v4    # "number":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 559
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 566
    .local v3, "isEmergencyNumber":Z
    if-eqz v7, :cond_7

    .line 568
    new-instance v8, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v8, p0, v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 580
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v2

    .line 581
    .restart local v2    # "cause":I
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_9

    :cond_8
    if-nez v3, :cond_9

    const/4 v8, 0x1

    if-eq v2, v8, :cond_9

    const/4 v8, 0x2

    if-eq v2, v8, :cond_9

    const/4 v8, 0x3

    if-eq v2, v8, :cond_9

    const/16 v8, 0x10

    if-eq v2, v8, :cond_9

    .line 588
    iget-boolean v8, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v8, :cond_c

    .line 589
    const/4 v8, 0x1

    if-ne v0, v8, :cond_b

    .line 592
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v5, v4, v9, v10}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v6

    .line 594
    .local v6, "status":I
    const/4 v8, 0x2

    if-eq v6, v8, :cond_9

    .line 595
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 605
    .end local v2    # "cause":I
    .end local v3    # "isEmergencyNumber":Z
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "status":I
    :cond_9
    :goto_1
    return-void

    .line 494
    .end local v0    # "autoretrySetting":I
    .end local v7    # "toneToPlay":I
    :cond_a
    const-string v8, "CallNotifier"

    const-string v9, "onDisconnect: null connection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 598
    .restart local v0    # "autoretrySetting":I
    .restart local v2    # "cause":I
    .restart local v3    # "isEmergencyNumber":Z
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v7    # "toneToPlay":I
    :cond_b
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto :goto_1

    .line 601
    :cond_c
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto :goto_1
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 894
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 896
    .local v1, "displayInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    if-eqz v1, :cond_1

    .line 897
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 898
    .local v0, "displayInfo":Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayInfo: displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 899
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, v0}, Lcom/android/phone/PhoneDisplayMessage;->displayNetworkMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 902
    const/16 v2, 0x16

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 905
    .end local v0    # "displayInfo":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 273
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 274
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewRingingConnection(): state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", conn = { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 276
    .local v2, "ringing":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 279
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 346
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v4

    if-nez v4, :cond_1

    .line 289
    const-string v4, "CallNotifier"

    const-string v5, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 301
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 333
    .local v3, "state":Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v5, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 435
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 441
    .local v1, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v3, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v3, :cond_5

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 444
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 445
    .local v0, "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 446
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .line 449
    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v3, :cond_1

    .line 450
    const/16 v2, 0xa

    .line 451
    .local v2, "toneToPlay":I
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v3, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 454
    .end local v2    # "toneToPlay":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 456
    :cond_2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 464
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    .line 467
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneGlobals;->updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 469
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v3, :cond_4

    .line 473
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 475
    :cond_4
    return-void

    .line 441
    .end local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 1057
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v6, :cond_1

    .line 1058
    const-string v6, "CallNotifier"

    const-string v7, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1065
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v1, v6

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 1070
    .local v1, "signalInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_0

    .line 1071
    iget-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 1072
    .local v0, "isPresent":Z
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSignalInfo: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1073
    :cond_3
    if-eqz v0, :cond_0

    .line 1074
    iget v5, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 1075
    .local v5, "uSignalType":I
    iget v3, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 1076
    .local v3, "uAlertPitch":I
    iget v4, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 1078
    .local v4, "uSignal":I
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSignalInfo: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1081
    :cond_4
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 1085
    .local v2, "toneID":I
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_0
.end method

.method private onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 913
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->RESUME:Lcom/android/internal/telephony/Phone$SuppService;

    if-eq v1, v2, :cond_1

    .line 914
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onSuppServiceFailed: not a merge or resume failure event"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    const-string v0, ""

    .line 919
    .local v0, "mergeFailedString":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    if-ne v1, v2, :cond_4

    .line 920
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "onSuppServiceFailed: displaying merge failure message"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 921
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 928
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1, v0}, Lcom/android/phone/PhoneDisplayMessage;->displayErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 931
    const/16 v1, 0x16

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 923
    :cond_4
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->RESUME:Lcom/android/internal/telephony/Phone$SuppService;

    if-ne v1, v2, :cond_3

    .line 924
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "onSuppServiceFailed: displaying merge failure message"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 925
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private onTtyModeReceived(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 992
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "TtyModeReceived: displaying notification message"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 994
    :cond_0
    const/4 v0, 0x0

    .line 995
    .local v0, "resId":I
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1009
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported TTY mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :goto_0
    if-eqz v0, :cond_1

    .line 1013
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneDisplayMessage;->displayNetworkMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1017
    const/16 v1, 0x16

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1021
    :cond_1
    return-void

    .line 997
    :pswitch_0
    sget v0, Lcom/android/internal/R$string;->peerTtyModeFull:I

    .line 998
    goto :goto_0

    .line 1000
    :pswitch_1
    sget v0, Lcom/android/internal/R$string;->peerTtyModeHco:I

    .line 1001
    goto :goto_0

    .line 1003
    :pswitch_2
    sget v0, Lcom/android/internal/R$string;->peerTtyModeVco:I

    .line 1004
    goto :goto_0

    .line 1006
    :pswitch_3
    sget v0, Lcom/android/internal/R$string;->peerTtyModeOff:I

    .line 1007
    goto :goto_0

    .line 995
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 419
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 420
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "unknown connection appeared..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 422
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 424
    :cond_1
    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 621
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 622
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 197
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 199
    :pswitch_1
    const-string v1, "RINGING... (new)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 200
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 208
    :pswitch_3
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "DISCONNECT"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 209
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 213
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 217
    :pswitch_5
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 218
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 222
    :pswitch_6
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 223
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 227
    :pswitch_7
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "Received Display Info notification done event ..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 228
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneDisplayMessage;->dismissMessage()V

    goto :goto_0

    .line 232
    :pswitch_8
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "EVENT_OTA_PROVISION_CHANGE..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 233
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneGlobals;->handleOtaspEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 237
    :pswitch_9
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 238
    :cond_6
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v1, :cond_0

    .line 239
    const/4 v0, 0x5

    .line 240
    .local v0, "toneToPlay":I
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 241
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    goto/16 :goto_0

    .line 246
    .end local v0    # "toneToPlay":I
    :pswitch_a
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 247
    :cond_7
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v1, :cond_0

    .line 248
    const/4 v0, 0x5

    .line 249
    .restart local v0    # "toneToPlay":I
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 250
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    goto/16 :goto_0

    .line 255
    .end local v0    # "toneToPlay":I
    :pswitch_b
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "PHONE_SUPP_SERVICE_FAILED..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 256
    :cond_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 260
    :pswitch_c
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "Received PHONE_TTY_MODE_RECEIVED event"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 261
    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onTtyModeReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 1098
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1099
    :cond_0
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 1100
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 478
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    .line 482
    return-void
.end method

.method public updatePhoneStateListeners()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 936
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 939
    .local v4, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 940
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 941
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 942
    .local v3, "subId":I
    if-eqz v4, :cond_1

    invoke-direct {p0, v4, v3}, Lcom/android/phone/CallNotifier;->containsSubId(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 944
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5, v3, v8}, Lcom/android/phone/NotificationMgr;->updateMwi(IZ)V

    .line 945
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5, v3, v8}, Lcom/android/phone/NotificationMgr;->updateCfi(IZ)V

    .line 948
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v5, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 950
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 954
    .end local v3    # "subId":I
    :cond_2
    if-nez v4, :cond_4

    .line 969
    :cond_3
    return-void

    .line 959
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 960
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 961
    .restart local v3    # "subId":I
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 962
    new-instance v2, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;-><init>(Lcom/android/phone/CallNotifier;I)V

    .line 963
    .local v2, "listener":Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v6, 0xc

    invoke-virtual {v5, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 966
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    .end local v2    # "listener":Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
