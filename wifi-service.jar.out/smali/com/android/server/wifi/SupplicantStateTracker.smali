.class Lcom/android/server/wifi/SupplicantStateTracker;
.super Lcom/android/internal/util/StateMachine;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStateTracker$1;,
        Lcom/android/server/wifi/SupplicantStateTracker$DormantState;,
        Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;,
        Lcom/android/server/wifi/SupplicantStateTracker$ScanState;,
        Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;,
        Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MAX_RETRIES_ON_ASSOCIATION_REJECT:I = 0xa

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"


# instance fields
.field private mAssociationRejectCount:I

.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthenticationFailuresCount:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCompletedState:Lcom/android/internal/util/State;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDisconnectState:Lcom/android/internal/util/State;

.field private final mDormantState:Lcom/android/internal/util/State;

.field private final mHandshakeState:Lcom/android/internal/util/State;

.field private final mInactiveState:Lcom/android/internal/util/State;

.field private mNetworksDisabledDuringConnect:Z

.field private final mScanState:Lcom/android/internal/util/State;

.field private final mUninitializedState:Lcom/android/internal/util/State;

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/os/Handler;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wcs"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "t"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 102
    const-string v0, "SupplicantStateTracker"

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 62
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    .line 63
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    .line 67
    iput-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 80
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    .line 81
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 82
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    .line 83
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    .line 84
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$ScanState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$ScanState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    .line 85
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    .line 86
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    .line 87
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DormantState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DormantState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    .line 104
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 106
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 107
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 118
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setLogRecSize(I)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setLogOnlyTransitions(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->start()V

    .line 122
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/SupplicantStateTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/server/wifi/StateChangeResult;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p1
.end method

.method private handleNetworkConnectionFailure(II)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableReason"    # I

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkConnectionFailure netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNetworksDisabledDuringConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 138
    return-void
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    .locals 11
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "failedAuth"    # Z

    .prologue
    .line 190
    sget-object v0, Lcom/android/server/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 207
    const-string v0, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown supplicant state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v10, 0x0

    .line 212
    .local v10, "supplState":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, v10, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiSupplicantStateChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 218
    :goto_1
    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 220
    .local v1, "uri":Landroid/net/Uri;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "getPromptCredentialsEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 222
    .local v7, "cr":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 224
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 225
    const-string v0, "getPromptCredentialsEnabled"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 226
    .local v6, "columnIndex":I
    if-ltz v6, :cond_0

    .line 227
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 252
    .end local v6    # "columnIndex":I
    .end local v7    # "cr":Landroid/database/Cursor;
    :goto_2
    return-void

    .line 191
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v10    # "supplState":I
    :pswitch_0
    const/4 v10, 0x1

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 193
    .end local v10    # "supplState":I
    :pswitch_1
    const/4 v10, 0x2

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 194
    .end local v10    # "supplState":I
    :pswitch_2
    const/4 v10, 0x3

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 195
    .end local v10    # "supplState":I
    :pswitch_3
    const/4 v10, 0x4

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 196
    .end local v10    # "supplState":I
    :pswitch_4
    const/4 v10, 0x5

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 197
    .end local v10    # "supplState":I
    :pswitch_5
    const/4 v10, 0x6

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 198
    .end local v10    # "supplState":I
    :pswitch_6
    const/4 v10, 0x7

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 200
    .end local v10    # "supplState":I
    :pswitch_7
    const/16 v10, 0x8

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 201
    .end local v10    # "supplState":I
    :pswitch_8
    const/16 v10, 0x9

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 202
    .end local v10    # "supplState":I
    :pswitch_9
    const/16 v10, 0xa

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 203
    .end local v10    # "supplState":I
    :pswitch_a
    const/16 v10, 0xb

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 204
    .end local v10    # "supplState":I
    :pswitch_b
    const/16 v10, 0xc

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 205
    .end local v10    # "supplState":I
    :pswitch_c
    const/4 v10, 0x0

    .restart local v10    # "supplState":I
    goto :goto_0

    .line 234
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "columnIndex":I
    .restart local v7    # "cr":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 242
    .end local v6    # "columnIndex":I
    .end local v7    # "cr":Landroid/database/Cursor;
    :cond_1
    :goto_3
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v0, 0x24000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    const-string v0, "newState"

    invoke-virtual {v9, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    if-eqz p2, :cond_2

    .line 247
    const-string v0, "supplicantError"

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 231
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v7    # "cr":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 234
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 237
    .end local v7    # "cr":Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 238
    .local v8, "e":Landroid/database/CursorWindowAllocationException;
    invoke-virtual {v8}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V

    goto :goto_3

    .line 234
    .end local v8    # "e":Landroid/database/CursorWindowAllocationException;
    .restart local v7    # "cr":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_5 .. :try_end_5} :catch_1

    .line 213
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "cr":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V
    .locals 4
    .param p1, "stateChangeResult"    # Lcom/android/server/wifi/StateChangeResult;

    .prologue
    .line 141
    iget-object v0, p1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 143
    .local v0, "supState":Landroid/net/wifi/SupplicantState;
    sget-boolean v1, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    sget-object v1, Lcom/android/server/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 183
    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown supplicant state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    :pswitch_0
    return-void

    .line 147
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 149
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->removeFromConfiguredNetworks()V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->addToConfiguredNetworks()V

    .line 165
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 169
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->addToConfiguredNetworks()V

    .line 170
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 176
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 180
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 481
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthenticationFailuresCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthFailureInSupplicantBroadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworksDisabledDuringConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAssocRejectCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 487
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 90
    if-lez p1, :cond_0

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    goto :goto_0
.end method

.method public getSupplicantStateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
