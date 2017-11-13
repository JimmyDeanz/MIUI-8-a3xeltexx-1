.class public Lcom/samsung/android/server/wifi/SoftApStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    }
.end annotation


# static fields
.field static final BASE:I = 0x20000

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_REQUEST_AP_TX_POWER:I = 0x20132

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_RESPONSE_AP_TX_POWER:I = 0x20133

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field static final CMD_SET_AP_TX_POWER:I = 0x20131

.field static final CMD_SOFTAP_INTERFACE_STATE:I = 0x20134

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field public static final CMD_WIFI_STARTED_FROM_MHS:I = 0x20135

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static DBG:Z = false

.field private static DBGMHS:Z = false

.field static final FIRST_MHSIP_RANGE:I = 0x1

.field static final SECOND_MHSIP_RANGE:I = 0x2

.field public static final SUPPORTMOBILEAPONTRIGGER_CSC:Z

.field public static final SUPPORTMOBILEAPONTRIGGER_SPF:Z = false

.field private static final TAG:Ljava/lang/String; = "SoftApStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field static final WIFI_FIRMWARE_TYPE_AP:I = 0x1

.field static final WIFI_FIRMWARE_TYPE_STA:I


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mFirmwareType:I

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceState:I

.field private mIsProvisioningNeeded:Z

.field private mLastDriverErrorMessage:I

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPending_StopApCmd:Z

.field private mPreviousTetherData:I

.field private mRVFMode:I

.field private mSoftApReset:Z

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mUntetheringState:Lcom/android/internal/util/State;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiState:I

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWlanInterfaceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBGMHS:Z

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mModemPowerBackOff:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->SUPPORTMOBILEAPONTRIGGER_CSC:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "WifiSM"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wlanInterface"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "SoftApStateMachine"

    invoke-direct {p0, v5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsProvisioningNeeded:Z

    iput v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLastDriverErrorMessage:I

    iput v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiState:I

    iput v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I

    iput v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I

    iput v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPreviousTetherData:I

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    new-instance v5, Landroid/net/NetworkInfo;

    const-string v6, "WIFI"

    const-string v7, ""

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWlanInterfaceName:Ljava/lang/String;

    const-string v5, "swlan0"

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;

    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "batterystats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/server/wifi/SoftApStateMachine$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$1;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/server/wifi/SoftApStateMachine$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$2;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.samsung.android.net.wifi.softap_interface"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/server/wifi/SoftApStateMachine$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$3;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setLogRecSize(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setLogOnlyTransitions(Z)V

    sget-boolean v5, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setDbg(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->start()V

    const/4 v1, 0x0

    .local v1, "provisionApp":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "tetheringProvisionApp":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v5, v1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsProvisioningNeeded:Z

    return-void

    :cond_1
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I

    return p1
.end method

.method static synthetic access$1000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLastDriverErrorMessage:I

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/server/wifi/SoftApStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->isMobileApOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/server/wifi/SoftApStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->checkMobileApWifiIp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$4204(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$4300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic access$5300(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPreviousTetherData:I

    return v0
.end method

.method static synthetic access$5802(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPreviousTetherData:I

    return p1
.end method

.method static synthetic access$5900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SoftApStateMachine"

    const-string v2, "checkAndSetConnectivityInstance - NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkMobileApWifiChannel()Z
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .local v1, "tempWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v0, -0x1

    .local v0, "operatingWifiChannel":I
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getWifiConnectedFrequency()I

    move-result v2

    .local v2, "wifiFrequency":I
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getWifiConnectedBand(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getMobileApBand(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string v3, "Wifi and MobileAp are in same band. Now we verify for channel"

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getWifiConnectedChannel(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-eq v3, v0, :cond_0

    const-string v3, "Wifi and MobileAp are in different channel. Reset MobileAp with Wifi Channel"

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkMobileApWifiIp()Z
    .locals 8

    .prologue
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .local v4, "wifiInfoObject":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .local v5, "wlanIpAddress":I
    const/4 v3, 0x0

    .local v3, "ifcg":Landroid/net/InterfaceConfiguration;
    const/4 v1, 0x0

    .local v1, "bcmIpAddress":I
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "swlan0"

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "bcmInetAddress":Ljava/net/InetAddress;
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "bcmInetAddress":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    invoke-direct {p0, v5, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->compareWlanBcmIPSubnet(II)Z

    move-result v6

    return v6

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in getting swlan0 interface config:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private compareWlanBcmIPSubnet(II)Z
    .locals 4
    .param p1, "wlanIPAddress"    # I
    .param p2, "bcmIPAddress"    # I

    .prologue
    const-string v2, "255.255.255.0"

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "maskInetAddress":Ljava/net/InetAddress;
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "maskInetAddress":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v1

    .local v1, "maskIpAddress":I
    and-int v2, p1, v1

    and-int v3, p2, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMobileApBand(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x2

    .local v0, "band":I
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    const/16 v2, 0xe

    if-gt v1, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getWifiConnectedBand(I)I
    .locals 1
    .param p1, "WifiFrequency"    # I

    .prologue
    const/16 v0, 0x96c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9b4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getWifiConnectedChannel(I)I
    .locals 5
    .param p1, "frequency"    # I

    .prologue
    const/16 v4, 0xf

    const/4 v1, -0x1

    .local v1, "channel":I
    const/16 v0, 0x96c

    .local v0, "baseFrequency":I
    sub-int v2, p1, v0

    .local v2, "freqDiff":I
    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v1, v3, 0x1

    const/16 v3, 0xd

    if-le v1, v3, :cond_2

    if-gt v1, v4, :cond_2

    const/16 v1, 0xe

    :cond_2
    if-le v1, v4, :cond_0

    const/16 v1, 0x95

    goto :goto_0
.end method

.method private getWifiConnectedFrequency()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .local v0, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    :cond_0
    return v1
.end method

.method private ipAddressFamilyTobeUsed()I
    .locals 8

    .prologue
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .local v3, "wifiInfoObject":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .local v5, "wifiIpAddress":I
    const-string v7, "255.255.255.0"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .local v1, "maskInet":Ljava/net/InetAddress;
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "maskInet":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v2

    .local v2, "maskInt":I
    and-int v4, v5, v2

    .local v4, "wifiIp":I
    invoke-static {v4}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    .local v6, "wifiIpFamily":Ljava/net/InetAddress;
    const-string v7, "192.168.43.0"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "ip43Family":Ljava/net/InetAddress;
    invoke-virtual {v6, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private isMobileApOn()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApState()I

    move-result v0

    .local v0, "wifiApState":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .local v0, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->checkAndSetConnectivityInstance()V

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .local v6, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "intf":Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .local v5, "regex":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "regex":Ljava/lang/String;
    :goto_1
    return v7

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "intf":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "regex":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private sendStickyBroadcastFromSoftApStateMachine(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send sticky broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendStickyBroadcastFromSoftApStateMachineForCurrentUser(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send stciky broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    const/4 v8, 0x0

    .local v8, "wifiAvailable":Z
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->checkAndSetConnectivityInstance()V

    iget-object v11, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    .local v9, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "intf":Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x0

    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v11, "SoftApStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startTethering, mRVFMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "intf = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->isWifiConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->ipAddressFamilyTobeUsed()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    new-instance v11, Landroid/net/LinkAddress;

    const-string v12, "192.168.60.1"

    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v11}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    const-string v11, "SoftApStateMachine"

    const-string v12, "startTethering, setInterfaceUp swlan0 = 192.168.60.1 Second Ip Range"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    iget-object v11, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v5}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error tethering on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v5    # "intf":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :cond_2
    :goto_2
    return v10

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v5    # "intf":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v11, Landroid/net/LinkAddress;

    const-string v12, "192.168.43.1"

    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v11}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    const-string v11, "SoftApStateMachine"

    const-string v12, "startTethering, setInterfaceUp swlan0 = 192.168.43.1 First Ip Range"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    const/4 v10, 0x1

    goto :goto_2

    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private stopTethering()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->checkAndSetConnectivityInstance()V

    const/4 v1, 0x0

    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Untether initiate failed!"

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoftApReset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRVFMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreviousTetherData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPreviousTetherData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInterfaceState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastDriverErrorMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLastDriverErrorMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    if-lez p1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    goto :goto_0
.end method

.method public getRvfMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    return v0
.end method

.method public setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    if-eqz p2, :cond_0

    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x20018

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setRvfMode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    return-void
.end method

.method public setSoftApReset(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z

    return-void
.end method

.method public setWifiApConfigTxPower(I)V
    .locals 2
    .param p1, "txPowerMode"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20131

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setWifiApConfigurationToDefault()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20020

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    return-void
.end method

.method public setWifiApState(II)V
    .locals 12
    .param p1, "wifiApState"    # I
    .param p2, "reason"    # I

    .prologue
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .local v7, "previousWifiApState":I
    const/16 v9, 0xd

    if-ne p1, v9, :cond_9

    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-boolean v9, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWifiApState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v9, "/sdcard/mhsbackoff"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "file":Ljava/io/File;
    const/4 v8, 0x0

    .local v8, "tempBackOff":Z
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :cond_2
    sget-boolean v9, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBGMHS:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MHS SPF backoff : false MHS CSC backoff : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/samsung/android/server/wifi/SoftApStateMachine;->SUPPORTMOBILEAPONTRIGGER_CSC:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " DBG : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBGMHS:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tempBackOff : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    :cond_3
    sget-boolean v9, Lcom/samsung/android/server/wifi/SoftApStateMachine;->SUPPORTMOBILEAPONTRIGGER_CSC:Z

    if-eqz v9, :cond_4

    const-string v9, ""

    const-string v10, "vold.encrypt_progress"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    sget-boolean v9, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBGMHS:Z

    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    :cond_5
    const/16 v9, 0xd

    if-eq p1, v9, :cond_6

    const/16 v9, 0xb

    if-eq p1, v9, :cond_6

    const/16 v9, 0xe

    if-ne p1, v9, :cond_8

    :cond_6
    const/4 v0, 0x0

    .local v0, "TRANSMIT_POWER_DEFAULT":I
    const/4 v1, 0x4

    .local v1, "TRANSMIT_POWER_MOBILEHOTSPOT_ENABLED":I
    const/4 v2, 0x0

    .local v2, "backOffState":I
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .local v6, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v9, "ril.backoffstate"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v9, "SoftApStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ril.backoffstate = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xd

    if-ne p1, v9, :cond_a

    and-int/lit16 v9, v2, 0xfb

    or-int/lit8 v2, v9, 0x4

    :cond_7
    :goto_1
    const-string v9, "SoftApStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", backOffState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-interface {v6, v2}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "TRANSMIT_POWER_DEFAULT":I
    .end local v1    # "TRANSMIT_POWER_MOBILEHOTSPOT_ENABLED":I
    .end local v2    # "backOffState":I
    .end local v6    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    :goto_2
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "intent":Landroid/content/Intent;
    const/high16 v9, 0x4000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v9, "wifi_state"

    invoke-virtual {v5, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "previous_wifi_state"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsProvisioningNeeded:Z

    if-eqz v9, :cond_c

    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendStickyBroadcastFromSoftApStateMachineForCurrentUser(Landroid/content/Intent;)V

    :goto_3
    return-void

    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "tempBackOff":Z
    :cond_9
    const/16 v9, 0xb

    if-ne p1, v9, :cond_0

    :try_start_2
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v9, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "TRANSMIT_POWER_DEFAULT":I
    .restart local v1    # "TRANSMIT_POWER_MOBILEHOTSPOT_ENABLED":I
    .restart local v2    # "backOffState":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v8    # "tempBackOff":Z
    :cond_a
    const/16 v9, 0xb

    if-eq p1, v9, :cond_b

    const/16 v9, 0xe

    if-ne p1, v9, :cond_7

    :cond_b
    and-int/lit16 v2, v2, 0xfb

    goto :goto_1

    :catch_1
    move-exception v3

    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v9, "SoftApStateMachine"

    const-string v10, "RemoteException occurs in setTransmitPower"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "TRANSMIT_POWER_DEFAULT":I
    .end local v1    # "TRANSMIT_POWER_MOBILEHOTSPOT_ENABLED":I
    .end local v2    # "backOffState":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_c
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendStickyBroadcastFromSoftApStateMachine(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method public syncGetWifiApConfigTxPower()I
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x20132

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .local v1, "txPowerMode":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    return v1
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "ret":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    :pswitch_4
    const-string v0, "failed"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncIsWifiApStateInitial()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
