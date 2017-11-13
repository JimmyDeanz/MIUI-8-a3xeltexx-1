.class public Lcom/sec/epdg/IPSecAdapterForEris;
.super Ljava/lang/Object;
.source "IPSecAdapterForEris.java"

# interfaces
.implements Lcom/sec/erisclient/IErisListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IPSecAdapterForEris$1;,
        Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;,
        Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;,
        Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;
    }
.end annotation


# static fields
.field private static CISCO_TESTING:I = 0x0

.field private static INSIDE_SECURE:I = 0x0

.field private static final IPSEC_ADAPTER_CONNECTION_STATUS_CHANGED:I = 0x2

.field private static final IPSEC_ADAPTER_EVENT_CHECK_CONNECTION_REQ:I = 0x5

.field private static final IPSEC_ADAPTER_EVENT_CONNECT_REQ:I = 0x3

.field private static final IPSEC_ADAPTER_EVENT_DISCONNECT_REQ:I = 0x4

.field private static final IPSEC_ADAPTER_SERVICE_STATUS_CHANGED:I = 0x1

.field private static IPV6PREFIX:Ljava/lang/String; = null

.field private static final OUTGOING_ADAPTER:Ljava/lang/String; = "[EPDGSerive->ErisClient]"

.field private static SETCOM_TESTING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[IPSECADAPTER_ERIS]"

.field private static TESTING_TYPE:I

.field private static conn_prefix:Ljava/lang/String;

.field private static mIPsecClient:Lcom/sec/erisclient/ErisClient;

.field private static mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

.field private static mOemHandler:Landroid/os/Handler;


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mConnectionDb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/erisclient/IPSecConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

.field private mPowerMgr:Landroid/os/PowerManager;

.field private mbStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/sec/epdg/IPSecAdapterForEris;->CISCO_TESTING:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/epdg/IPSecAdapterForEris;->INSIDE_SECURE:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/epdg/IPSecAdapterForEris;->SETCOM_TESTING:I

    sget v0, Lcom/sec/epdg/IPSecAdapterForEris;->CISCO_TESTING:I

    sput v0, Lcom/sec/epdg/IPSecAdapterForEris;->TESTING_TYPE:I

    const-string v0, "CONN"

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->conn_prefix:Ljava/lang/String;

    const-string v0, "/64"

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->IPV6PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mbStarted:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IpSecAdapterThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;-><init>(Lcom/sec/epdg/IPSecAdapterForEris;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mPowerMgr:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mPowerMgr:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "[IPSECADAPTER_ERIS]"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->initIpSecClient(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/IPSecAdapterForEris;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->onDisconnectRequestRecv(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/IPSecAdapterForEris;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecAdapterForEris;->onCheckConnectionRequestRecv(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/erisclient/ErisError;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # Lcom/sec/erisclient/ErisError;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->onIpSecAdapterServiceStatusChanged(Lcom/sec/erisclient/ErisError;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/epdg/IPSecAdapterForEris;Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapterForEris;
    .param p1, "x1"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecAdapterForEris;->onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;I)V

    return-void
.end method

.method private addIPsecConnectionDb(ILcom/sec/erisclient/IPSecConnection;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "connection"    # Lcom/sec/erisclient/IPSecConnection;

    .prologue
    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "Adding IPSecConnection to DB addIPsecConnectionDb()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "Added IPSecConnection to DB"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCidfromConnDb(Lcom/sec/erisclient/IPSecConnection;)I
    .locals 6
    .param p1, "conn"    # Lcom/sec/erisclient/IPSecConnection;

    .prologue
    const-string v3, "[IPSECADAPTER_ERIS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving context ID from the DataBase : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/IPSecConnection;

    .local v0, "ipsecconn":Lcom/sec/erisclient/IPSecConnection;
    const-string v3, "[IPSECADAPTER_ERIS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interface name in connection being checked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/erisclient/IPSecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[IPSECADAPTER_ERIS]"

    const-string v4, "Connection Object Found in DB"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .end local v0    # "ipsecconn":Lcom/sec/erisclient/IPSecConnection;
    .end local v2    # "key":Ljava/lang/Integer;
    :goto_0
    return v3

    :cond_1
    const-string v3, "[IPSECADAPTER_ERIS]"

    const-string v4, "Retrieval getCidfromConnDb failed"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_0
.end method

.method private getConnectionInformation(I)Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .locals 13
    .param p1, "cid"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "[IPSECADAPTER_ERIS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectionInformation():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/erisclient/IPSecConnection;

    .local v11, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-nez v11, :cond_1

    const-string v1, "[IPSECADAPTER_ERIS]"

    const-string v2, "getConnectionInformation(): null conn"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v11    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :cond_0
    :goto_0
    return-object v0

    .restart local v11    # "conn":Lcom/sec/erisclient/IPSecConnection;
    :cond_1
    invoke-virtual {v11}, Lcom/sec/erisclient/IPSecConnection;->getState()Lcom/sec/erisclient/IPSecConnectionState;

    move-result-object v12

    .local v12, "state":Lcom/sec/erisclient/IPSecConnectionState;
    if-eqz v12, :cond_2

    const-string v0, "[IPSECADAPTER_ERIS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrive Connection Params for cid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[IPSECADAPTER_ERIS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    invoke-virtual {v12}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4prefixlen()I

    move-result v1

    invoke-virtual {v12}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6prefixlen()I

    move-result v2

    invoke-virtual {v12}, Lcom/sec/erisclient/IPSecConnectionState;->getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v3

    invoke-virtual {v12}, Lcom/sec/erisclient/IPSecConnectionState;->getIntfName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/sec/erisclient/IPSecConnectionState;->getmIpv4Dnses()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sec/erisclient/IPSecConnectionState;->getmIpv6Dnses()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4PcscfAddr()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6PcscfAddr()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4addr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6addr()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;-><init>(IILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "[IPSECADAPTER_ERIS]"

    const-string v2, "getConnectionInformation(): null state"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;I)Lcom/sec/epdg/IWlanError;
    .locals 5
    .param p1, "error"    # Lcom/sec/erisclient/ErisError;
    .param p2, "ikeErrorCode"    # I

    .prologue
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisError:[I

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "[IPSECADAPTER_ERIS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v2, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    invoke-virtual {v2}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->CERTIFICATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->TIMEOUT_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/sec/epdg/IWlanError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisError;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/epdg/IWlanError$IkeError;

    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->getIkeErrorFromCode(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sec/epdg/IWlanError$IkeError;-><init>(I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/IWlanError$IkeError;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getIWlanEventbyIPSecEvent(Lcom/sec/erisclient/ErisEvent;)I
    .locals 3
    .param p1, "event"    # Lcom/sec/erisclient/ErisEvent;

    .prologue
    const/16 v0, 0x32

    sget-object v1, Lcom/sec/epdg/IPSecAdapterForEris$1;->$SwitchMap$com$sec$erisclient$ErisEvent:[I

    invoke-virtual {p1}, Lcom/sec/erisclient/ErisEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x2d

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x30

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x2e

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2f

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x31

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/epdg/IPSecAdapterForEris;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    if-nez v0, :cond_0

    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "Creating IPSecAdapterForEris"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/IPSecAdapterForEris;

    invoke-direct {v0, p0}, Lcom/sec/epdg/IPSecAdapterForEris;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "IPSecAdapterForEris already exists !"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/IPSecAdapterForEris;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;

    .prologue
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    if-nez v0, :cond_0

    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "Creating IPSecAdapterForEris"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/IPSecAdapterForEris;

    invoke-direct {v0, p0}, Lcom/sec/epdg/IPSecAdapterForEris;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    sput-object p1, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:Landroid/os/Handler;

    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "IPSecAdapterForEris already exists !"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:Landroid/os/Handler;

    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mInstance:Lcom/sec/epdg/IPSecAdapterForEris;

    goto :goto_0
.end method

.method private getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;
    .locals 2
    .param p1, "cid"    # I

    .prologue
    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "getIpSecConnectionbyCid()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mConnectionDb:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/erisclient/IPSecConnection;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initIpSecClient(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "Initalizing IPSec Library"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/erisclient/ErisClient;->getInstance(Landroid/content/Context;)Lcom/sec/erisclient/ErisClient;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v0, p0}, Lcom/sec/erisclient/ErisClient;->setListener(Lcom/sec/erisclient/IErisListener;)V

    invoke-static {}, Lcom/sec/epdg/IPSecAdapterForEris;->startService()V

    return-void
.end method

.method private mapIwlanSettingToIPsecConnection(Lcom/sec/epdg/IWlanApnSetting;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/erisclient/IPSecConnection;
    .locals 23
    .param p1, "iwlanSetting"    # Lcom/sec/epdg/IWlanApnSetting;
    .param p2, "ipv4HandoverAddr"    # Ljava/lang/String;
    .param p3, "ipv6HandoverAddr"    # Ljava/lang/String;
    .param p4, "cid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "mapIwlanSettingToIPsecConnection()"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .local v14, "inetAddress":Ljava/net/InetAddress;
    new-instance v5, Lcom/sec/erisclient/IPSecConnection;

    invoke-direct {v5}, Lcom/sec/erisclient/IPSecConnection;-><init>()V

    .local v5, "connection":Lcom/sec/erisclient/IPSecConnection;
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIp()Ljava/net/InetAddress;

    move-result-object v14

    const/4 v10, 0x0

    .local v10, "hostAddress":Ljava/lang/String;
    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setConnID(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setName(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getEpdgInterfacePrefix()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, p4, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setVirtualAdapterName(Ljava/lang/String;)V

    if-nez v14, :cond_1

    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Error, wifi is connected still epdg server ip is null, returning null"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .end local v5    # "connection":Lcom/sec/erisclient/IPSecConnection;
    :cond_0
    :goto_0
    return-object v5

    .restart local v5    # "connection":Lcom/sec/erisclient/IPSecConnection;
    :cond_1
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0x0

    const-string v20, "[IPSECADAPTER_ERIS]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "epdg fqdn is already resolved, setting gateway, epdg ip is: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_b

    invoke-static {v10}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-static {v10}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    :cond_2
    invoke-virtual {v5, v10}, Lcom/sec/erisclient/IPSecConnection;->setGateway(Ljava/lang/String;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setUserAuthentication(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpSecIpType()Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setSubnetType(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmOwnUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/sec/erisclient/IPSecConnection;->setOwnIdentity(Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "internal"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_c

    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Set Testing type to Inside Secure"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v19, Lcom/sec/epdg/IPSecAdapterForEris;->INSIDE_SECURE:I

    sput v19, Lcom/sec/epdg/IPSecAdapterForEris;->TESTING_TYPE:I

    :goto_1
    sget v19, Lcom/sec/epdg/IPSecAdapterForEris;->TESTING_TYPE:I

    sget v20, Lcom/sec/epdg/IPSecAdapterForEris;->CISCO_TESTING:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmRemoteUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/sec/erisclient/IPSecConnection;->setRemoteIdentity(Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setUsername(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEapType()Lcom/sec/epdg/IWlanEnum$IkeEapType;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setEapMethod(Lcom/sec/epdg/IWlanEnum$IkeEapType;)V

    :cond_3
    const-string v19, "[IPSECADAPTER_ERIS]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PFS for: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "is: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;

    move-result-object v19

    sget-object v20, Lcom/sec/epdg/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setPerfectForwardSecrecy(Z)V

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpSecauthType()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setHostAuthentication(Lcom/sec/epdg/IWlanEnum$IPSecAuthType;)V

    sget v19, Lcom/sec/epdg/IPSecAdapterForEris;->TESTING_TYPE:I

    sget v20, Lcom/sec/epdg/IPSecAdapterForEris;->INSIDE_SECURE:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "self@ipsec.com"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    const-string v19, "batikgeologic"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setPreSharedKey(Ljava/lang/String;)V

    :cond_5
    :goto_3
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setGlobalDnsConfiguration(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmTunnelMode()Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setTunnelMode(Lcom/sec/epdg/IWlanEnum$TunnelModeType;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecEncryptionType()Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setIPsecEncryption(Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecIntegrityType()Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setIPsecIntegrity(Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecDHGroup()Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setIPsecGroup(Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setIPsecAntiReplay(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecLifeTimeType()Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->getmIpSecLifeval()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/sec/erisclient/IPSecConnection;->setIPsecLife(Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUsingCaCertificate()Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_8

    const/4 v3, 0x0

    .local v3, "caCert":Ljava/security/cert/X509Certificate;
    const/4 v15, 0x0

    .local v15, "input":Ljava/io/FileInputStream;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->caCertificatePath()Ljava/lang/String;

    move-result-object v2

    .local v2, "ca":Ljava/lang/String;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v15    # "input":Ljava/io/FileInputStream;
    .local v16, "input":Ljava/io/FileInputStream;
    :try_start_1
    const-string v19, "X.509"

    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Success to generate CA"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v16, :cond_6

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    move-object/from16 v15, v16

    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v16    # "input":Ljava/io/FileInputStream;
    .restart local v15    # "input":Ljava/io/FileInputStream;
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    :try_start_3
    invoke-virtual {v5, v3}, Lcom/sec/erisclient/IPSecConnection;->setCaCertWithVerifying(Ljava/security/cert/X509Certificate;)Z

    move-result v19

    if-eqz v19, :cond_12

    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Success to setCaCertWithVerifying"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_6

    .end local v2    # "ca":Ljava/lang/String;
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v15    # "input":Ljava/io/FileInputStream;
    :cond_8
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeversion()Lcom/sec/epdg/IWlanEnum$Ikeversion;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkeVersion(Lcom/sec/epdg/IWlanEnum$Ikeversion;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeIntergrity()Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkeIntegrity(Lcom/sec/epdg/IWlanEnum$IkeIntegrity;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEncryptType()Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkeEncryption(Lcom/sec/epdg/IWlanEnum$IkeEncryption;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeDhGroup()Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setGroup(Lcom/sec/epdg/IWlanEnum$IkeDhGroup;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeLife()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkeLife(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeWindowSize()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setIkeWindowSize(I)V

    sget v19, Lcom/sec/epdg/IPSecAdapterForEris;->TESTING_TYPE:I

    sget v20, Lcom/sec/epdg/IPSecAdapterForEris;->SETCOM_TESTING:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setUsername(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeEapType()Lcom/sec/epdg/IWlanEnum$IkeEapType;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setEapMethod(Lcom/sec/epdg/IWlanEnum$IkeEapType;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmRemoteUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/sec/erisclient/IPSecConnection;->setRemoteIdentity(Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeConnectionTimeOut()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setConnectTimeout(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeDpdTimeOut()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setDpdTimeout(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeNatValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setNattKeepaliveTimeout(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmIkeVirtualAdapterConf()Lcom/sec/epdg/IWlanEnum$AdapterConf;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setVirtualAdapterConfiguration(Lcom/sec/epdg/IWlanEnum$AdapterConf;)V

    const/16 v19, 0x0

    const-string v20, "[IPSECADAPTER_ERIS]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "HandOverL2W Requesting ipv4:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "ipv6:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/sec/epdg/IPSecAdapterForEris;->IPV6PREFIX:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .local v17, "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setRequestedRacIPv4Address(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setRequestedRacIPv6Address(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getPcscfattributes()Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-result-object v18

    .local v18, "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    sget-object v19, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_15

    sget-object v19, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_13

    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Vendor Attribute is set to PCSCF_CONF_V4"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv4VendorAttr()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setPcscfv4VendorAttr(I)V

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getImeiVendorAttrVal()Lcom/sec/epdg/IWlanEnum$Imei;

    move-result-object v12

    .local v12, "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    sget-object v19, Lcom/sec/epdg/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

    move-object/from16 v0, v19

    if-ne v0, v12, :cond_16

    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Adding IMEI vendor attribute to IKE connection"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getImeiVendorAttributeType()I

    move-result v11

    .local v11, "imeiVendorAttrType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/epdg/EpdgUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .local v13, "imeiVendorAttrValue":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v11, v0}, Lcom/sec/erisclient/IPSecConnection;->setImeiVendorAttr(I[B)V

    const-string v19, "[IPSECADAPTER_ERIS]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IMEI VendorAttributeType:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "IMEI VendorAttributeValue:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v13, "Suppressed"

    .end local v13    # "imeiVendorAttrValue":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v11    # "imeiVendorAttrType":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setPeriodicDpdTimer(I)V

    const-string v19, "[IPSECADAPTER_ERIS]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IWLAN_NETWORK_INTERFACE is: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->addInterface(Ljava/lang/String;)V

    const-string v19, "[IPSECADAPTER_ERIS]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MOBIKE for: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "is: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/IWlanEnum$Mobike;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/IWlanEnum$Mobike;

    move-result-object v19

    sget-object v20, Lcom/sec/epdg/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_17

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setMobike(Z)V

    goto/16 :goto_0

    .end local v12    # "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    .end local v17    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .end local v18    # "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    :cond_b
    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Error, wifi is connected still epdg server ip is not valid, returning null"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanSettingName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "setcom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_d

    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Set Testing type to setcom"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v19, Lcom/sec/epdg/IPSecAdapterForEris;->SETCOM_TESTING:I

    sput v19, Lcom/sec/epdg/IPSecAdapterForEris;->TESTING_TYPE:I

    goto/16 :goto_1

    :cond_d
    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Set Testing type to cisco"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v19, Lcom/sec/epdg/IPSecAdapterForEris;->CISCO_TESTING:I

    sput v19, Lcom/sec/epdg/IPSecAdapterForEris;->TESTING_TYPE:I

    goto/16 :goto_1

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;

    move-result-object v19

    sget-object v20, Lcom/sec/epdg/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setPerfectForwardSecrecy(Z)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "south@ipsec.com"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    const-string v19, "hostelrybumped"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setPreSharedKey(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/IPSecAdapterForEris;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "councilors@ipsec.com"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "harrowedregularizes"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setPreSharedKey(Ljava/lang/String;)V

    sget-object v19, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setSubnetType(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)V

    goto/16 :goto_3

    .restart local v2    # "ca":Ljava/lang/String;
    .restart local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v16    # "input":Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    .local v9, "eio":Ljava/io/IOException;
    const-string v19, "[IPSECADAPTER_ERIS]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v15, v16

    .end local v16    # "input":Ljava/io/FileInputStream;
    .restart local v15    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v9    # "eio":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/security/cert/CertificateException;
    :goto_8
    :try_start_4
    const-string v19, "[IPSECADAPTER_ERIS]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mapIwlanSettingToIPsecConnection(): CertificateException "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v15, :cond_7

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v9

    .restart local v9    # "eio":Ljava/io/IOException;
    const-string v19, "[IPSECADAPTER_ERIS]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .end local v9    # "eio":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .local v8, "e2":Ljava/io/IOException;
    :goto_9
    :try_start_6
    const-string v19, "[IPSECADAPTER_ERIS]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v15, :cond_7

    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v9

    .restart local v9    # "eio":Ljava/io/IOException;
    const-string v19, "[IPSECADAPTER_ERIS]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v8    # "e2":Ljava/io/IOException;
    .end local v9    # "eio":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_a
    if-eqz v15, :cond_11

    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_11
    :goto_b
    throw v19

    :catch_5
    move-exception v9

    .restart local v9    # "eio":Ljava/io/IOException;
    const-string v20, "[IPSECADAPTER_ERIS]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mapIwlanSettingToIPsecConnection(): IOException "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .end local v9    # "eio":Ljava/io/IOException;
    :cond_12
    :try_start_9
    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Error while setCaCertWithVerifying"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v7

    .local v7, "e1":Ljava/security/cert/CertificateEncodingException;
    const-string v19, "[IPSECADAPTER_ERIS]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mapIwlanSettingToIPsecConnection(): CertificateEncodingException "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .end local v2    # "ca":Ljava/lang/String;
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v7    # "e1":Ljava/security/cert/CertificateEncodingException;
    .end local v15    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .restart local v18    # "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    :cond_13
    sget-object v19, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Vendor Attribute is set to PCSCF_CONF_V6"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv6VendorAttr()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setPcscfv6VendorAttr(I)V

    goto/16 :goto_6

    :cond_14
    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Vendor Attribute is set to PCSCF_CONF_V4_V6"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv4VendorAttr()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setPcscfv4VendorAttr(I)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getPcscfv6VendorAttr()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setPcscfv6VendorAttr(I)V

    goto/16 :goto_6

    :cond_15
    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Vendor Attribute is set to PCSCF-NONE"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .restart local v12    # "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    :cond_16
    const-string v19, "[IPSECADAPTER_ERIS]"

    const-string v20, "Skipping IMEI vendor attribute in IKE connection"

    invoke-static/range {v19 .. v20}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/sec/epdg/IWlanApnSetting;->getMobikeattributes()Lcom/sec/epdg/IWlanEnum$Mobike;

    move-result-object v19

    sget-object v20, Lcom/sec/epdg/IWlanEnum$Mobike;->DISABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/erisclient/IPSecConnection;->setMobike(Z)V

    goto/16 :goto_0

    .end local v12    # "imeiVendorAttrVal":Lcom/sec/epdg/IWlanEnum$Imei;
    .end local v17    # "ipv6HandoverAddrWidPrefix":Ljava/lang/String;
    .end local v18    # "pcscfattribute":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .restart local v2    # "ca":Ljava/lang/String;
    .restart local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v19

    move-object/from16 v15, v16

    .end local v16    # "input":Ljava/io/FileInputStream;
    .restart local v15    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v15    # "input":Ljava/io/FileInputStream;
    .restart local v16    # "input":Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object/from16 v15, v16

    .end local v16    # "input":Ljava/io/FileInputStream;
    .restart local v15    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v15    # "input":Ljava/io/FileInputStream;
    .restart local v16    # "input":Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "input":Ljava/io/FileInputStream;
    .restart local v15    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_8
.end method

.method private onCheckConnectionRequestRecv(II)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "timeout"    # I

    .prologue
    iget-boolean v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mbStarted:Z

    if-nez v1, :cond_0

    const-string v1, "[IPSECADAPTER_ERIS]"

    const-string v2, "IPSecService is not connected yet"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0

    .local v0, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-eqz v0, :cond_2

    const-string v1, "[IPSECADAPTER_ERIS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConnection cid ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) - timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[IPSECADAPTER_ERIS]"

    const-string v2, "checkConnection wake lock"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    sget-object v1, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v1, v0, p2}, Lcom/sec/erisclient/ErisClient;->checkConnection(Lcom/sec/erisclient/IPSecConnection;I)Lcom/sec/erisclient/ErisError;

    goto :goto_0

    :cond_2
    const-string v1, "[IPSECADAPTER_ERIS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConnection: Error Cannot find ipsec conn obj : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onConnectRequestRecv(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;I)V
    .locals 12
    .param p1, "info"    # Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    .param p2, "cid"    # I

    .prologue
    const/16 v11, 0x32

    const/4 v10, 0x0

    const/4 v9, -0x1

    const-string v6, "[IPSECADAPTER_ERIS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect(): cid - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "ipsecconn":Lcom/sec/erisclient/IPSecConnection;
    # invokes: Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;
    invoke-static {p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$400(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v3

    .local v3, "iwlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    iget-boolean v6, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mbStarted:Z

    if-nez v6, :cond_0

    const-string v6, "[IPSECADAPTER_ERIS]"

    const-string v7, "IPsecservice not started"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .local v4, "msg":Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->what:I

    iput p2, v4, Landroid/os/Message;->arg1:I

    new-instance v6, Lcom/sec/epdg/IWlanConnectResult;

    sget-object v7, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    invoke-direct {p0, v7, v9}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v7

    invoke-direct {v6, p2, v10, v7}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    .end local v4    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_0
    # invokes: Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->getHandoverIpv4Addr()Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$500(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->getHandoverIpv6Addr()Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$600(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7, p2}, Lcom/sec/epdg/IPSecAdapterForEris;->mapIwlanSettingToIPsecConnection(Lcom/sec/epdg/IWlanApnSetting;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/erisclient/IPSecConnection;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    const-string v6, "[IPSECADAPTER_ERIS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConnectRequestRecv(): ipsecconn is null, so posting ERROR event for cid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .restart local v4    # "msg":Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->what:I

    iput p2, v4, Landroid/os/Message;->arg1:I

    new-instance v6, Lcom/sec/epdg/IWlanConnectResult;

    sget-object v7, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    invoke-direct {p0, v7, v9}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v7

    invoke-direct {v6, p2, v10, v7}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v4    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/text/ParseException;
    const-string v6, "[IPSECADAPTER_ERIS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConnectRequestRecv(): ParseException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/text/ParseException;
    :cond_1
    sget-object v6, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v6, v2}, Lcom/sec/erisclient/ErisClient;->connect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;

    move-result-object v5

    .local v5, "result":Lcom/sec/erisclient/ErisError;
    sget-object v6, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .restart local v4    # "msg":Landroid/os/Message;
    iput p2, v4, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    if-ne v5, v6, :cond_2

    invoke-direct {p0, p2, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->addIPsecConnectionDb(ILcom/sec/erisclient/IPSecConnection;)V

    goto :goto_0

    :cond_2
    const-string v6, "[IPSECADAPTER_ERIS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x30

    iput v6, v4, Landroid/os/Message;->what:I

    new-instance v6, Lcom/sec/epdg/IWlanConnectResult;

    invoke-direct {p0, v5, v9}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v7

    invoke-direct {v6, p2, v10, v7}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    new-instance v0, Lcom/sec/erisclient/ErisEventData;

    invoke-direct {v0, v2, v5, v9}, Lcom/sec/erisclient/ErisEventData;-><init>(Lcom/sec/erisclient/IPSecConnection;Lcom/sec/erisclient/ErisError;I)V

    .local v0, "data":Lcom/sec/erisclient/ErisEventData;
    sget-object v6, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    invoke-direct {p0, v6, v0}, Lcom/sec/epdg/IPSecAdapterForEris;->showToastOnConnectionStatusChanged(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    goto/16 :goto_0
.end method

.method private onDisconnectRequestRecv(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    iget-boolean v2, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mbStarted:Z

    if-nez v2, :cond_0

    const-string v2, "[IPSECADAPTER_ERIS]"

    const-string v3, "IPSecService is not connected yet"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Lcom/sec/epdg/IWlanConnectResult;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/erisclient/ErisError;->ERIS_GENERIC_FAILED:Lcom/sec/erisclient/ErisError;

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapterForEris;->getIpSecConnectionbyCid(I)Lcom/sec/erisclient/IPSecConnection;

    move-result-object v0

    .local v0, "conn":Lcom/sec/erisclient/IPSecConnection;
    if-eqz v0, :cond_1

    sget-object v2, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v2, v0}, Lcom/sec/erisclient/ErisClient;->disconnect(Lcom/sec/erisclient/IPSecConnection;)Lcom/sec/erisclient/ErisError;

    goto :goto_0

    :cond_1
    const-string v2, "[IPSECADAPTER_ERIS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect: Error Cannot find ipsec conn obj : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onIpSecAdapterConnectionStatusChanged(Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;)V
    .locals 8
    .param p1, "eventInfo"    # Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;

    .prologue
    const/4 v7, 0x0

    iget-object v2, p1, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;->event:Lcom/sec/erisclient/ErisEvent;

    .local v2, "event":Lcom/sec/erisclient/ErisEvent;
    iget-object v1, p1, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;->data:Lcom/sec/erisclient/ErisEventData;

    .local v1, "data":Lcom/sec/erisclient/ErisEventData;
    const-string v4, "[IPSECADAPTER_ERIS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIpSecAdapterConnectionStatusChanged received :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/IPSecAdapterForEris;->getCidfromConnDb(Lcom/sec/erisclient/IPSecConnection;)I

    move-result v0

    .local v0, "cid":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    const-string v4, "[IPSECADAPTER_ERIS]"

    const-string v5, "Spurious Connection event no matching entity in connection Db so no action taken"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "[IPSECADAPTER_ERIS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event received for context ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/sec/epdg/IPSecAdapterForEris;->showToastOnConnectionStatusChanged(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V

    sget-object v4, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "[IPSECADAPTER_ERIS]"

    const-string v5, "checkConnection wake lock release : IPSEC_EVENT_CONNECTION_ACTIVE"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne v2, v4, :cond_3

    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "[IPSECADAPTER_ERIS]"

    const-string v5, "checkConnection wake lock release : IPSEC_EVENT_PEER_DISCONNECTED"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mDPDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    sget-object v4, Lcom/sec/epdg/IPSecAdapterForEris;->mOemHandler:Landroid/os/Handler;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .local v3, "msg":Landroid/os/Message;
    iput v0, v3, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanEventbyIPSecEvent(Lcom/sec/erisclient/ErisEvent;)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Lcom/sec/erisclient/ErisEventData;->getError()Lcom/sec/erisclient/ErisError;

    move-result-object v4

    sget-object v5, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    if-eq v4, v5, :cond_4

    new-instance v4, Lcom/sec/epdg/IWlanConnectResult;

    invoke-virtual {v1}, Lcom/sec/erisclient/ErisEventData;->getError()Lcom/sec/erisclient/ErisError;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/erisclient/ErisEventData;->getIkeErrorValue()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/sec/epdg/IPSecAdapterForEris;->getIWlanErrorFromErisError(Lcom/sec/erisclient/ErisError;I)Lcom/sec/epdg/IWlanError;

    move-result-object v5

    invoke-direct {v4, v0, v7, v5}, Lcom/sec/epdg/IWlanConnectResult;-><init>(ILcom/ipsec/client/IPsecConnection;Lcom/sec/epdg/IWlanError;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_4
    sget-object v4, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne v2, v4, :cond_5

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecAdapterForEris;->getConnectionInformation(I)Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method private onIpSecAdapterServiceStatusChanged(Lcom/sec/erisclient/ErisError;)V
    .locals 2
    .param p1, "event"    # Lcom/sec/erisclient/ErisError;

    .prologue
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_OK:Lcom/sec/erisclient/ErisError;

    if-ne p1, v0, :cond_0

    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "onIpSecAdapterServiceStatusChanged() Service ChangedService started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mbStarted:Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/erisclient/ErisError;->ERIS_DAEMON_STOPPED:Lcom/sec/erisclient/ErisError;

    if-ne p1, v0, :cond_1

    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "onIpSecAdapterServiceStatusChanged() Service ChangedService stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mbStarted:Z

    goto :goto_0

    :cond_1
    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "onIpSecAdapterServiceStatusChanged() Service Changedunknown event"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showToastOnConnectionStatusChanged(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    .locals 6
    .param p1, "event"    # Lcom/sec/erisclient/ErisEvent;
    .param p2, "data"    # Lcom/sec/erisclient/ErisEventData;

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "status":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .local v2, "toasttext":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "destroyConnection":Z
    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nConnection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getConnection()Lcom/sec/erisclient/IPSecConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "[IPSECADAPTER_ERIS]"

    const-string v4, "Received Connected event"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ERIS_EVENT_CONNECTED"

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v3, "[IPSECADAPTER_ERIS]"

    const-string v4, "IPSecConnection is eligible for removal from DB"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "[IPSECADAPTER_ERIS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_SETUP_FAILURE:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setup failed IKE error value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/erisclient/ErisEventData;->getIkeErrorValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    const-string v2, "ERIS_EVENT_SETUP_FAILURE"

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_4

    const-string v3, "Ipsec connection is disconnected"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    const-string v2, "ERIS_EVENT_DISCONNECTED"

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_5

    const-string v3, "Ipsec connection is disconnected by peer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    const-string v2, "ERIS_EVENT_PEER_DISCONNECTED"

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_ACTIVE:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_6

    const-string v3, "Ipsec connection is active"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "ERIS_EVENT_CONNECTION_ACTIVE"

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

    if-eq p1, v3, :cond_7

    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

    if-eq p1, v3, :cond_7

    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_a

    :cond_7
    const-string v3, "IPsec connection is disconnected by peer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_CONNECTION_RESET:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_8

    const-string v2, "ERIS_EVENT_CONNECTION_RESET"

    goto/16 :goto_0

    :cond_8
    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_ERROR:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_9

    const-string v2, "ERIS_EVENT_ERROR"

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lcom/sec/erisclient/ErisEvent;->EVENT_PEER_DISCONNECTED:Lcom/sec/erisclient/ErisEvent;

    if-ne p1, v3, :cond_0

    const-string v2, "ERIS_EVENT_PEER_DISCONNECTED"

    goto/16 :goto_0

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n Event received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    const-string v2, "ERIS_EVENT_UNKNOWN"

    goto/16 :goto_0
.end method

.method private static startService()V
    .locals 2

    .prologue
    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "Starting IPSec Service"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v0}, Lcom/sec/erisclient/ErisClient;->startService()V

    return-void
.end method

.method private stopService()V
    .locals 2

    .prologue
    sget-object v0, Lcom/sec/epdg/IPSecAdapterForEris;->mIPsecClient:Lcom/sec/erisclient/ErisClient;

    invoke-virtual {v0}, Lcom/sec/erisclient/ErisClient;->stopService()V

    const-string v0, "[IPSECADAPTER_ERIS]"

    const-string v1, "Stopping IPSec Service"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Lcom/sec/erisclient/ErisEvent;Lcom/sec/erisclient/ErisEventData;)V
    .locals 4
    .param p1, "event"    # Lcom/sec/erisclient/ErisEvent;
    .param p2, "data"    # Lcom/sec/erisclient/ErisEventData;

    .prologue
    const-string v2, "[IPSECADAPTER_ERIS]"

    const-string v3, "IPSecAdapterForEris:onConnectionChanged()"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;-><init>(Lcom/sec/epdg/IPSecAdapterForEris$1;)V

    .local v0, "eventInfo":Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;
    iput-object p1, v0, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;->event:Lcom/sec/erisclient/ErisEvent;

    iput-object p2, v0, Lcom/sec/epdg/IPSecAdapterForEris$ErisEventInfo;->data:Lcom/sec/erisclient/ErisEventData;

    iget-object v2, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceChanged(Lcom/sec/erisclient/ErisError;)V
    .locals 3
    .param p1, "error"    # Lcom/sec/erisclient/ErisError;

    .prologue
    const-string v1, "[IPSECADAPTER_ERIS]"

    const-string v2, "IPSecAdapterForEris:onServiceChanged()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postCheckConnectionMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postConnectMessage(IILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "ipv4addr"    # Ljava/lang/String;
    .param p5, "ipv6addr"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;-><init>(Lcom/sec/epdg/IPSecAdapterForEris$1;)V

    .local v0, "info":Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;
    check-cast p3, Lcom/sec/epdg/IWlanApnSetting;

    .end local p3    # "obj":Ljava/lang/Object;
    # invokes: Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V
    invoke-static {v0, p3}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$100(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Lcom/sec/epdg/IWlanApnSetting;)V

    # invokes: Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->setHandoverIpv4Addr(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$200(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Ljava/lang/String;)V

    # invokes: Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->setHandoverIpv6Addr(Ljava/lang/String;)V
    invoke-static {v0, p5}, Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;->access$300(Lcom/sec/epdg/IPSecAdapterForEris$ConnectInfo;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput p2, v1, Landroid/os/Message;->arg2:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postDisconnectMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v1, p0, Lcom/sec/epdg/IPSecAdapterForEris;->mHandler:Lcom/sec/epdg/IPSecAdapterForEris$IpSecAdapterHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
