.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.super Lcom/android/internal/util/StateMachine;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;
    }
.end annotation


# static fields
.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APN_AVAILABLE:I = 0x3f0

.field private static final EVENT_APN_UNAVAILABLE:I = 0x3f1

.field private static final EVENT_BASE:I = 0x3e8

.field private static final EVENT_CONNECTED:I = 0x44d

.field private static final EVENT_CONNECTION_ENABLED_CHANGED:I = 0x3ee

.field private static final EVENT_CONNECTIVITY_ACTION:I = 0x3e9

.field private static final EVENT_DATABASE_CHANGED:I = 0x3ea

.field private static final EVENT_DATA_ENABLED_CHANGED:I = 0x3f3

.field private static final EVENT_DEFAULT_NETWORK_CHANGED:I = 0x3f2

.field private static final EVENT_DISCONNECTED:I = 0x44e

.field private static final EVENT_ENABLE_CHANGED:I = 0x3eb

.field private static final EVENT_LOCALE_CHANGED:I = 0x3f4

.field private static final EVENT_MOBILE_OFFLOAD_CHANGED:I = 0x3ec

.field private static final EVENT_NOTIFICATION_DISMISSED:I = 0x3f7

.field private static final EVENT_ROAMING_STATE_CHANGED:I = 0x3ef

.field private static final EVENT_USER_BACKGROUND:I = 0x3f6

.field private static final EVENT_USER_FOREGROUND:I = 0x3f5

.field private static final EVENT_WIFI_OFFLOAD_CHANGED:I = 0x3ed

.field private static final MAX_CONTAINERS:I = 0xa


# instance fields
.field private mApn:Ljava/lang/String;

.field private mApnAvailable:Z

.field private mBlockRulesEnabled:Z

.field private mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

.field private mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

.field private mConnectionEnabled:Z

.field private mDataEnabled:Z

.field private mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

.field private mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

.field private mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

.field private mEnabled:Z

.field private mEntSubId:I

.field private mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

.field private mIface:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNetId:I

.field private mNetworkType:I

.field private mNotifying:Z

.field private mOffloadToMobile:Z

.field private mOffloadToWifi:Z

.field private mRequest:Landroid/net/NetworkRequest;

.field private mRoamingDataAllowed:Z

.field private mRouteRulesEnabled:Z

.field private mSimState:I

.field private mState:Landroid/net/NetworkInfo$State;

.field private mUidRangeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 4
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 717
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntConnectivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    .line 695
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    .line 703
    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    .line 704
    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    .line 705
    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    .line 706
    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    .line 707
    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    .line 708
    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    .line 711
    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    .line 712
    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    .line 713
    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRouteRulesEnabled:Z

    .line 714
    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockRulesEnabled:Z

    .line 715
    iput v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    .line 1323
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    .line 1519
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    .line 1643
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    .line 1771
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    .line 1819
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    .line 719
    iput-object p0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;

    .line 720
    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;
    invoke-static {p1, p3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Looper;)Landroid/os/Looper;

    .line 721
    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    .line 722
    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->connectivityType(Ljava/lang/String;)I
    invoke-static {p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    .line 723
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Looper;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mHandler:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;
    invoke-static {p1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1402(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    .line 724
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    .line 725
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v1

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mHandler:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;
    invoke-static {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/net/IConnectivityManager;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    .line 726
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;)V

    .line 727
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 728
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 729
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 730
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 731
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 732
    iput-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    .line 733
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->initSettingsAndUids()V

    .line 734
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->contains(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEntRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Bundle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # I

    .prologue
    .line 665
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onEntNetworkChanged(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 665
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onConnect(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->changeUidRangeRules(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSettings()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onDisconnect()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7902(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # I

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDefaultRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToMobile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Bundle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # I

    .prologue
    .line 665
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onDefaultNetworkChanged(Landroid/os/Bundle;I)V

    return-void
.end method

.method private changeUidRangeRules(Z)V
    .locals 9
    .param p1, "connected"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 971
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 972
    .local v3, "newRangeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 973
    .local v1, "delRangeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 974
    .local v0, "addRangeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidRanges()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 975
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 976
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 977
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oldranges - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newRanges - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 980
    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 981
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 982
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "to delete - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 983
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "to add - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 985
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 986
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/UidRange;

    invoke-interface {v1, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/UidRange;

    .line 987
    .local v4, "ranges":[Landroid/net/UidRange;
    if-eqz p1, :cond_3

    .line 988
    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateRouteRules([Landroid/net/UidRange;IZ)V

    .line 995
    .end local v4    # "ranges":[Landroid/net/UidRange;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 996
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/UidRange;

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/UidRange;

    .line 997
    .restart local v4    # "ranges":[Landroid/net/UidRange;
    if-eqz p1, :cond_4

    .line 998
    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateRouteRules([Landroid/net/UidRange;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    .end local v4    # "ranges":[Landroid/net/UidRange;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 1009
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1010
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 1011
    if-nez p1, :cond_5

    .line 1012
    iput-boolean v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockRulesEnabled:Z

    .line 1019
    :cond_2
    :goto_2
    return-void

    .line 990
    .restart local v4    # "ranges":[Landroid/net/UidRange;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToMobile()Z

    move-result v5

    if-nez v5, :cond_0

    .line 991
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateBlockRules([Landroid/net/UidRange;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1005
    .end local v4    # "ranges":[Landroid/net/UidRange;
    :catch_0
    move-exception v2

    .line 1006
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error in changeUidRangeRules "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_1

    .line 1000
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "ranges":[Landroid/net/UidRange;
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToMobile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1001
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateBlockRules([Landroid/net/UidRange;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1014
    .end local v4    # "ranges":[Landroid/net/UidRange;
    :cond_5
    iput-boolean v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRouteRulesEnabled:Z

    goto :goto_2

    .line 1016
    :cond_6
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

    if-nez p1, :cond_2

    .line 1017
    iput-boolean v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockRulesEnabled:Z

    goto :goto_2
.end method

.method private contains(I)Z
    .locals 3
    .param p1, "reqUid"    # I

    .prologue
    .line 1263
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    .line 1264
    .local v1, "uidRange":Landroid/net/UidRange;
    iget v2, v1, Landroid/net/UidRange;->start:I

    if-lt p1, v2, :cond_0

    iget v2, v1, Landroid/net/UidRange;->stop:I

    if-gt p1, v2, :cond_0

    .line 1265
    const/4 v2, 0x1

    .line 1268
    .end local v1    # "uidRange":Landroid/net/UidRange;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enableBlockRules(Ljava/util/Set;Z)V
    .locals 2
    .param p2, "block"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 933
    .local p1, "rangeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    const-string/jumbo v1, "enableBlockRules E"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 934
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/UidRange;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    .line 935
    .local v0, "ranges":[Landroid/net/UidRange;
    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockRulesEnabled:Z

    if-eq v1, p2, :cond_0

    .line 936
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateBlockRules([Landroid/net/UidRange;Z)V

    .line 937
    iput-boolean p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockRulesEnabled:Z

    .line 939
    :cond_0
    const-string/jumbo v1, "enableBlockRules X"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method private enableRouteRules(Ljava/util/Set;IZ)V
    .locals 2
    .param p2, "netId"    # I
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 921
    .local p1, "rangeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    const-string/jumbo v1, "enableRouteRules E"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 922
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/UidRange;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    .line 923
    .local v0, "ranges":[Landroid/net/UidRange;
    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRouteRulesEnabled:Z

    if-eq v1, p3, :cond_0

    .line 924
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateRouteRules([Landroid/net/UidRange;IZ)V

    .line 925
    iput-boolean p3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRouteRulesEnabled:Z

    .line 927
    :cond_0
    const-string/jumbo v1, "enableRouteRules X"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 928
    return-void
.end method

.method private eventToName(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1869
    sparse-switch p1, :sswitch_data_0

    .line 1889
    const-string v0, "UNKNOWN EVENT"

    :goto_0
    return-object v0

    .line 1870
    :sswitch_0
    const-string v0, "EVENT_CONNECTIVITY_ACTION"

    goto :goto_0

    .line 1871
    :sswitch_1
    const-string v0, "EVENT_DATA_ENABLED_CHANGED"

    goto :goto_0

    .line 1872
    :sswitch_2
    const-string v0, "EVENT_ENABLE_CHANGED"

    goto :goto_0

    .line 1873
    :sswitch_3
    const-string v0, "EVENT_DATABASE_CHANGED"

    goto :goto_0

    .line 1874
    :sswitch_4
    const-string v0, "EVENT_CONNECTION_ENABLED_CHANGED"

    goto :goto_0

    .line 1875
    :sswitch_5
    const-string v0, "EVENT_WIFI_OFFLOAD_CHANGED"

    goto :goto_0

    .line 1876
    :sswitch_6
    const-string v0, "EVENT_MOBILE_OFFLOAD_CHANGED"

    goto :goto_0

    .line 1877
    :sswitch_7
    const-string v0, "EVENT_ROAMING_STATE_CHANGED"

    goto :goto_0

    .line 1878
    :sswitch_8
    const-string v0, "EVENT_LOCALE_CHANGED"

    goto :goto_0

    .line 1879
    :sswitch_9
    const-string v0, "EVENT_NOTIFICATION_DISMISSED"

    goto :goto_0

    .line 1880
    :sswitch_a
    const-string v0, "EVENT_DEFAULT_NETWORK_CHANGED"

    goto :goto_0

    .line 1881
    :sswitch_b
    const-string v0, "EVENT_APN_AVAILABLE"

    goto :goto_0

    .line 1882
    :sswitch_c
    const-string v0, "EVENT_APN_UNAVAILABLE"

    goto :goto_0

    .line 1883
    :sswitch_d
    const-string v0, "EVENT_USER_FOREGROUND"

    goto :goto_0

    .line 1884
    :sswitch_e
    const-string v0, "EVENT_USER_BACKGROUND"

    goto :goto_0

    .line 1886
    :sswitch_f
    const-string v0, "EVENT_CONNECTED"

    goto :goto_0

    .line 1887
    :sswitch_10
    const-string v0, "EVENT_DISCONNECTED"

    goto :goto_0

    .line 1869
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_6
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_4
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_b
        0x3f1 -> :sswitch_c
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_1
        0x3f4 -> :sswitch_8
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_9
        0x44d -> :sswitch_f
        0x44e -> :sswitch_10
    .end sparse-switch
.end method

.method private getConnectionEnabled()Z
    .locals 2

    .prologue
    .line 1140
    const-string/jumbo v0, "getConnectionEnabled"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isTurnedOnInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEnabled()Z
    .locals 2

    .prologue
    .line 1107
    const-string/jumbo v0, "getEnabled"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isSplitBillingEnabledInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOffloadToMobile()Z
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x0

    return v0
.end method

.method private getOffloadToWifi()Z
    .locals 2

    .prologue
    .line 1131
    const-string/jumbo v0, "getOffloadToWifi"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isWifiFallbackAllowedInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRoamingDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1149
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v1, v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isRoamingAllowedInternal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return v0

    .line 1153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSettings()V
    .locals 1

    .prologue
    .line 1061
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V

    .line 1062
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    .line 1063
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntSubId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    .line 1064
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    .line 1065
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    .line 1066
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    .line 1067
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    .line 1068
    return-void
.end method

.method private getSystemServices()[I
    .locals 1

    .prologue
    .line 1183
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f5
        0x3fb
    .end array-data
.end method

.method private getUidRanges()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 899
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 900
    .local v1, "ranges":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/UidRange;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUsersRangeSet()Ljava/util/Set;

    move-result-object v4

    .line 901
    .local v4, "userRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 902
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidsForApn(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    .line 903
    .local v3, "singleUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 904
    .local v2, "singleUid":I
    new-instance v5, Landroid/net/UidRange;

    invoke-direct {v5, v2, v2}, Landroid/net/UidRange;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 906
    .end local v2    # "singleUid":I
    :cond_0
    return-object v1
.end method

.method private getUidsForApn(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .param p1, "apn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1160
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1161
    .local v3, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1170
    .local v2, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1171
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getApplicationsForConnectionInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1174
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1175
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1176
    .local v1, "uid":Ljava/lang/Integer;
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1179
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "uid":Ljava/lang/Integer;
    :cond_1
    return-object v3
.end method

.method private getUsersRangeSet()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .prologue
    const v6, 0x186a0

    .line 888
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 889
    .local v2, "userRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 891
    .local v0, "handle":I
    new-instance v3, Landroid/net/UidRange;

    mul-int v4, v0, v6

    add-int/lit16 v4, v4, 0x2710

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 895
    .end local v0    # "handle":I
    :cond_0
    return-object v2
.end method

.method private initSettingsAndUids()V
    .locals 2

    .prologue
    .line 1052
    const-string/jumbo v0, "initSettingsAndUids"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 1053
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSettings()V

    .line 1054
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    .line 1055
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    .line 1056
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1057
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidRanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1058
    return-void
.end method

.method private isAllowed()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1187
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v5

    if-nez v5, :cond_7

    move v1, v3

    .line 1188
    .local v1, "primarySimSlot":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    if-eqz v5, :cond_8

    if-eqz v1, :cond_8

    iget-boolean v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_0
    iget-boolean v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_1
    move v0, v3

    .line 1191
    .local v0, "allowed":Z
    :goto_1
    if-nez v0, :cond_6

    .line 1192
    const-string v2, ""

    .line 1193
    .local v2, "reason":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    if-nez v3, :cond_2

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1196
    :cond_2
    if-nez v1, :cond_3

    .line 1197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - primarySimSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1199
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mOffloadToWifi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - isWifiActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1203
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mOffloadToMobile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - isMobileActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1207
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed due to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V

    .line 1209
    .end local v2    # "reason":Ljava/lang/String;
    :cond_6
    return v0

    .end local v0    # "allowed":Z
    .end local v1    # "primarySimSlot":Z
    :cond_7
    move v1, v4

    .line 1187
    goto/16 :goto_0

    .restart local v1    # "primarySimSlot":Z
    :cond_8
    move v0, v4

    .line 1188
    goto/16 :goto_1
.end method

.method private isApnAvailable()Z
    .locals 6

    .prologue
    .line 1249
    const/4 v0, 0x0

    .line 1251
    .local v0, "available":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1252
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 1253
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    move v1, v0

    .line 1258
    .end local v0    # "available":Z
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .local v1, "available":I
    :goto_0
    return v1

    .line 1255
    .end local v1    # "available":I
    .restart local v0    # "available":Z
    :catch_0
    move-exception v2

    .line 1256
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error iisApnAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    .line 1258
    .restart local v1    # "available":I
    goto :goto_0

    .end local v1    # "available":I
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    move v1, v0

    .restart local v1    # "available":I
    goto :goto_0
.end method

.method private isDataEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1241
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v2, v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1243
    .local v0, "primSimSubId":[I
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v2, v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1245
    .end local v0    # "primSimSubId":[I
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v1, v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private isDataPossible()Z
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1213
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isApnAvailable()Z

    move-result v0

    .line 1214
    .local v0, "available":Z
    iget v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    if-ne v3, v4, :cond_6

    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    .line 1216
    .local v1, "possible":Z
    :goto_0
    if-nez v1, :cond_5

    .line 1217
    const-string v2, ""

    .line 1218
    .local v2, "reason":Ljava/lang/String;
    iget v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    if-eq v3, v4, :cond_0

    .line 1219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mSimState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1221
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-nez v3, :cond_1

    .line 1222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mDataEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1224
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    if-nez v3, :cond_2

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mConnectionEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1227
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    if-nez v3, :cond_3

    .line 1228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mRoamingDataAllowed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1230
    :cond_3
    if-nez v0, :cond_4

    .line 1231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - isApnAvailable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1233
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not possible due to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V

    .line 1235
    .end local v2    # "reason":Ljava/lang/String;
    :cond_5
    return v1

    .line 1214
    .end local v1    # "possible":Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private isDefaultRequest(I)Z
    .locals 1
    .param p1, "reqId"    # I

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isValidRequest(I)Z

    move-result v0

    return v0
.end method

.method private isEntRequest(I)Z
    .locals 1
    .param p1, "reqId"    # I

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOffloadedToMobile()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOffloadedToWifi()Z
    .locals 1

    .prologue
    .line 1272
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onConnect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 1023
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    .line 1024
    iput p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnect: uid ranges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    iget v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableRouteRules(Ljava/util/Set;IZ)V

    .line 1028
    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is CONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error onConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1023
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onDefaultNetworkChanged(Landroid/os/Bundle;I)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "notifyType"    # I

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->onNetworkChanged(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    .line 749
    :cond_0
    return-void
.end method

.method private declared-synchronized onDisconnect()V
    .locals 4

    .prologue
    .line 1038
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on disconnect: uid ranges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 1039
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    iget v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableRouteRules(Ljava/util/Set;IZ)V

    .line 1040
    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is DISCONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error onDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1038
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onEntNetworkChanged(Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "notifyType"    # I

    .prologue
    .line 756
    packed-switch p2, :pswitch_data_0

    .line 790
    :goto_0
    return-void

    .line 760
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->callbackToName(I)Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :pswitch_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    .line 766
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendDisconnectedEvent(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 772
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->callbackToName(I)Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_0
    :pswitch_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 779
    .local v1, "link":Landroid/net/LinkProperties;
    if-eqz v1, :cond_1

    .line 780
    const-class v2, Landroid/net/LinkProperties;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v1    # "link":Landroid/net/LinkProperties;
    :cond_1
    :goto_1
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendConnectedEvent(Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error in ConnectivityService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private sendConnectedEvent(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "notifyType"    # I

    .prologue
    .line 793
    const-class v2, Landroid/net/Network;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 794
    .local v1, "n":Landroid/net/Network;
    const-class v2, Landroid/net/LinkProperties;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 795
    .local v0, "link":Landroid/net/LinkProperties;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->hasIPv6Address(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 798
    const-string v2, "EntConnectivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending EVENT_CONNECTED for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->callbackToName(I)Ljava/lang/String;
    invoke-static {v4, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/16 v2, 0x44d

    iget v3, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, p2, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(IIILjava/lang/Object;)V

    .line 801
    :cond_1
    return-void
.end method

.method private sendDisconnectedEvent(Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "notifyType"    # I

    .prologue
    .line 804
    const-string v0, "EntConnectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending EVENT_DISCONNECTED for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->callbackToName(I)Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/16 v0, 0x44e

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(II)V

    .line 806
    return-void
.end method

.method private setContainersForConnection()V
    .locals 3

    .prologue
    .line 1117
    :try_start_0
    const-string/jumbo v1, "setContainersForConnection"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getContainersForConnectionInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUserHandle(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error setContainersForConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNotification()V
    .locals 9

    .prologue
    const v5, 0x10408e2

    .line 1824
    const/4 v1, 0x0

    .line 1825
    .local v1, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1827
    const v2, 0x1080100

    .line 1828
    .local v2, "icon":I
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1853
    .local v3, "msg":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1854
    .local v0, "bldr":Landroid/app/Notification$Builder;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1855
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1856
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10408e1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1857
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1858
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1859
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1860
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1861
    if-eqz v1, :cond_0

    .line 1862
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1864
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "EntConnectivity"

    iget v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1866
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    .line 1867
    .end local v0    # "bldr":Landroid/app/Notification$Builder;
    .end local v2    # "icon":I
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1830
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1831
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "EntConnectivity"

    iget v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    .line 1834
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToMobile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1835
    const v2, 0x1080100

    .line 1836
    .restart local v2    # "icon":I
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1838
    .end local v2    # "icon":I
    .end local v3    # "msg":Ljava/lang/String;
    :cond_4
    const v2, 0x10800ff

    .line 1839
    .restart local v2    # "icon":I
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x10408e4

    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .end local v3    # "msg":Ljava/lang/String;
    :cond_5
    const v4, 0x10408e5

    goto :goto_2

    .line 1845
    .end local v2    # "icon":I
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    if-eqz v4, :cond_1

    .line 1848
    const v2, 0x10800fe

    .line 1849
    .restart local v2    # "icon":I
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10408e3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1850
    .restart local v3    # "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.server.enterprise.billing.notification_dismissed"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private declared-synchronized turnOffConnection()Z
    .locals 5

    .prologue
    .line 1092
    monitor-enter p0

    const/4 v1, 0x0

    .line 1094
    .local v1, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    if-eqz v3, :cond_0

    .line 1095
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 1096
    const-string/jumbo v3, "network request released"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    :cond_0
    const/4 v1, 0x1

    move v2, v1

    .line 1102
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    monitor-exit p0

    return v2

    .line 1099
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "error turnOffConnection: "

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 1102
    .restart local v2    # "result":I
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    move v2, v1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private declared-synchronized turnOnConnection()Z
    .locals 9

    .prologue
    .line 1071
    monitor-enter p0

    const/4 v7, 0x0

    .line 1073
    .local v7, "result":Z
    :try_start_0
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1074
    .local v1, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1075
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1076
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    if-nez v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v0

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mHandler:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    const/16 v5, 0x1c

    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    .line 1079
    const-string/jumbo v0, "network request issued"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    :goto_0
    const/4 v7, 0x1

    move v8, v7

    .line 1087
    .end local v1    # "netCap":Landroid/net/NetworkCapabilities;
    .end local v7    # "result":Z
    .local v8, "result":I
    :goto_1
    monitor-exit p0

    return v8

    .line 1081
    .end local v8    # "result":I
    .restart local v1    # "netCap":Landroid/net/NetworkCapabilities;
    .restart local v7    # "result":Z
    :cond_0
    :try_start_1
    const-string/jumbo v0, "network request already issued"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1084
    .end local v1    # "netCap":Landroid/net/NetworkCapabilities;
    :catch_0
    move-exception v6

    .line 1085
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error turnOnConnection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    .line 1087
    .restart local v8    # "result":I
    goto :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "result":I
    :catchall_0
    move-exception v0

    move v8, v7

    .restart local v8    # "result":I
    goto :goto_1
.end method

.method private updateBlockRules([Landroid/net/UidRange;Z)V
    .locals 1
    .param p1, "ranges"    # [Landroid/net/UidRange;
    .param p2, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 959
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 960
    if-eqz p2, :cond_1

    .line 961
    const-string/jumbo v0, "updateBlockRules block"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->blockEnterpriseUidRanges([Landroid/net/UidRange;)V

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    const-string/jumbo v0, "updateBlockRules unblock"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->unblockEnterpriseUidRanges([Landroid/net/UidRange;)V

    goto :goto_0
.end method

.method private updateRouteRules([Landroid/net/UidRange;IZ)V
    .locals 2
    .param p1, "ranges"    # [Landroid/net/UidRange;
    .param p2, "netId"    # I
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 944
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 945
    if-eqz p3, :cond_1

    .line 946
    const-string/jumbo v0, "updateRouteRules enable"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Landroid/os/INetworkManagementService;->addEnterpriseUidRanges([Landroid/net/UidRange;Ljava/lang/String;I)V

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    const-string/jumbo v0, "updateRouteRules disable"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Landroid/os/INetworkManagementService;->removeEnterpriseUidRanges([Landroid/net/UidRange;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectivityType()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    return v0
.end method

.method public getUserHandle()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getUsers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionEnabled()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    return v0
.end method

.method public isDisconnected()Z
    .locals 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return v0
.end method

.method public isOffloadToMobile()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    return v0
.end method

.method public isOffloadToWifi()Z
    .locals 1

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1286
    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V

    .line 1289
    :cond_0
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1292
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    .line 1293
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1280
    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1281
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->logv(Ljava/lang/String;)V

    .line 1283
    :cond_0
    return-void
.end method

.method public declared-synchronized onActiveDefaultNetworkChanged(ILandroid/net/LinkProperties;)V
    .locals 1
    .param p1, "activeNetwork"    # I
    .param p2, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 741
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->onActiveNetworkChanged(ILandroid/net/LinkProperties;)V

    .line 742
    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    monitor-exit p0

    return-void

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onApnAvailableChanged(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    if-eq v0, p1, :cond_0

    .line 833
    if-eqz p1, :cond_1

    .line 834
    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    .line 838
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    .line 840
    :cond_0
    return-void

    .line 836
    :cond_1
    const/16 v0, 0x3f1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_0
.end method

.method public onMobileDataEnabledChanged()V
    .locals 3

    .prologue
    .line 820
    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntSubId:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataEnabled(I)Z

    move-result v0

    .line 821
    .local v0, "enabled":Z
    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-eq v1, v0, :cond_0

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMobileDataEnabledChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 823
    const/16 v2, 0x3f3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(II)V

    .line 825
    :cond_0
    return-void

    .line 823
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSimStateChanged()V
    .locals 3

    .prologue
    .line 809
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v1, v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    .line 810
    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 811
    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntSubId:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataEnabled(I)Z

    move-result v0

    .line 812
    .local v0, "enabled":Z
    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-eq v1, v0, :cond_0

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending data enabled changed on SIM_READY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    .line 814
    const/16 v2, 0x3f3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(II)V

    .line 817
    .end local v0    # "enabled":Z
    :cond_0
    return-void

    .line 814
    .restart local v0    # "enabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUserHandle(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, "userHandle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 882
    if-eqz p1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 885
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
