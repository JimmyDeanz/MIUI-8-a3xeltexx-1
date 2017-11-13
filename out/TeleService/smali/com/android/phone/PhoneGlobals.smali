.class public Lcom/android/phone/PhoneGlobals;
.super Landroid/content/ContextWrapper;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneGlobals$2;,
        Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$WakeState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static mDockState:I

.field private static sMe:Lcom/android/phone/PhoneGlobals;

.field static sVoiceCapable:Z


# instance fields
.field private bluetoothManager:Lcom/android/phone/BluetoothManager;

.field callController:Lcom/android/phone/CallController;

.field private callGatewayManager:Lcom/android/phone/CallGatewayManager;

.field private callStateMonitor:Lcom/android/phone/CallStateMonitor;

.field callerInfoCache:Lcom/android/phone/CallerInfoCache;

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field configLoader:Lcom/android/phone/CarrierConfigLoader;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mDataDisconnectedDueToRoaming:Z

.field mHandler:Landroid/os/Handler;

.field private mIsSimPinEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldRestoreMuteOnInCallResume:Z

.field private mUpdateLock:Landroid/os/UpdateLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

.field notificationMgr:Lcom/android/phone/NotificationMgr;

.field notifier:Lcom/android/phone/CallNotifier;

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field public phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field public simActivationManager:Lcom/android/services/telephony/activation/SimActivationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    .line 159
    sput v0, Lcom/android/phone/PhoneGlobals;->mDockState:I

    .line 160
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mDataDisconnectedDueToRoaming:Z

    .line 180
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 182
    sget-object v0, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    .line 193
    new-instance v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lcom/android/phone/PhoneGlobals$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$1;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    .line 320
    sput-object p0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    .line 321
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/BluetoothManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneGlobals;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mDataDisconnectedDueToRoaming:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneGlobals;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mDataDisconnectedDueToRoaming:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneGlobals;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->initForNewRadioTechnology(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/PhoneGlobals;
    .locals 2

    .prologue
    .line 475
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No PhoneGlobals here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static getInstanceIfPrimary()Lcom/android/phone/PhoneGlobals;
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method public static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 499
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 909
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 910
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 911
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 912
    .local v1, "ss":Landroid/telephony/ServiceState;
    if-eqz v1, :cond_0

    .line 913
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 914
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3, v2}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    .line 917
    .end local v1    # "ss":Landroid/telephony/ServiceState;
    .end local v2    # "state":I
    :cond_0
    return-void
.end method

.method private initForNewRadioTechnology(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 775
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PhoneApp"

    const-string v4, "initForNewRadioTechnology..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 778
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->clearOtaState()V

    .line 783
    :cond_2
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 784
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->callStateMonitor:Lcom/android/phone/CallStateMonitor;

    invoke-virtual {v3}, Lcom/android/phone/CallStateMonitor;->updateAfterRadioTechnologyChange()V

    .line 787
    if-nez v0, :cond_5

    move-object v1, v2

    .line 788
    .local v1, "sim":Lcom/android/internal/telephony/IccCard;
    :goto_0
    if-eqz v1, :cond_4

    .line 789
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "PhoneApp"

    const-string v4, "Update registration for ICC status..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_3
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-interface {v1, v3, v4, v2}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 794
    :cond_4
    return-void

    .line 787
    .end local v1    # "sim":Lcom/android/internal/telephony/IccCard;
    :cond_5
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    goto :goto_0
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 770
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 771
    .local v0, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 772
    return-void
.end method


# virtual methods
.method public clearMwiIndicator(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/NotificationMgr;->updateMwi(IZ)V

    .line 965
    return-void
.end method

.method public clearOtaState()V
    .locals 2

    .prologue
    .line 933
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- clearOtaState ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 936
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "  - clearOtaState clears OTA screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_1
    return-void
.end method

.method public dismissOtaDialogs()V
    .locals 2

    .prologue
    .line 942
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- dismissOtaDialogs ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 945
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_1
    return-void
.end method

.method getBluetoothManager()Lcom/android/phone/BluetoothManager;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    return-object v0
.end method

.method getCallManager()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method public getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->configLoader:Lcom/android/phone/CarrierConfigLoader;

    invoke-virtual {v0, p1}, Lcom/android/phone/CarrierConfigLoader;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method handleOtaspDisconnect()V
    .locals 2

    .prologue
    .line 565
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1

    .line 570
    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect: otaUtils is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaspDisconnect()V

    goto :goto_0
.end method

.method handleOtaspEvent(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 547
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaspEvent(message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1

    .line 552
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaEvents: got an event but otaUtils is null! message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsSimPinEnabled:Z

    return v0
.end method

.method public onCreate()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 331
    .local v9, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/internal/R$bool;->config_voice_capable:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sput-boolean v10, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    .line 338
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    if-nez v10, :cond_2

    .line 340
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 343
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/android/phone/TelephonyDebugService;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 346
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 347
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v8, v0, v4

    .line 348
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10, v8}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 347
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 353
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-static {p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 355
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xe

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 358
    new-instance v10, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v10}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 359
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 362
    const-string v10, "power"

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    .line 363
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const/16 v11, 0x1a

    const-string v12, "PhoneApp"

    invoke-virtual {v10, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 365
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const v11, 0x20000001

    const-string v12, "PhoneApp"

    invoke-virtual {v10, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 368
    const-string v10, "keyguard"

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/KeyguardManager;

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 372
    const-string v10, "power"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 377
    new-instance v10, Landroid/os/UpdateLock;

    const-string v11, "phone"

    invoke-direct {v10, v11}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    .line 379
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_1

    const-string v10, "PhoneApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate: mUpdateLock: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_1
    new-instance v2, Lcom/android/phone/CallLogger;

    new-instance v10, Lcom/android/phone/common/CallLogAsync;

    invoke-direct {v10}, Lcom/android/phone/common/CallLogAsync;-><init>()V

    invoke-direct {v2, p0, v10}, Lcom/android/phone/CallLogger;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/common/CallLogAsync;)V

    .line 383
    .local v2, "callLogger":Lcom/android/phone/CallLogger;
    invoke-static {}, Lcom/android/phone/CallGatewayManager;->getInstance()Lcom/android/phone/CallGatewayManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->callGatewayManager:Lcom/android/phone/CallGatewayManager;

    .line 388
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->callGatewayManager:Lcom/android/phone/CallGatewayManager;

    invoke-static {p0, v2, v10}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallGatewayManager;)Lcom/android/phone/CallController;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    .line 394
    invoke-static {p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 397
    new-instance v10, Lcom/android/phone/CallStateMonitor;

    iget-object v11, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v10, v11}, Lcom/android/phone/CallStateMonitor;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->callStateMonitor:Lcom/android/phone/CallStateMonitor;

    .line 400
    new-instance v10, Lcom/android/phone/BluetoothManager;

    invoke-direct {v10}, Lcom/android/phone/BluetoothManager;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    .line 402
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 404
    invoke-static {p0}, Lcom/android/phone/CarrierConfigLoader;->init(Landroid/content/Context;)Lcom/android/phone/CarrierConfigLoader;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->configLoader:Lcom/android/phone/CarrierConfigLoader;

    .line 410
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->callStateMonitor:Lcom/android/phone/CallStateMonitor;

    iget-object v11, p0, Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-static {p0, v2, v10, v11}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;Lcom/android/phone/CallStateMonitor;Lcom/android/phone/BluetoothManager;)Lcom/android/phone/CallNotifier;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 412
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtils;->registerIccStatus(Landroid/os/Handler;I)V

    .line 415
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v11, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x34

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 421
    new-instance v6, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 423
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v10, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v10, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v10, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v10, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v6}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 432
    const v10, 0x7f060027

    invoke-static {p0, v10, v14}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 434
    const v10, 0x7f060006

    invoke-static {p0, v10, v14}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 439
    iget-object v10, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 442
    .end local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .end local v2    # "callLogger":Lcom/android/phone/CallLogger;
    .end local v4    # "i$":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "len$":I
    :cond_2
    new-instance v10, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v10}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 443
    new-instance v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v10}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 444
    new-instance v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v10}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 445
    new-instance v10, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v10}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 447
    new-instance v10, Lcom/android/services/telephony/activation/SimActivationManager;

    invoke-direct {v10}, Lcom/android/services/telephony/activation/SimActivationManager;-><init>()V

    iput-object v10, p0, Lcom/android/phone/PhoneGlobals;->simActivationManager:Lcom/android/services/telephony/activation/SimActivationManager;

    .line 450
    const-string v10, "content://icc/adn"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 453
    iput-boolean v14, p0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    .line 459
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 460
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "hearing_aid"

    invoke-static {v10, v11, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 464
    .local v3, "hac":I
    const-string v10, "audio"

    invoke-virtual {p0, v10}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 465
    .local v1, "audioManager":Landroid/media/AudioManager;
    const-string v11, "HACSetting"

    const/4 v10, 0x1

    if-ne v3, v10, :cond_4

    const-string v10, "ON"

    :goto_1
    invoke-virtual {v1, v11, v10}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "hac":I
    :cond_3
    return-void

    .line 465
    .restart local v1    # "audioManager":Landroid/media/AudioManager;
    .restart local v3    # "hac":I
    :cond_4
    const-string v10, "OFF"

    goto :goto_1
.end method

.method public refreshMwiIndicator(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->refreshMwi(I)V

    .line 956
    return-void
.end method

.method requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V
    .locals 2
    .param p1, "ws"    # Lcom/android/phone/PhoneGlobals$WakeState;

    .prologue
    .line 625
    monitor-enter p0

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    if-eq v0, p1, :cond_2

    .line 627
    sget-object v0, Lcom/android/phone/PhoneGlobals$2;->$SwitchMap$com$android$phone$PhoneGlobals$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 647
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 655
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    .line 657
    :cond_2
    monitor-exit p0

    .line 658
    return-void

    .line 631
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 632
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 639
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 640
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    .line 591
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 608
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    .line 224
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v0, :cond_0

    .line 738
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 744
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    goto :goto_0
.end method

.method updateWakeState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 685
    iget-object v7, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 695
    .local v4, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v7, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 712
    .local v2, "isSpeakerInUse":Z
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v7, :cond_2

    move v1, v5

    .line 713
    .local v1, "isRinging":Z
    :goto_1
    iget-object v7, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_3

    move v0, v5

    .line 714
    .local v0, "isDialing":Z
    :goto_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    move v3, v5

    .line 716
    .local v3, "keepScreenOn":Z
    :goto_3
    if-eqz v3, :cond_5

    sget-object v5, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 717
    return-void

    .end local v0    # "isDialing":Z
    .end local v1    # "isRinging":Z
    .end local v2    # "isSpeakerInUse":Z
    .end local v3    # "keepScreenOn":Z
    :cond_1
    move v2, v6

    .line 695
    goto :goto_0

    .restart local v2    # "isSpeakerInUse":Z
    :cond_2
    move v1, v6

    .line 712
    goto :goto_1

    .restart local v1    # "isRinging":Z
    :cond_3
    move v0, v6

    .line 713
    goto :goto_2

    .restart local v0    # "isDialing":Z
    :cond_4
    move v3, v6

    .line 714
    goto :goto_3

    .line 716
    .restart local v3    # "keepScreenOn":Z
    :cond_5
    sget-object v5, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    goto :goto_4
.end method

.method wakeUpScreen()V
    .locals 4

    .prologue
    .line 665
    monitor-enter p0

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    if-ne v0, v1, :cond_1

    .line 667
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v1, "android.phone:WAKE"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 670
    :cond_1
    monitor-exit p0

    .line 671
    return-void

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
