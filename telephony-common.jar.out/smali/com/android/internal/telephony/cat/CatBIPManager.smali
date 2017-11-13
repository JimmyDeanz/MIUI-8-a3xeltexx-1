.class public Lcom/android/internal/telephony/cat/CatBIPManager;
.super Landroid/os/Handler;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatBIPManager$6;
    }
.end annotation


# static fields
.field private static final ADMIN_PDN_EXTENSION_WAIT:I = 0x7530

.field static final BIP_CONTINUE_ADMIN_PDN:I = 0x5

.field static final BIP_DATA_STATE_CHANGED:I = 0x4

.field static final BIP_REQUEST_SETUP_DATA:I = 0x1

.field static final BIP_UICC_SERVER_RESTART_DONE:I = 0x3

.field static final BIP_UICC_SERVER_STARTED:I = 0x2

.field static final MAX_BIP_CHANNELS:I = 0x7

.field private static final WAKE_LOCK_TIMEOUT:I = 0x2710

.field static channelIds:[Z

.field public static mAPNState:Landroid/net/NetworkInfo$State;

.field public static mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public static mNetworkRequest:Landroid/net/NetworkRequest;


# instance fields
.field activeClientConnections:I

.field private capabilityType:I

.field private connMgr:Landroid/net/ConnectivityManager;

.field connection_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cat/CatBIPConnection;",
            ">;"
        }
    .end annotation
.end field

.field crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

.field currentChannel:I

.field feature:Ljava/lang/String;

.field mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

.field private mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

.field private mContext:Landroid/content/Context;

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field monitorChannelStatusEvent:Z

.field monitorDataDownloadEvent:Z

.field private nwInfo:Landroid/net/NetworkInfo;

.field oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

.field resp_pending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    sput-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cat/CatService;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "handle"    # Lcom/android/internal/telephony/cat/CatService;
    .param p4, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    .line 128
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    .line 129
    iput v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->activeClientConnections:I

    .line 134
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    .line 136
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 138
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorDataDownloadEvent:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorChannelStatusEvent:Z

    .line 143
    const-string v1, "enableBIP"

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    .line 148
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    .line 156
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

    .line 192
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$1;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    const-string v1, "Inside CatBIPManager"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 162
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    .line 163
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    .line 164
    iput p4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    .line 165
    const/4 v1, 0x7

    new-array v1, v1, [Z

    sput-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    .line 167
    new-instance v1, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->disableBipApn()V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatBIPManager;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendTrForApnFailedOpenchannel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatBIPManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatBIPManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatBIPManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    .param p2, "x2"    # [B
    .param p3, "x3"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/CatBIPManager;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatBIPManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/CatBIPManager;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatBIPManager;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->continueProcessingOpenChannel(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/CatBIPManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatBIPManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private assignChannelId()I
    .locals 3

    .prologue
    .line 1057
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1058
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 1059
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 1060
    add-int/lit8 v1, v0, 0x1

    .line 1063
    :goto_1
    return v1

    .line 1057
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private beginBipConnection(Ljava/lang/String;)I
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 1340
    const-string v1, "enableBIP"

    if-ne p1, v1, :cond_2

    .line 1341
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->capabilityType:I

    .line 1345
    :cond_0
    :goto_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1346
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->capabilityType:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1347
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1348
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1350
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    .line 1351
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPManager$5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$5;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    sput-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1381
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkRequest:Landroid/net/NetworkRequest;

    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1383
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1342
    .end local v0    # "builder":Landroid/net/NetworkRequest$Builder;
    :cond_2
    const-string v1, "enableHIPRI"

    if-ne p1, v1, :cond_0

    .line 1343
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->capabilityType:I

    goto :goto_0
.end method

.method private channelsAvailable()Z
    .locals 2

    .prologue
    .line 1857
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 1858
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 1859
    const/4 v1, 0x1

    .line 1862
    :goto_1
    return v1

    .line 1857
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1862
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkLinkDrop()Z
    .locals 4

    .prologue
    .line 1866
    const/4 v0, 0x0

    .line 1867
    .local v0, "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1869
    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1870
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 1871
    .restart local v0    # "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-byte v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1872
    const-string v2, "link drop occured"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1873
    const/4 v2, 0x1

    .line 1876
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkPortInUse(I)Z
    .locals 4
    .param p1, "port"    # I

    .prologue
    .line 1886
    const-string v2, "checkPortInUse"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1887
    const/4 v0, 0x0

    .line 1888
    .local v0, "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1890
    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1891
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 1892
    .restart local v0    # "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v2, v2, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    if-ne v2, p1, :cond_0

    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in use. Cannot connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1894
    const/4 v2, 0x1

    .line 1898
    :goto_0
    return v2

    .line 1897
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in use. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1898
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 4
    .param p1, "bipcon"    # Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .prologue
    .line 1398
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->checkLinkDrop()Z

    move-result v0

    .line 1399
    .local v0, "linkdrop_status":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1400
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1402
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1403
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1404
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1407
    const-string v2, "endBipConnection()"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1410
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v3, "enableHIPRI"

    if-eq v2, v3, :cond_0

    if-eqz v0, :cond_2

    .line 1411
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1412
    .local v1, "msg_resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1413
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1415
    const-string v2, "Sent close Channel TR: FEATURE_ENABLE_HIPRI"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1417
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1418
    const-string v2, "Unregistering..."

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1419
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1420
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1422
    :cond_1
    const-string v2, "enableBIP"

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    .line 1424
    .end local v1    # "msg_resp":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private closeServerConnection(Lcom/android/internal/telephony/cat/CatBIPServerConnection;Lcom/android/internal/telephony/cat/CloseChannelParams;)V
    .locals 4
    .param p1, "server"    # Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    .param p2, "params"    # Lcom/android/internal/telephony/cat/CloseChannelParams;

    .prologue
    .line 1432
    const-string v2, "closeServerConnection"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloseChannel: BIP Server connection found! ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->channelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1435
    iget-object v2, p2, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CloseChannelMode;->value()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1462
    :goto_0
    return-void

    .line 1438
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1439
    .local v1, "termResp":Landroid/os/Message;
    const-string v2, "handleCloseChannel: remove connection; TCP in CLOSED state!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1440
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1441
    const-string v2, "handleCloseChannel: Channel Mode is 00!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1442
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1443
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1444
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1445
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1446
    const-string v2, "handleCloseChannel: Sending Close Channel Terminal Response to mCatService handle"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1450
    .end local v1    # "termResp":Landroid/os/Message;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1451
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    .line 1452
    const-string v2, "handleCloseChannel: put TCP in LISTEN State!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1453
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;

    invoke-direct {v3, p1, p0}, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    .line 1454
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1455
    const/4 v2, 0x3

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1456
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1457
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendMessage(Landroid/os/Message;)Z

    .line 1458
    const-string v2, "handleCloseChannel: Channel Mode is 01!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private continueProcessingCloseChannel(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 1906
    const-string v1, "continueProcessingCloseChannel(nwinfo):"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1907
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager$6;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1929
    :cond_0
    :goto_0
    return-void

    .line 1911
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1912
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1913
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1915
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1916
    .local v0, "msg_resp":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1917
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1919
    const-string v1, "Sent close Channel TR:"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1921
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1922
    const-string v1, "Unregistering..."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1923
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1924
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 1907
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private continueProcessingOpenChannel(Landroid/net/NetworkInfo;)V
    .locals 12
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 1936
    iget v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1937
    .local v1, "bipcon":Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "continueProcessingOpenChannel() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1939
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager$6;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 1941
    :pswitch_0
    const-string v8, "Sending Failure TR..."

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1943
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1944
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1945
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1947
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v8, :cond_1

    .line 1948
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v9, 0x6d

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1949
    .local v7, "termResp":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1950
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1951
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 1955
    .end local v7    # "termResp":Landroid/os/Message;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1956
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1958
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1959
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1960
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1962
    :cond_2
    const-string v8, "continueProcessingOpenChannel() :: endBipConnection()"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1963
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    goto :goto_0

    .line 1967
    :pswitch_1
    if-nez v1, :cond_3

    .line 1968
    const-string v8, "bipcon is null"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1972
    :cond_3
    const/4 v0, 0x0

    .line 1973
    .local v0, "addrBytes":[B
    const/4 v5, 0x0

    .line 1976
    .local v5, "routeExists":Z
    iget-object v8, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    if-eqz v8, :cond_6

    .line 1977
    iget-object v8, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 2003
    array-length v8, v0

    const/16 v9, 0x10

    if-ne v8, v9, :cond_4

    .line 2006
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2035
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    .line 2036
    iget-object v8, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 2037
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 2038
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v8, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mBuffsizeModified:Z

    const/4 v10, 0x1

    if-ne v8, v10, :cond_9

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_1
    iput-object v8, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2039
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 2041
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_EnableBIPduringMobileDataOFF"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2044
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cat/CatBIPManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x7530

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2078
    :cond_5
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v8, :cond_0

    .line 2080
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v9, 0x6d

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2081
    .restart local v7    # "termResp":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v9, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v9, v1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 2082
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2083
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2084
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    goto/16 :goto_0

    .line 1979
    .end local v7    # "termResp":Landroid/os/Message;
    :cond_6
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1980
    .local v4, "msg_resp":Landroid/os/Message;
    const-string v8, "Destination address is null"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1981
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1982
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1983
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1984
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v9, 0x6d

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1985
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1986
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1988
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v9, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    .line 1989
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1990
    const-string v8, "Removed connection Successfully!!"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1994
    :cond_7
    const-string v8, "StopListening() & unregisterHandler()"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1995
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1996
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1997
    const-string v8, "Time to return"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1998
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 1999
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    goto/16 :goto_0

    .line 2007
    .end local v4    # "msg_resp":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 2008
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2010
    .restart local v4    # "msg_resp":Landroid/os/Message;
    const-string v8, "Exception occurred while Setting up streams"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2011
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2012
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 2013
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 2014
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v9, 0x6d

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2016
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2017
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2019
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v9, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    .line 2020
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2021
    const-string v8, "Removed connection Successfully!!"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2025
    :cond_8
    const-string v8, "StopListening() & unregisterHandler()"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2026
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 2027
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 2028
    const-string v8, "Time to return"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2029
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    goto/16 :goto_0

    .line 2038
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .end local v4    # "msg_resp":Landroid/os/Message;
    :cond_9
    :try_start_2
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 2046
    :catch_1
    move-exception v2

    .line 2047
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "HandleMessage: Exception occurred while Setting up streams"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2048
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v8, :cond_0

    .line 2049
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2050
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 2051
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 2052
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v9, 0x6d

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2054
    .restart local v7    # "termResp":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2055
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2057
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 2058
    .local v6, "s":Ljava/lang/String;
    const-string v8, "TIMEOUT"

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_b

    .line 2059
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 2067
    :cond_a
    :goto_2
    const-string v8, "Stoplistening(),  Unregistring handler"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2068
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 2069
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 2071
    const-string v8, "Time to return"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2072
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    goto/16 :goto_0

    .line 2061
    :cond_b
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v9, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    .line 2062
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2063
    const-string v8, "Removed connection  Successfully!!"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 2089
    .end local v0    # "addrBytes":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "routeExists":Z
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "termResp":Landroid/os/Message;
    :pswitch_2
    const-string v8, "Still Connecting..."

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1939
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private disableBipApn()V
    .locals 4

    .prologue
    .line 2123
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2125
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 2126
    const-string v2, "disableBipApn : there is no default preferences"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2133
    :goto_0
    return-void

    .line 2129
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2130
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "disableBipApn"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2131
    const-string v2, "bip.pref.enable"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private displayConnectionStatus()V
    .locals 5

    .prologue
    .line 1807
    const-string v2, " "

    .line 1808
    .local v2, "s":Ljava/lang/String;
    const-string v3, "Displaying ConnectionStatus"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1809
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Channel id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " assigned ? - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v4, v4, v1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1809
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1812
    :cond_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total number of connections "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1816
    const/4 v0, 0x0

    .line 1817
    .local v0, "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1819
    .local v1, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1820
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 1821
    .restart local v0    # "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChannelID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iface(protcl , port) =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v4, v4, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1824
    :cond_1
    return-void
.end method

.method private freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 3
    .param p1, "bipcon"    # Lcom/android/internal/telephony/cat/CatBIPConnection;

    .prologue
    .line 457
    if-nez p1, :cond_1

    .line 458
    const-string v0, "Nothing to Free, No channels Open"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to freeChannel() chanelid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPConnection;->terminateStreams()V

    .line 465
    const-string v0, "removing channel id and connection from the list"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    sget-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "Removed connection  Successfully!!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 1036
    const-string v2, "CatBIPConnection : get ID"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    const/4 v0, 0x0

    .line 1038
    .local v0, "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1040
    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1041
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 1042
    .restart local v0    # "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    if-ne v2, p1, :cond_0

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CatBIPConnection : found ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    .line 1048
    :goto_0
    return-object v2

    .line 1047
    :cond_1
    const-string v2, "CatBIPConnection : null ID"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isbearerTypeSupported(I)Z
    .locals 2
    .param p1, "bearerType"    # I

    .prologue
    .line 1234
    packed-switch p1, :pswitch_data_0

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported bearer type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1240
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1234
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 11
    .param p1, "bipcon"    # Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .prologue
    const/16 v10, 0x6d

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 262
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 263
    .local v2, "msg_resp":Landroid/os/Message;
    const-string v5, "openChannelAsRemoteClient()"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v5, :cond_2

    .line 267
    :cond_0
    const-string v5, "openChannelAsRemoteClient():sending TR connection mode is either backgrnd or ondemand"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mBuffsizeModified:Z

    if-ne v5, v9, :cond_1

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_0
    iput-object v5, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 271
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v8, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 272
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v6, p1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 274
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 275
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 276
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 278
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v5, :cond_2

    .line 450
    :goto_1
    return-void

    .line 270
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_0

    .line 284
    :cond_2
    const/4 v3, -0x1

    .line 286
    .local v3, "result":I
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-nez v5, :cond_3

    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-nez v5, :cond_5

    .line 288
    :cond_3
    const-string v5, "openChannelAsRemoteClient():requesting PDN connection connection mode :bkgrnd or immediate"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iput-boolean v8, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 292
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "CMC"

    const-string v6, "CMC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 295
    const-string v5, "ril.simtype"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "18"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 296
    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 297
    const-string v5, ""

    iput-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 306
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCurrentGprsState()I

    move-result v5

    if-nez v5, :cond_8

    .line 307
    const-string v5, "mPhone instanceof GSMPhone"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v3

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestDataConnection() returns "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 439
    :cond_5
    :goto_4
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-eqz v5, :cond_10

    .line 440
    const-string v5, "Backgound mode sending channel status to Cat Service"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 449
    :cond_6
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    goto/16 :goto_1

    .line 299
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_BIPOTAApnName"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    goto :goto_2

    .line 311
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v5, v5, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getDataServiceState()I

    move-result v5

    if-nez v5, :cond_9

    .line 312
    const-string v5, "mPhone instanceof CDMALTEPhone"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v3

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestDataConnection() returns "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 315
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataServiceState()I

    move-result v5

    if-nez v5, :cond_a

    .line 316
    const-string v5, "mPhone instanceof CDMAPhone"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v3

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestDataConnection() returns "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 321
    :cond_a
    const/4 v3, 0x3

    .line 322
    const-string v5, "getCurrentGprsState is not STATE_IN_SERVICE"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 329
    :pswitch_0
    const-string v5, "sending Failure TR"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 332
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v9, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 333
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v8, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 335
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 336
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 344
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 345
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    goto/16 :goto_1

    .line 350
    :pswitch_1
    const-string v5, "APN_ALREADY_ACTIVE"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    :try_start_0
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 354
    .local v0, "addrBytes":[B
    const/4 v4, 0x0

    .line 357
    .local v4, "routeExists":Z
    array-length v5, v0

    const/16 v6, 0x10

    if-ne v5, v6, :cond_d

    .line 362
    const-string v5, "Exception occurred while Setting up streams"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 364
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 365
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 366
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 368
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 371
    sget-object v5, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    aput-boolean v7, v5, v6

    .line 372
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 373
    const-string v5, "Removed connection  Successfully!!"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    :cond_b
    const-string v5, "StopListening() & unregisterHandler()"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 379
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 380
    const-string v5, "Time to return"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 408
    .end local v0    # "addrBytes":[B
    .end local v4    # "routeExists":Z
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Exception occurred while Setting up streams"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 411
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v9, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 412
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v8, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 413
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 415
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 418
    sget-object v5, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v6, v6, -0x1

    aput-boolean v8, v5, v6

    .line 419
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 420
    const-string v5, "Removed connection  Successfully!!"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    :cond_c
    const-string v5, "StopListening() & unregisterHandler()"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 426
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 427
    const-string v5, "Time to return"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 385
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "addrBytes":[B
    .restart local v4    # "routeExists":Z
    :cond_d
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    .line 386
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 387
    const/4 v5, 0x0

    iput-boolean v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 389
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->mBuffsizeModified:Z

    if-ne v5, v9, :cond_f

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_6
    iput-object v5, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 390
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 392
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_EnableBIPduringMobileDataOFF"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 395
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 399
    :cond_e
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    const/4 v6, 0x4

    invoke-virtual {v5, p0, v6}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 400
    const-string v5, "registering handler with ConnectivityListener "

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->startListening()V

    .line 403
    const-string v5, "mConnectivityListener.startListening() called "

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    const-string v5, "wakelock for OPEN CHANNEL"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_4

    .line 389
    :cond_f
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 433
    .end local v0    # "addrBytes":[B
    .end local v4    # "routeExists":Z
    :pswitch_2
    const-string v5, " APN_REQUEST_STARTED , wait till we hear from NetworkListener, returning "

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 442
    :cond_10
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-nez v5, :cond_6

    .line 443
    const-string v5, "Immediate mode Sending TR to Cat Service"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 445
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v6, p1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 446
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 447
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_5

    .line 325
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private receiveDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;I)V
    .locals 5
    .param p1, "bipcon"    # Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    .param p2, "requestedLength"    # I

    .prologue
    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "bytesRemaining":I
    const/4 v2, 0x0

    .line 1189
    .local v2, "dataLength":I
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1190
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1194
    and-int/lit16 v3, p2, 0xff

    const/16 v4, 0xed

    if-le v3, v4, :cond_0

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveDataClientMode: requestedLength is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    const/16 p2, 0xed

    .line 1212
    :cond_0
    and-int/lit16 v3, p2, 0xff

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->getRxData(I)[B

    move-result-object v1

    .line 1213
    .local v1, "data":[B
    if-nez v1, :cond_1

    .line 1214
    const-string v3, "receiveDataClientMode: RxData is null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/ReceiveDataResponse;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/internal/telephony/cat/ReceiveDataResponse;-><init>([BII)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1225
    return-void

    .line 1215
    :cond_1
    array-length v3, v1

    and-int/lit16 v4, p2, 0xff

    if-ge v3, v4, :cond_2

    .line 1216
    array-length v2, v1

    .line 1217
    const-string v3, "receiveDataClientMode: RxData is shorter than requested length"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1220
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1221
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    sub-int v0, v3, v4

    .line 1222
    array-length v2, v1

    goto :goto_0
.end method

.method private receiveDataServerMode(Lcom/android/internal/telephony/cat/CatBIPServerConnection;B)V
    .locals 9
    .param p1, "b"    # Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    .param p2, "ChannelDataLength"    # B

    .prologue
    const/4 v8, 0x0

    .line 1067
    const-string v6, "receiveDataServerMode"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    and-int/lit16 v0, p2, 0xff

    .line 1070
    .local v0, "arrayLength":I
    const/4 v1, 0x0

    .line 1071
    .local v1, "availableData":[B
    const/4 v5, 0x0

    .line 1073
    .local v5, "temp":[B
    const/4 v3, 0x0

    .line 1074
    .local v3, "bytesInRxBuffer":I
    const/4 v4, 0x0

    .line 1076
    .local v4, "dataLength":I
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1077
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v8, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1081
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    if-nez v6, :cond_0

    .line 1083
    const-string v6, "receiveDataServerMode : byteArrayWriter is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1090
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1093
    :cond_1
    if-nez v1, :cond_3

    .line 1127
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v7, Lcom/android/internal/telephony/cat/ReceiveDataResponse;

    invoke-direct {v7, v5, v4, v3}, Lcom/android/internal/telephony/cat/ReceiveDataResponse;-><init>([BII)V

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1128
    const-string v6, "receiveDataServerMode: Filling Receive Data Terminal Response"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1095
    :cond_3
    array-length v6, v1

    if-ge v6, v0, :cond_4

    .line 1096
    array-length v4, v1

    .line 1097
    move-object v5, v1

    goto :goto_1

    .line 1100
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1102
    array-length v6, v1

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    sub-int v2, v6, v7

    .line 1103
    .local v2, "bytesAvailable":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytesAvailable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  availableData.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  lastReadPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    if-lt v0, v2, :cond_5

    .line 1105
    move v0, v2

    .line 1108
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    new-array v5, v0, [B

    .line 1111
    iget v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    invoke-static {v1, v6, v5, v8, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1112
    iget v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    add-int/2addr v6, v0

    iput v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    .line 1113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastReadPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    sub-int v3, v6, v7

    .line 1116
    array-length v4, v5

    .line 1118
    iget v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    array-length v7, v1

    if-lt v6, v7, :cond_2

    .line 1119
    const/4 v1, 0x0

    .line 1120
    const-string v6, "reset rxbuf buffer"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    const/4 v3, 0x0

    .line 1122
    iput v8, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    .line 1123
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_1
.end method

.method private requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I
    .locals 13
    .param p1, "con"    # Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .prologue
    .line 1254
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1255
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->disableBipApn()V

    .line 1257
    iget v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v11

    .line 1259
    .local v11, "subIds":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v11, v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 1260
    .local v9, "numeric":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1261
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "content://telephony/carriers/no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1263
    .local v1, "TELEPHONY_NO_UPDATE_URI":Landroid/net/Uri;
    const-string v0, "enableHIPRI"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    .line 1265
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND type = \'bip\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1266
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1268
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1269
    const-string v0, "enableBIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    :cond_0
    if-eqz v6, :cond_1

    .line 1275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1278
    .end local v3    # "selection":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "con.NetworkAccessname is null, feature is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1293
    .end local v1    # "TELEPHONY_NO_UPDATE_URI":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "numeric":Ljava/lang/String;
    .end local v11    # "subIds":[I
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_EnableBIPduringMobileDataOFF"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1295
    const-string v0, "set feature : BIP"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1296
    const-string v0, "enableBIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    const/4 v12, 0x1

    .line 1301
    .local v12, "userDataEnabled":Z
    :goto_2
    const-string v0, "ATT"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1302
    if-nez v12, :cond_8

    .line 1303
    const-string v0, "Mobile Data off"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    const/4 v10, 0x3

    .line 1336
    .end local v12    # "userDataEnabled":Z
    :goto_3
    return v10

    .line 1271
    .restart local v1    # "TELEPHONY_NO_UPDATE_URI":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "numeric":Ljava/lang/String;
    .restart local v11    # "subIds":[I
    :catch_0
    move-exception v8

    .line 1272
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught during check apn : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1274
    if-eqz v6, :cond_1

    .line 1275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1274
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1280
    .end local v1    # "TELEPHONY_NO_UPDATE_URI":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "numeric":Ljava/lang/String;
    .end local v11    # "subIds":[I
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDefaultApnName()Ljava/lang/String;

    move-result-object v7

    .line 1281
    .local v7, "defaultApnName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultApnName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1282
    if-eqz v7, :cond_4

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "LGT"

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "3"

    const-string v2, "ril.simtype"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1285
    :cond_5
    const-string v0, "con.NetworkAccessname is same as default APN"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    const-string v0, "enableHIPRI"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    .line 1290
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    goto/16 :goto_1

    .line 1288
    :cond_6
    const-string v0, "enableBIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    goto :goto_4

    .line 1298
    .end local v7    # "defaultApnName":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 1308
    .restart local v12    # "userDataEnabled":Z
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "LGT"

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "3"

    const-string v2, "ril.simtype"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1310
    if-eqz v12, :cond_b

    .line 1311
    const-string v0, "Mobile Data on / set feature : HIPRI"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1312
    const-string v0, "enableHIPRI"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    .line 1320
    .end local v12    # "userDataEnabled":Z
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->beginBipConnection(Ljava/lang/String;)I

    move-result v10

    .line 1321
    .local v10, "result":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result of beginBipConnection("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    const/4 v0, 0x1

    if-ne v0, v10, :cond_a

    .line 1325
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 1326
    const-string v0, "registering handler with ConnectivityListener "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->startListening()V

    .line 1329
    const-string v0, "mConnectivityListener.startListening() called "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1331
    const-string v0, "wakelock for OPEN CHANNEL"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1334
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    goto/16 :goto_3

    .line 1314
    .end local v10    # "result":I
    .restart local v12    # "userDataEnabled":Z
    :cond_b
    const-string v0, "Mobile Data off / set feature : BIP"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    const-string v0, "enableBIP"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    goto :goto_5
.end method

.method private sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V
    .locals 18
    .param p1, "con"    # Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    .param p2, "channelData"    # [B
    .param p3, "sendDataImmediate"    # Z

    .prologue
    .line 1475
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-eqz v2, :cond_0

    .line 1476
    const-string v2, "ConnectionMode.isOnDemand && con.isfirstTime = true"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCurrentGprsState()I

    move-result v2

    if-nez v2, :cond_3

    .line 1483
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v15

    .line 1484
    .local v15, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDataConnection() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1489
    :goto_0
    packed-switch v15, :pswitch_data_0

    .line 1577
    .end local v15    # "result":I
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-nez v2, :cond_2

    .line 1578
    const-string v2, "con.isfirstTime = false"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1586
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1588
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/net/Socket;

    .line 1589
    .local v17, "s":Ljava/net/Socket;
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1590
    :cond_1
    const-string v2, "TCP Remote Client Socket is Closed or Not Connected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 1594
    .local v13, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1595
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 1596
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1597
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1708
    .end local v13    # "msg":Landroid/os/Message;
    .end local v17    # "s":Ljava/net/Socket;
    :cond_2
    :goto_2
    return-void

    .line 1486
    :cond_3
    const/4 v15, 0x3

    .line 1487
    .restart local v15    # "result":I
    const-string v2, "getCurrentGprsState is not STATE_IN_SERVICE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1492
    :pswitch_0
    const-string v2, "sending Failure TR"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1499
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 1500
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-byte v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->linkStateCause:B

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 1504
    .restart local v13    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1505
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 1507
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_2

    .line 1511
    .end local v13    # "msg":Landroid/os/Message;
    :pswitch_1
    const-string v2, "APN_ALREADY_ACTIVE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1514
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 1515
    .local v7, "addrBytes":[B
    const/16 v16, 0x0

    .line 1517
    .local v16, "routeExists":Z
    array-length v2, v7

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1522
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 1523
    .local v14, "msg_resp":Landroid/os/Message;
    const-string v2, "Exception occurred while Setting up streams"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1530
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1533
    const-string v2, "StopListening() & unregisterHandler()"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1536
    const-string v2, "Time to return"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1543
    .end local v7    # "addrBytes":[B
    .end local v14    # "msg_resp":Landroid/os/Message;
    .end local v16    # "routeExists":Z
    :catch_0
    move-exception v9

    .line 1544
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "Exception occurred while Setting up streams"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 1551
    .restart local v13    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1552
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 1553
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 1554
    .local v17, "s":Ljava/lang/String;
    const-string v2, "TIMEOUT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 1555
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1563
    :cond_4
    :goto_3
    const-string v2, "StopListening() & Unregister Handle"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1567
    const-string v2, "Time to return"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1540
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "msg":Landroid/os/Message;
    .end local v17    # "s":Ljava/lang/String;
    .restart local v7    # "addrBytes":[B
    .restart local v16    # "routeExists":Z
    :cond_5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    .line 1541
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1542
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1557
    .end local v7    # "addrBytes":[B
    .end local v16    # "routeExists":Z
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "msg":Landroid/os/Message;
    .restart local v17    # "s":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->channelId:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 1558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1559
    const-string v2, "Removed connection  Successfully!!"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 1572
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "msg":Landroid/os/Message;
    .end local v17    # "s":Ljava/lang/String;
    :pswitch_2
    const-string v2, "APN_REQUEST_STARTED , wait till we hear from NetworkListner"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1600
    .end local v15    # "result":I
    .local v17, "s":Ljava/net/Socket;
    :cond_7
    const-string v2, "TCP Remote Client Socket is neither Closed nor Not Connected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1602
    .end local v17    # "s":Ljava/net/Socket;
    :cond_8
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-nez v2, :cond_9

    .line 1603
    const-string v2, "sendDataClientMode : isLinkEstablished false"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 1607
    .restart local v13    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1608
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 1610
    const/4 v2, 0x5

    move-object/from16 v0, p1

    iput-byte v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->linkStateCause:B

    .line 1611
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto/16 :goto_2

    .line 1614
    .end local v13    # "msg":Landroid/os/Message;
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1615
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/net/DatagramSocket;

    .line 1616
    .local v17, "s":Ljava/net/DatagramSocket;
    invoke-virtual/range {v17 .. v17}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1617
    :cond_a
    const-string v2, "UDP Remote Client, Socket is Closed or Not Connected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 1621
    .restart local v13    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1622
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 1626
    .end local v13    # "msg":Landroid/os/Message;
    :cond_b
    const-string v2, "UDP Remote Client, Socket is neither Closed nor Not Connected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1631
    .end local v17    # "s":Ljava/net/DatagramSocket;
    :cond_c
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storing bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "txIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channeldatalength =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1633
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1634
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    move-object/from16 v0, p2

    array-length v3, v0

    add-int/2addr v2, v3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1642
    :goto_4
    if-eqz p3, :cond_f

    .line 1644
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1645
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v8, Ljava/net/DatagramSocket;

    .line 1646
    .local v8, "ds":Ljava/net/DatagramSocket;
    new-instance v1, Ljava/net/DatagramPacket;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v6, v6, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-direct/range {v1 .. v6}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 1653
    .local v1, "pkt":Ljava/net/DatagramPacket;
    :try_start_3
    invoke-virtual {v8, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1654
    const-string v2, "Packet Ready sent"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1657
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1658
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 1660
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int v10, v2, v3

    .line 1661
    .local v10, "emptySpace":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v3, v10}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1703
    .end local v1    # "pkt":Ljava/net/DatagramPacket;
    .end local v8    # "ds":Ljava/net/DatagramSocket;
    .end local v10    # "emptySpace":I
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 1704
    .restart local v13    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1705
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 1635
    .end local v13    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v9

    .line 1636
    .local v9, "e":Ljava/lang/NullPointerException;
    const-string v2, "Nul pointer Exception while writing to tx buf "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1637
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v12

    .line 1638
    .local v12, "ioe":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "IndexOutOfBounds Exception while writing to tx buf "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1662
    .end local v12    # "ioe":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "pkt":Ljava/net/DatagramPacket;
    .restart local v8    # "ds":Ljava/net/DatagramSocket;
    :catch_3
    move-exception v11

    .line 1663
    .local v11, "i":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while sending UDP packet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1665
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1666
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    goto :goto_5

    .line 1669
    .end local v1    # "pkt":Ljava/net/DatagramPacket;
    .end local v8    # "ds":Ljava/net/DatagramSocket;
    .end local v11    # "i":Ljava/io/IOException;
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1671
    :try_start_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1673
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v17

    .line 1674
    .local v17, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data written to TCP sockt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1678
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1679
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 1681
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int v10, v2, v3

    .line 1683
    .restart local v10    # "emptySpace":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v3, v10}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_5

    .line 1685
    .end local v10    # "emptySpace":I
    .end local v17    # "s":Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 1686
    .local v9, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while sending to TCP packet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1689
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1690
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    goto/16 :goto_5

    .line 1696
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_f
    const-string v2, "Data Stored. Send Response"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1699
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bufferSize:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    sub-int v10, v2, v3

    .line 1700
    .restart local v10    # "emptySpace":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v3, v10}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    goto/16 :goto_5

    .line 1489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendDataServerMode(Lcom/android/internal/telephony/cat/CatBIPServerConnection;[BZ)V
    .locals 8
    .param p1, "b"    # Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    .param p2, "ChannelData"    # [B
    .param p3, "SendImmediate"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1132
    const-string v3, "sendDataServerMode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    :try_start_0
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    .line 1135
    .local v2, "s":Ljava/net/Socket;
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1136
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1137
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1138
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/SendDataResponse;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1139
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1141
    const-string v3, "sendDataServerMode: Socket Closed/Not Connected"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1175
    .end local v2    # "s":Ljava/net/Socket;
    :goto_0
    return-void

    .line 1147
    .restart local v2    # "s":Ljava/net/Socket;
    :cond_1
    if-eqz p3, :cond_2

    .line 1148
    const-string v3, "sendDataServerMode: send immediate"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1149
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1150
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1151
    .local v1, "immediateData":[B
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1152
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDataServerMode: Wrote all data to socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1156
    const-string v3, "sendDataServerMode: Resetting the Buffer"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    .end local v1    # "immediateData":[B
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1164
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1165
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/SendDataResponse;

    const/16 v5, 0xff

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1166
    const-string v3, "sendDataServerMode: Filling SEND DATA Terminal Response"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1168
    .end local v2    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1170
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1171
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1172
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v6, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1173
    const-string v3, "sendDataServerMode: Java IO Exception: Filling SEND DATA Terminal Response with BIP_ERROR"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1158
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "s":Ljava/net/Socket;
    :cond_2
    :try_start_1
    const-string v3, "sendDataServerMode: Store Mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDataServerMode: Size of Tx buffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private sendTrForApnFailedOpenchannel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1826
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_2

    .line 1828
    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1829
    .local v0, "bipcon":Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    const-string v2, " sendTrForApnFailedOpenchannel Send the fail TR"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1830
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1831
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1832
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v4, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1833
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1834
    const-string v2, "sendTrForApnFailedOpenchannel: Filled Open Channel Terminal Response params"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1835
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v2, :cond_0

    .line 1836
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1837
    .local v1, "termResp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1838
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1839
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 1842
    .end local v1    # "termResp":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1843
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1845
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1846
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1847
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1849
    :cond_1
    const-string v2, "continueProcessingOpenChannel() :: endBipConnection()"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1850
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->endBipConnection()V

    .line 1852
    .end local v0    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    :cond_2
    return-void
.end method

.method private setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 4
    .param p1, "bipcon"    # Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .prologue
    .line 2098
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2100
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 2101
    const-string v2, "setBipApn : there is no default preferences"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2120
    :goto_0
    return-void

    .line 2104
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "setBipApn : set values"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2106
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v3, "enableHIPRI"

    if-ne v2, v3, :cond_2

    .line 2107
    const-string v2, "bip.pref.enable"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2119
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2109
    :cond_2
    const-string v2, "bip.pref.enable"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2110
    const-string v2, "bip.pref.apn"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2111
    const-string v2, "bip.pref.user"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2112
    const-string v2, "bip.pref.passwd"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2114
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2115
    const-string v2, "bip.pref.protocol"

    const-string v3, "IPV4V6"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2116
    const-string v2, "bip.pref.roaming_protocol"

    const-string v3, "IPV4V6"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "dispose CatBIPManager"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    :cond_0
    return-void
.end method

.method protected endBipConnection()V
    .locals 2

    .prologue
    .line 1387
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    sput-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mAPNState:Landroid/net/NetworkInfo$State;

    .line 1388
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1391
    :cond_0
    return-void
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 5
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    .line 798
    new-instance v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 799
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 800
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 801
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 803
    const-string v2, "getChannelStatus"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 806
    .local v0, "i":Ljava/util/Iterator;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;

    sget-object v4, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    invoke-direct {v3, v0, v4}, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;-><init>(Ljava/util/Iterator;[Z)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 807
    const-string v2, "Filled crnt_resp.data"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 810
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 811
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 812
    return-void
.end method

.method public handleCloseChannel(Lcom/android/internal/telephony/cat/CloseChannelParams;)V
    .locals 6
    .param p1, "params"    # Lcom/android/internal/telephony/cat/CloseChannelParams;

    .prologue
    const/4 v5, 0x3

    .line 601
    const-string v3, "handleCloseChannel"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget v3, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    and-int/lit8 v1, v3, 0x7

    .line 605
    .local v1, "cid":I
    new-instance v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 606
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 608
    .local v2, "termResp":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloseChannel: Requested Chanel ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 610
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 611
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 613
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 614
    iget v3, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    iget v3, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    const/16 v4, 0x27

    if-le v3, v4, :cond_1

    .line 616
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloseChannel: Invalid Channel Id! BIP\'s cid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params.mChannelId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v5, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 619
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 620
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 650
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    .line 626
    if-nez v0, :cond_2

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloseChannel: No Channel Available! BIP cid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params.mChannelId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v5, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 631
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 632
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 637
    :cond_2
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 638
    const-string v3, "handleCloseChannel: UICC in SERVER Mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    .line 639
    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->closeServerConnection(Lcom/android/internal/telephony/cat/CatBIPServerConnection;Lcom/android/internal/telephony/cat/CloseChannelParams;)V

    goto :goto_0

    .line 641
    :cond_3
    const-string v3, "handleCloseChannel: UICC in CLIENT Mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    .line 642
    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 645
    const-string v3, "Be back to old StrictMode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 831
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handling Message : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 1021
    const-string v10, "handleMessage: default"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 835
    :pswitch_0
    const-string v10, "BIP_DATA_STATE_CHANGED"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    .line 838
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    if-nez v10, :cond_1

    .line 839
    const-string v10, "No BIP cmd is being processed."

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 843
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 844
    .local v5, "connectionState":Landroid/net/NetworkInfo$State;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nwInfo.getType()  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ConnectionState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v11, "enableBIP"

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/16 v11, 0x17

    if-ne v10, v11, :cond_3

    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v11, "enableHIPRI"

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_4

    .line 849
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Network :nwInfo.getType() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not TYPE_MOBILE_BIP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 852
    :cond_4
    sget-object v10, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v10, :cond_7

    .line 854
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    if-eqz v10, :cond_5

    .line 855
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 856
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v10, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 858
    :cond_5
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorChannelStatusEvent:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 859
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 860
    .local v6, "i":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 861
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 863
    .local v1, "bipCon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v10, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v10

    if-nez v10, :cond_6

    move-object v2, v1

    .line 867
    check-cast v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 869
    .local v2, "bipclient":Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    iget-object v10, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/TransportLevel;->isRemoteClient()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 870
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 871
    const/4 v10, 0x5

    iput-byte v10, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->linkStateCause:B

    .line 873
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_1

    .line 879
    .end local v1    # "bipCon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    .end local v2    # "bipclient":Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    .end local v6    # "i":Ljava/util/Iterator;
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v10, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-nez v10, :cond_8

    .line 880
    const-string v10, "No BIP cmd is being processed, May not have been unregistered from NWConnectivityListener  "

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 884
    :cond_8
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v10, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    .line 885
    .local v4, "cmd":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Still processing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    sget-object v10, Lcom/android/internal/telephony/cat/CatBIPManager$6;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_0

    .line 889
    :pswitch_1
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/android/internal/telephony/cat/CatBIPManager$4;

    invoke-direct {v10, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$4;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 894
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 898
    .end local v9    # "thread":Ljava/lang/Thread;
    :pswitch_2
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cat/CatBIPManager;->continueProcessingCloseChannel(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 909
    .end local v4    # "cmd":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .end local v5    # "connectionState":Landroid/net/NetworkInfo$State;
    :pswitch_3
    const-string v10, "handleMessage: BIP_UICC_SERVER_STARTED"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 912
    .local v3, "bipserver":Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    iget-object v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->isAlive()Z

    move-result v10

    if-nez v10, :cond_a

    .line 913
    iget-object v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 914
    const-string v10, "handleMessage: BIP Server socket closed"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    const/4 v10, 0x0

    iput-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 917
    const/4 v10, 0x0

    iput-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    .line 920
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 921
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 922
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v11, 0x0

    iput v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 923
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v11, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v11, v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 924
    const-string v10, "handleMessage: Filled Open Channel Terminal Response params"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    :cond_9
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v11, 0x6d

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 951
    .local v8, "termResp":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 952
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 953
    const-string v10, "handleMessage: Sending OPEN CHANNEL Terminal Response to mCatService handle"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 927
    .end local v8    # "termResp":Landroid/os/Message;
    :cond_a
    const-string v10, "handleMessage: BIP Server socket opened in LISTEN state"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 928
    const/4 v10, 0x1

    iput-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 929
    const/4 v10, 0x0

    iput-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    .line 931
    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->mBuffsizeModified:Z

    const/4 v12, 0x1

    if-ne v10, v12, :cond_b

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    iput-object v10, v11, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 936
    iget-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    if-nez v10, :cond_c

    .line 938
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 947
    :goto_4
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v11, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v11, v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 948
    const-string v10, "handleMessage: Filled Open Channel Terminal Response params"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 931
    :cond_b
    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 942
    :cond_c
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 944
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-byte v11, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    iput v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    goto :goto_4

    .line 958
    .end local v3    # "bipserver":Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :pswitch_4
    const-string v10, "handleMessage: BIP_UICC_SERVER_RESTART_DONE"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 961
    .restart local v3    # "bipserver":Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    iget-object v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->isAlive()Z

    move-result v10

    if-nez v10, :cond_e

    .line 962
    iget-object v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 963
    const-string v10, "handleMessage: BIP Server socket closed"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    const/4 v10, 0x0

    iput-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 966
    const/4 v10, 0x0

    iput-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    .line 969
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 970
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 971
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-byte v11, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    iput v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 972
    const-string v10, "handleMessage: Filled Terminal Response params"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 988
    :cond_d
    :goto_5
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v11, 0x6d

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 989
    .restart local v8    # "termResp":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 990
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 991
    const-string v10, "handleMessage: BIP_UICC_SERVER_RESTART_DONE: Sending Terminal Response to mCatService handle"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 975
    .end local v8    # "termResp":Landroid/os/Message;
    :cond_e
    const-string v10, "handleMessage: BIP Server socket opened in LISTEN State"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 976
    const/4 v10, 0x1

    iput-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 977
    const/4 v10, 0x0

    iput-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    .line 978
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 980
    iget-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    if-nez v10, :cond_f

    .line 981
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 986
    :goto_6
    const-string v10, "handleMessage: Filled Terminal Response params"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 983
    :cond_f
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 984
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-byte v11, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkStateCause:B

    iput v11, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    goto :goto_6

    .line 995
    .end local v3    # "bipserver":Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :pswitch_5
    const/4 v0, 0x0

    .line 997
    .local v0, "bActiveClient":Z
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 998
    .restart local v6    # "i":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 999
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 1000
    .restart local v1    # "bipCon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v10, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v10

    if-nez v10, :cond_10

    move-object v2, v1

    .line 1003
    check-cast v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1004
    .restart local v2    # "bipclient":Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    iget-object v10, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/TransportLevel;->isRemoteClient()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-boolean v10, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v10, :cond_10

    .line 1005
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage: BIP_CONTINUE_ADMIN_PDN: Active client - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    const/4 v0, 0x1

    .line 1010
    .end local v1    # "bipCon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    .end local v2    # "bipclient":Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    :cond_11
    if-eqz v0, :cond_0

    .line 1011
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cat/CatBIPManager;->beginBipConnection(Ljava/lang/String;)I

    move-result v7

    .line 1012
    .local v7, "result":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage: BIP_CONTINUE_ADMIN_PDN: Continue connection, result - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    const/4 v10, 0x1

    if-eq v10, v7, :cond_12

    if-nez v7, :cond_0

    .line 1014
    :cond_12
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cat/CatBIPManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x7530

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 887
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V
    .locals 18
    .param p1, "params"    # Lcom/android/internal/telephony/cat/OpenChannelParams;

    .prologue
    .line 480
    const-string v2, "handleOpenChannel"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    const/4 v14, 0x0

    .line 482
    .local v14, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    .line 484
    .local v1, "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    new-instance v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->channelsAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 490
    const-string v2, "Bearer type not supported"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 495
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 593
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigAlwaysOnApn"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 500
    .local v12, "enableBip":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_EnableBIPduringMobileDataOFF"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bip"

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v13, 0x1

    .line 505
    .local v13, "mUserDataEnabled":Z
    :goto_1
    if-nez v13, :cond_2

    .line 506
    const-string v2, "Mobile data is disable."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 511
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 503
    .end local v13    # "mUserDataEnabled":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 516
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v2, v2, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->checkPortInUse(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/16 v3, 0x10

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 522
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 527
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 529
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 531
    const-string v2, "handleOpenChannel: UICC in SERVER mode"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .end local v1    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    move-object/from16 v0, p0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/cat/CatBIPServerConnection;-><init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    .line 537
    .restart local v1    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    const-string v2, "handleOpenChannel: Starting Thread"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->assignChannelId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 546
    check-cast v2, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;

    move-object/from16 v0, p0

    invoke-direct {v4, v1, v0}, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    move-object v2, v1

    .line 547
    check-cast v2, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 549
    const-string v2, "handleOpenChannel: Started Thread"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v14

    .line 551
    iput-object v1, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 552
    const-string v2, "handleOpenChannel: Msg Obtained"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendMessage(Landroid/os/Message;)Z

    .line 554
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    goto/16 :goto_0

    .line 556
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 557
    .local v17, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v15

    .line 558
    .local v15, "networkType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .end local v1    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v9, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v10, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;-><init>(Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .restart local v1    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    const-string v2, "Change the StrictMode for BIP client Mode"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 577
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->assignChannelId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel Assigned  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    iget v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    .line 582
    move-object v11, v1

    .line 583
    .local v11, "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    new-instance v16, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/telephony/cat/CatBIPManager$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/android/internal/telephony/cat/CatBIPManager$2;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 588
    .local v16, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 590
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    goto/16 :goto_0
.end method

.method public handleReceiveData(Lcom/android/internal/telephony/cat/ReceiveDataParams;)V
    .locals 9
    .param p1, "params"    # Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    .line 703
    const-string v5, "handleReceiveData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    iget v5, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    and-int/lit8 v1, v5, 0x7

    .line 705
    .local v1, "cid":I
    new-instance v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 708
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 710
    .local v4, "termResp":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v6, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 711
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 712
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v7, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 713
    const-string v5, "handleReceiveData: Created partial Receive Data Terminal Response"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    iget v5, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    const/16 v6, 0x21

    if-lt v5, v6, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    const/16 v6, 0x27

    if-le v5, v6, :cond_1

    .line 717
    :cond_0
    const-string v5, "handleReceiveData: Invalid Channel ID"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v6, 0x3

    iput v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 719
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 720
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 787
    :goto_0
    return-void

    .line 724
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    .line 725
    .local v0, "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    if-nez v0, :cond_2

    .line 727
    const-string v5, "handleReceiveData: No Channel available"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v7, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 729
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 730
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 735
    :cond_2
    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 737
    const-string v5, "handleReceiveData: BIP Connection Found. UICC in SERVER mode"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    .line 738
    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 746
    .local v3, "server":Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :try_start_0
    iget-object v5, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 748
    :cond_3
    const-string v5, "handleReceiveData: socket is not available"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v6, 0x7

    iput v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 752
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 754
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v2

    .line 762
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v5, "handleReceiveData: NullPointerException"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v8, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 766
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 768
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 773
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_4
    iget-byte v5, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->receiveDataServerMode(Lcom/android/internal/telephony/cat/CatBIPServerConnection;B)V

    .line 774
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 775
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 776
    const-string v5, "handleReceiveData: Sending Receive Data Terminal Response to mCatService handle"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    .end local v3    # "server":Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :cond_5
    const-string v5, "Receiving Data in Client mode"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .end local v0    # "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-byte v5, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->receiveDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;I)V

    .line 783
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 784
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 785
    const-string v5, "handleReceiveData: Sending Receive Data Terminal Response to mCatService handle"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleSendData(Lcom/android/internal/telephony/cat/SendDataParams;)V
    .locals 10
    .param p1, "params"    # Lcom/android/internal/telephony/cat/SendDataParams;

    .prologue
    .line 653
    const-string v8, "handleSendData"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "b":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget v8, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    and-int/lit8 v3, v8, 0x7

    .line 657
    .local v3, "cid":I
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v9, 0x6d

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 659
    .local v6, "termResp":Landroid/os/Message;
    new-instance v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v8}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 660
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v9, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 661
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 662
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 664
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 666
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_0

    iget v8, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    const/16 v9, 0x21

    if-lt v8, v9, :cond_0

    iget v8, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    const/16 v9, 0x27

    if-le v8, v9, :cond_1

    .line 668
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSendData: No Channel available : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x3

    iput v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 670
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 671
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 700
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v8, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 677
    const-string v8, "handleSendData: UICC in SERVER mode"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    .line 679
    check-cast v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 680
    .local v5, "server":Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    iget-object v8, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    iget-boolean v9, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    invoke-direct {p0, v5, v8, v9}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataServerMode(Lcom/android/internal/telephony/cat/CatBIPServerConnection;[BZ)V

    .line 681
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 682
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 683
    const-string v8, "handleSendData: Sending Send Data Terminal Response to mCatService handle"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 686
    .end local v5    # "server":Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :cond_2
    const-string v8, "handleSendData: UICC in CLIENT mode"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    move-object v1, v0

    .line 689
    .local v1, "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v8, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 690
    .local v2, "channelData":[B
    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    .line 691
    .local v4, "sendImmediate":Z
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/telephony/cat/CatBIPManager$3;

    invoke-direct {v8, p0, v1, v2, v4}, Lcom/android/internal/telephony/cat/CatBIPManager$3;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;[BZ)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 696
    .local v7, "thread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public registerPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 179
    const-string v0, "CatBIPManager phone reloaded!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 181
    return-void
.end method

.method public sendBipOtaFailIntent()V
    .locals 2

    .prologue
    .line 2136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sktota.usim.FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2137
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2138
    return-void
.end method

.method public sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 9
    .param p1, "bipcon"    # Lcom/android/internal/telephony/cat/CatBIPConnection;

    .prologue
    .line 1717
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorChannelStatusEvent:Z

    if-nez v5, :cond_0

    .line 1718
    const-string v5, "CatBIPManager"

    const-string v6, "sendChannelStatusEvent: not set"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :goto_0
    return-void

    .line 1722
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1723
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1724
    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1725
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1727
    iget v5, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v5, v5, 0x7

    int-to-byte v3, v5

    .line 1729
    .local v3, "s":B
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 1730
    check-cast v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v5, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v3

    int-to-byte v3, v5

    .line 1736
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1737
    iget-byte v5, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1739
    new-instance v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    const/16 v5, 0xa

    const/16 v6, 0x82

    const/16 v7, 0x81

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;-><init>(III[B)V

    .line 1744
    .local v1, "env":Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x6a

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1745
    .local v2, "msg":Landroid/os/Message;
    const-string v5, "CatBIPManager"

    const-string v6, "sendChannelStatusEvent: Send EVENT_DOWNLOAD_CHANNEL_STATUS Envelope Message to mCatService handle"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1747
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v1    # "env":Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    move-object v5, p1

    .line 1732
    check-cast v5, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v5, :cond_1

    .line 1733
    or-int/lit16 v5, v3, 0x80

    int-to-byte v3, v5

    goto :goto_1
.end method

.method public sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 14
    .param p1, "bipcon"    # Lcom/android/internal/telephony/cat/CatBIPConnection;

    .prologue
    const/16 v10, 0xff

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1755
    new-array v9, v13, [Ljava/lang/String;

    const-string v11, "LGT"

    aput-object v11, v9, v12

    invoke-static {v9}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v5

    .line 1756
    .local v5, "isLGT":Z
    new-array v9, v13, [Ljava/lang/String;

    const-string v11, "KOO"

    aput-object v11, v9, v12

    invoke-static {v9}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v4

    .line 1757
    .local v4, "isKOO":Z
    iget-boolean v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorDataDownloadEvent:Z

    if-nez v9, :cond_1

    if-eqz v5, :cond_0

    if-nez v4, :cond_1

    .line 1758
    :cond_0
    const-string v9, "CatBIPManager"

    const-string v10, "sendDataAvailableEvent: not set"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    .end local p1    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    :goto_0
    return-void

    .line 1763
    .restart local p1    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1765
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1766
    .local v8, "tag":I
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1767
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1769
    iget v9, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v9, v9, 0x7

    int-to-byte v7, v9

    .line 1770
    .local v7, "s":B
    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, p1

    .line 1771
    check-cast v9, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v9, v9, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v7

    int-to-byte v7, v9

    .line 1777
    :cond_2
    :goto_1
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1778
    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1781
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1782
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1783
    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1785
    const/4 v2, 0x0

    .line 1786
    .local v2, "dataLength":I
    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1787
    const/16 v2, 0xff

    .line 1792
    .end local p1    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1794
    new-instance v3, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    const/16 v9, 0x9

    const/16 v10, 0x82

    const/16 v11, 0x81

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v3, v9, v10, v11, v12}, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;-><init>(III[B)V

    .line 1799
    .local v3, "env":Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v10, 0x6a

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1800
    .local v6, "msg":Landroid/os/Message;
    const-string v9, "CatBIPManager"

    const-string v10, "sendDataAvailableEvent: Send EVENT_DOWNLOAD_DATA_AVAILABLE Envelope Message to mCatService handle"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    iput-object v3, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1802
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v2    # "dataLength":I
    .end local v3    # "env":Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    .end local v6    # "msg":Landroid/os/Message;
    .restart local p1    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    :cond_3
    move-object v9, p1

    .line 1773
    check-cast v9, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v9, v9, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v9, :cond_2

    .line 1774
    or-int/lit16 v9, v7, 0x80

    int-to-byte v7, v9

    goto :goto_1

    .line 1789
    .restart local v2    # "dataLength":I
    :cond_4
    check-cast p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .end local p1    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v9, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 1790
    .local v1, "bytesAvailable":I
    if-le v1, v10, :cond_5

    move v2, v10

    :goto_3
    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3
.end method
