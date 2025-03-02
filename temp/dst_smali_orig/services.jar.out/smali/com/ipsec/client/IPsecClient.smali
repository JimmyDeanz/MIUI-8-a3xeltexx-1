.class public Lcom/ipsec/client/IPsecClient;
.super Ljava/lang/Object;
.source "IPsecClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/client/IPsecClient$3;,
        Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;
    }
.end annotation


# static fields
.field private static final COMPONENT:Ljava/lang/String; = "IPsecRemoteConnection"

.field private static final TAG:Ljava/lang/String; = "IPSC"

.field private static final mConnectionLock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/ipsec/client/IPsecClient;


# instance fields
.field private MAX_SIZE:I

.field private mActiveConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ipsec/client/IPsecConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/ipsec/client/IPsecServiceCallbackBinder;

.field private mIPsecService:Lcom/ipsec/client/IIPsecService;

.field private mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ipsec/client/IIPsecListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceReadLock:Ljava/util/concurrent/locks/Lock;

.field private final mServiceReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mServiceWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v0, "IPSC"

    const-string v1, "IPsecRemoteConnection"

    const-string v2, "Starting. Package version is 939-23012-001-quicksec-vpnclient-for-android-3.5-4155-1a877303f36b-4155"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ipsec/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    const v0, 0x186a0

    iput v0, p0, Lcom/ipsec/client/IPsecClient;->MAX_SIZE:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/ipsec/client/IPsecClient$1;

    invoke-direct {v0, p0}, Lcom/ipsec/client/IPsecClient$1;-><init>(Lcom/ipsec/client/IPsecClient;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IPsecServiceCallbackBinder;

    const-string v0, "IPSC"

    const-string v1, "IPsecRemoteConnection"

    const-string v2, "IPsecClient()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object p1, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IIPsecService;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;
    .locals 0
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;
    .param p1, "x1"    # Lcom/ipsec/client/IIPsecService;

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IPsecServiceCallbackBinder;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IPsecServiceCallbackBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IPsecError;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    invoke-direct {p0}, Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;)Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;
    .locals 0
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;
    .param p1, "x1"    # Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    return-object p1
.end method

.method private checkSize(I)Z
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "IPSC"

    const-string v2, "IPsecRemoteConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSize() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/ipsec/client/IPsecClient;->MAX_SIZE:I

    if-le p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private decodeConnectionStateBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecConnectionState;)Z
    .locals 21
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "state"    # Lcom/ipsec/client/IPsecConnectionState;

    .prologue
    const-string v17, "gateway-ip"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setGatewayIP(Ljava/lang/String;)V

    const-string v17, "local-ip"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setLocalIP(Ljava/lang/String;)V

    const-string v17, "remote-identity"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setRemoteIdentity(Ljava/lang/String;)V

    const-string v17, "remote-identity-type"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "type":Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-static/range {v16 .. v16}, Lcom/ipsec/client/IPsecConnection$IdentityType;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setRemoteIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V

    :cond_0
    const-string v17, "own-identity"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setOwnIdentity(Ljava/lang/String;)V

    const-string v17, "own-identity-type"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-static/range {v16 .. v16}, Lcom/ipsec/client/IPsecConnection$IdentityType;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setOwnIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V

    :cond_1
    const-string v17, "second-own-identity"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "secondOwnId":Ljava/lang/String;
    if-eqz v14, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecConnectionState;->setSecondOwnIdentity(Ljava/lang/String;)V

    const-string v17, "second-own-identity-type"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-static/range {v16 .. v16}, Lcom/ipsec/client/IPsecConnection$IdentityType;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setSecondOwnIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V

    :cond_2
    const-string v17, "rac-ip"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, "racAddr":[Ljava/lang/String;
    if-eqz v10, :cond_8

    move-object v4, v10

    .local v4, "arr$":[Ljava/lang/String;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_8

    aget-object v3, v4, v7

    .local v3, "addr":Ljava/lang/String;
    if-nez v3, :cond_3

    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    const-string v19, "Skipping null rac-ip!"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static {v3}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4Subnet(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_4
    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-static {v3}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6Subnet(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_6
    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "invalid rac-ip: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "addr":Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_8
    const-string v17, "rac-dns"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, "racDNS":[Ljava/lang/String;
    if-eqz v11, :cond_c

    move-object v4, v11

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v8, v4

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v8, :cond_c

    aget-object v6, v4, v7

    .local v6, "dns":Ljava/lang/String;
    if-nez v6, :cond_9

    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    const-string v19, "Skipping null rac-dns!"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    invoke-static {v6}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-static {v6}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "invalid rac-dns: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "dns":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_c
    const-string v17, "rac-subnet"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, "racSubnet":[Ljava/lang/String;
    if-eqz v12, :cond_10

    move-object v4, v12

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v8, v4

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v8, :cond_10

    aget-object v15, v4, v7

    .local v15, "subnet":Ljava/lang/String;
    if-nez v15, :cond_d

    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    const-string v19, "Skipping null rac-subnet!"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    invoke-static {v15}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4Subnet(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessSubnet(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    invoke-static {v15}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6Subnet(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessSubnet(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "invalid rac-subnet: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v15    # "subnet":Ljava/lang/String;
    :cond_10
    const-string v17, "rac-vendor-attr"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v13

    .local v13, "racVendorAttr":[Landroid/os/Parcelable;
    if-eqz v13, :cond_12

    move-object v4, v13

    .local v4, "arr$":[Landroid/os/Parcelable;
    array-length v8, v4

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_6
    if-ge v7, v8, :cond_12

    aget-object v9, v4, v7

    .local v9, "p":Landroid/os/Parcelable;
    if-nez v9, :cond_11

    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    const-string v19, "Skipping null rac-vendor-attr!"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_11
    move-object v5, v9

    check-cast v5, Landroid/os/Bundle;

    .local v5, "attr":Landroid/os/Bundle;
    const-string v17, "type"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/ipsec/client/IPsecConnectionState;->addIkeConfigurationVendorAttribute(I[B)V

    goto :goto_7

    .end local v4    # "arr$":[Landroid/os/Parcelable;
    .end local v5    # "attr":Landroid/os/Bundle;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "p":Landroid/os/Parcelable;
    :cond_12
    const-string v17, "virtual-adapter-name"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setVirtualAdapterName(Ljava/lang/String;)V

    const-string v17, "virtual-adapter-mtu"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setVirtualAdapterMTU(I)V

    const-string v17, "eap-reauth-data"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setEapReAuthData([B)V

    const/16 v17, 0x1

    return v17
.end method

.method private decodeRelayDataBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "data"    # Lcom/ipsec/client/IPsecRelayData;

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "queryData() result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "operation-id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "operation-id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecRelayData;->setOperationId(I)V

    const-string v7, "signature"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecRelayData;->setSignature([B)V

    const-string v7, "signature-input"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecRelayData;->setSignatureInput([B)V

    const-string v7, "signature-scheme"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecRelayData;->setSignatureScheme(Ljava/lang/String;)V

    const-string v7, "dialog-message"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "dialog-message"

    invoke-virtual {p1, v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecRelayData;->setDialogMessage(Ljava/lang/String;)V

    :cond_0
    const-string v7, "dialog-attributes"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "dialog-attributes"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .local v2, "authAttr":[Landroid/os/Parcelable;
    if-eqz v2, :cond_3

    move-object v0, v2

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .local v5, "p":Landroid/os/Parcelable;
    if-nez v5, :cond_2

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "Skipping null dialog-attribute!"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Landroid/os/Parcelable;
    .end local v2    # "authAttr":[Landroid/os/Parcelable;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "p":Landroid/os/Parcelable;
    :cond_1
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "decodeRelayDataBundle(): mandatory operation-id missing"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return v6

    .restart local v0    # "arr$":[Landroid/os/Parcelable;
    .restart local v2    # "authAttr":[Landroid/os/Parcelable;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "p":Landroid/os/Parcelable;
    :cond_2
    move-object v1, v5

    check-cast v1, Landroid/os/Bundle;

    .local v1, "attr":Landroid/os/Bundle;
    const-string v7, "name"

    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v1, v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Lcom/ipsec/client/IPsecRelayData;->addDialogAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "arr$":[Landroid/os/Parcelable;
    .end local v1    # "attr":Landroid/os/Bundle;
    .end local v2    # "authAttr":[Landroid/os/Parcelable;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "p":Landroid/os/Parcelable;
    :cond_3
    const/4 v6, 0x1

    goto :goto_2
.end method

.method private doStopService()Lcom/ipsec/client/IPsecError;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    const-string v11, "stopService()"

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .local v6, "result":Lcom/ipsec/client/IPsecError;
    const/4 v4, 0x0

    .local v4, "parameterBundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .local v8, "resultBundle":Landroid/os/Bundle;
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v10, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .local v0, "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ipsec/client/IPsecConnection;

    .local v1, "c":Lcom/ipsec/client/IPsecConnection;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    .end local v1    # "c":Lcom/ipsec/client/IPsecConnection;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :catchall_0
    move-exception v9

    :goto_1
    iget-object v10, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v10, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stopService() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v10, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v9

    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v9

    .restart local v0    # "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v9, :cond_1

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .local v7, "result":Lcom/ipsec/client/IPsecError;
    :goto_2
    return-object v7

    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_1
    :try_start_5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .local v5, "parameterBundle":Landroid/os/Bundle;
    :try_start_6
    const-string v9, "version"

    const-string v10, "5"

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    iget-object v10, p0, Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IPsecServiceCallbackBinder;

    invoke-interface {v9, v10}, Lcom/ipsec/client/IIPsecService;->unregisterCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v9, v5}, Lcom/ipsec/client/IIPsecService;->stopService(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v8

    if-nez v8, :cond_2

    :try_start_8
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (return value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_2

    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_2

    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_2
    :try_start_a
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopService(): result version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "version"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "error"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "error"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_2

    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_3
    :try_start_b
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    if-eqz v9, :cond_4

    sget-object v9, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_4
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_2

    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    goto/16 :goto_1
.end method

.method private encodeConnectBundle(Lcom/ipsec/client/IPsecConnection;Ljava/lang/StringBuilder;)Landroid/os/Bundle;
    .locals 37
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "errorCause"    # Ljava/lang/StringBuilder;

    .prologue
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, "bundle":Landroid/os/Bundle;
    const-string v34, "version"

    const-string v35, "5"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getGateway()Ljava/lang/String;

    move-result-object v32

    .local v32, "str":Ljava/lang/String;
    if-nez v32, :cond_1

    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_GW_ADDRESS:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v5

    .restart local v5    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v34, "gateway"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v34, v0

    if-nez v34, :cond_3

    const-string v34, "subnet-type"

    sget-object v35, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IPVersion;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getInternalSubnets()Ljava/util/Vector;

    move-result-object v33

    .local v33, "subnetV":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "contents":[Ljava/lang/String;
    if-eqz v33, :cond_4

    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v34

    if-lez v34, :cond_4

    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v10, v0, [Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    :goto_2
    const-string v34, "internal-subnet"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getInterfaces()Ljava/util/Vector;

    move-result-object v17

    .local v17, "ifaceV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecNetworkInterface;>;"
    if-nez v17, :cond_6

    const-string v34, "interface"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v34

    if-nez v34, :cond_8

    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_HOST_AUTHENTICATION:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_0

    .end local v10    # "contents":[Ljava/lang/String;
    .end local v17    # "ifaceV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecNetworkInterface;>;"
    .end local v33    # "subnetV":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_3
    const-string v34, "subnet-type"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IPVersion;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .restart local v10    # "contents":[Ljava/lang/String;
    .restart local v33    # "subnetV":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v34, v0

    sget-object v35, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_5

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v10, v0, [Ljava/lang/String;

    const/16 v34, 0x0

    new-instance v35, Ljava/lang/String;

    const-string v36, "0.0.0.0/0"

    invoke-direct/range {v35 .. v36}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v35, v10, v34

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v34, v0

    sget-object v35, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_2

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v10, v0, [Ljava/lang/String;

    const/16 v34, 0x0

    new-instance v35, Ljava/lang/String;

    const-string v36, "::/0"

    invoke-direct/range {v35 .. v36}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v35, v10, v34

    goto/16 :goto_2

    .restart local v17    # "ifaceV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecNetworkInterface;>;"
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v16, v0

    .local v16, "ifaceB":[Landroid/os/Bundle;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ipsec/client/IPsecNetworkInterface;

    .local v15, "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    aput-object v34, v16, v13

    aget-object v34, v16, v13

    const-string v35, "name"

    invoke-virtual {v15}, Lcom/ipsec/client/IPsecNetworkInterface;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v34, v16, v13

    const-string v35, "precedence"

    invoke-virtual {v15}, Lcom/ipsec/client/IPsecNetworkInterface;->getPrecedence()I

    move-result v36

    invoke-virtual/range {v34 .. v36}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v15    # "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    :cond_7
    const-string v34, "interface"

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_3

    .end local v13    # "i":I
    .end local v16    # "ifaceB":[Landroid/os/Bundle;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v34

    sget-object v35, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PRE_SHARED:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPreSharedKey()Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_b

    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PRESHARED_KEY:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v34

    sget-object v35, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v34

    sget-object v35, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_b

    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_EAP_METHOD:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v34

    sget-object v35, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PUBLIC_KEY:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v34

    if-nez v34, :cond_b

    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    const-string v34, "host-authentication"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "user-authentication"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isUserAuthentication()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getTunnelMode()Lcom/ipsec/client/IPsecConnection$TunnelMode;

    move-result-object v34

    if-nez v34, :cond_c

    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_TUNNEL_MODE:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_c
    const-string v34, "tunnel-mode"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getTunnelMode()Lcom/ipsec/client/IPsecConnection$TunnelMode;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$TunnelMode;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "disable-split-tunneling"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isSplitTunnelingDisabled()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v34, "disable-ikev2-fragmentation"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isIkev2FragmentationDisabled()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v34, "ikev2-fragmentation-limit"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkev2FragmentationLimit()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecGroups()Ljava/util/Vector;

    move-result-object v29

    .local v29, "ipsecGroupV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecGroup;>;"
    if-eqz v29, :cond_e

    invoke-virtual/range {v29 .. v29}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .local v28, "ipsecGroupA":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_d

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v28, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_d
    const-string v34, "ipsec-group"

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .end local v13    # "i":I
    .end local v28    # "ipsecGroupA":[Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIPsecLifeType()Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    move-result-object v34

    if-nez v34, :cond_f

    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IPSEC_LIFETIME:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_f
    const-string v34, "ipsec-life-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIPsecLifeType()Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "ipsec-life-value"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIPsecLifeValue()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecEncryptions()Ljava/util/Vector;

    move-result-object v27

    .local v27, "ipsecEncryptionV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecEncryption;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    .local v26, "ipsecEncryptionA":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_10

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v26, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_10
    const-string v34, "ipsec-encryption"

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecIntegrities()Ljava/util/Vector;

    move-result-object v31

    .local v31, "ipsecIntegrityV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .local v30, "ipsecIntegrityA":[Ljava/lang/String;
    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_11

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v30, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_11
    const-string v34, "ipsec-integrity"

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllGroups()Ljava/util/Vector;

    move-result-object v21

    .local v21, "ikeGroupV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeGroup;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .local v20, "ikeGroupA":[Ljava/lang/String;
    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_12

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IkeGroup;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v20, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_12
    const-string v34, "group"

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v34, "ike-life"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkeLife()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v34, "ike-version"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkeVersion()Lcom/ipsec/client/IPsecConnection$IkeVersion;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IkeVersion;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "aggressive-mode"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isAggressiveMode()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIkeEncryptions()Ljava/util/Vector;

    move-result-object v19

    .local v19, "ikeEncryptionV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeEncryption;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .local v18, "ikeEncryptionA":[Ljava/lang/String;
    const/4 v13, 0x0

    :goto_9
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_13

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v18, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_13
    const-string v34, "ike-encryption"

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIkeIntegrities()Ljava/util/Vector;

    move-result-object v23

    .local v23, "ikeIntegrityV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeIntegrity;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .local v22, "ikeIntegrityA":[Ljava/lang/String;
    const/4 v13, 0x0

    :goto_a
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_14

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v22, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_14
    const-string v34, "ike-integrity"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v34, "mobike"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isMobike()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v34, "ike-window-size"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkeWindowSize()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v34

    if-nez v34, :cond_15

    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_OWN_IDENTITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_15
    const-string v34, "own-identity-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IdentityType;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "own-identity"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getOwnIdentity()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v34

    if-eqz v34, :cond_16

    const-string v34, "second-own-identity-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IdentityType;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "second-own-identity"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondOwnIdentity()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondUsername()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_17

    const-string v34, "second-username"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondUsername()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "second-password"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondPassword()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentity()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_18

    const-string v34, "remote-identity-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IdentityType;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "remote-identity-enforce"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentityEnforce()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v34, "remote-identity"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentity()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const-string v34, "username"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getUsername()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "password"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPassword()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapReAuthPassword()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_19

    const-string v34, "eap-reauth-password"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapReAuthPassword()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapReAuthData()[B

    move-result-object v34

    if-eqz v34, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapReAuthData()[B

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/ipsec/client/IPsecClient;->checkSize(I)Z

    move-result v34

    if-nez v34, :cond_1a

    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_EAP_REAUTH_DATA:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1a
    const-string v34, "eap-reauth-data"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapReAuthData()[B

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isHybridMode()Z

    move-result v34

    if-eqz v34, :cond_1c

    const-string v34, "hybrid-mode"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1c
    const-string v34, "pre-shared-key"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPreSharedKey()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "eap-methods"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$EapMethod;->maskValue()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v34

    sget-object v35, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_1d

    const-string v34, "second-eap-method"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$EapMethod;->maskValue()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1d
    const-string v34, "dpd-timeout"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getDpdTimeout()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v34, "natt-keepalive-timeout"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getNattKeepaliveTimeout()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v34, "connection-timeout"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getConnectTimeout()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPMTULimit()I

    move-result v34

    if-eqz v34, :cond_1e

    const-string v34, "pmtu-limit"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPMTULimit()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllCaCertificateDatas()Ljava/util/Vector;

    move-result-object v7

    .local v7, "caData":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    if-eqz v7, :cond_20

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v34

    if-lez v34, :cond_20

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v6, v0, [Landroid/os/Parcelable;

    .local v6, "caArray":[Landroid/os/Parcelable;
    const/4 v13, 0x0

    :goto_b
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_1f

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "b":Landroid/os/Bundle;
    const-string v35, "data"

    invoke-virtual {v7, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    aput-object v4, v6, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .end local v4    # "b":Landroid/os/Bundle;
    :cond_1f
    const-string v34, "ca-certificate"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .end local v6    # "caArray":[Landroid/os/Parcelable;
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllImCertificateDatas()Ljava/util/Vector;

    move-result-object v25

    .local v25, "imData":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    if-eqz v25, :cond_27

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v34

    if-lez v34, :cond_27

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v24, v0

    .local v24, "imArray":[Landroid/os/Parcelable;
    const/4 v13, 0x0

    :goto_d
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_21

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .restart local v4    # "b":Landroid/os/Bundle;
    const-string v35, "data"

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    aput-object v4, v24, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .end local v4    # "b":Landroid/os/Bundle;
    .end local v24    # "imArray":[Landroid/os/Parcelable;
    .end local v25    # "imData":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_20
    const-string v34, "ca-certificate"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_c

    .restart local v24    # "imArray":[Landroid/os/Parcelable;
    .restart local v25    # "imData":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_21
    const-string v34, "im-certificate"

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .end local v24    # "imArray":[Landroid/os/Parcelable;
    :goto_e
    const-string v34, "certificate"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getCertificateData()[B

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v34, "private-key"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyData()[B

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v34, "private-key-format"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyFormat()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_25

    :cond_22
    const/4 v11, 0x0

    .local v11, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_28

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v2, v0, [Ljava/lang/String;

    .local v2, "addresses":[Ljava/lang/String;
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_23

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "count":I
    .local v12, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v2, v11

    move v11, v12

    .end local v12    # "count":I
    .restart local v11    # "count":I
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_24

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "count":I
    .restart local v12    # "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v2, v11

    move v11, v12

    .end local v12    # "count":I
    .restart local v11    # "count":I
    :cond_24
    const-string v34, "request-rac-ip"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .end local v2    # "addresses":[Ljava/lang/String;
    .end local v11    # "count":I
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_26

    const-string v34, "virtual-adapter-name"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    const-string v34, "virtual-adapter-conf-method"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterConfiguration()Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "global-dns-conf"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getGlobalDnsConfiguration()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllRequestIkeCfgAttributes()Ljava/util/Vector;

    move-result-object v9

    .local v9, "cfgAttrsV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    if-eqz v9, :cond_2a

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v34

    if-lez v34, :cond_2a

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v8, v0, [Landroid/os/Bundle;

    .local v8, "cfgAttrsB":[Landroid/os/Bundle;
    const/4 v13, 0x0

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_29

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    .local v3, "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    aput-object v34, v8, v13

    aget-object v34, v8, v13

    const-string v35, "type"

    invoke-virtual {v3}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getType()I

    move-result v36

    invoke-virtual/range {v34 .. v36}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    aget-object v34, v8, v13

    const-string v35, "value"

    invoke-virtual {v3}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getData()[B

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .end local v3    # "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    .end local v8    # "cfgAttrsB":[Landroid/os/Bundle;
    .end local v9    # "cfgAttrsV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_27
    const-string v34, "im-certificate"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .restart local v11    # "count":I
    :cond_28
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v2, v0, [Ljava/lang/String;

    .restart local v2    # "addresses":[Ljava/lang/String;
    goto/16 :goto_f

    .end local v2    # "addresses":[Ljava/lang/String;
    .end local v11    # "count":I
    .restart local v8    # "cfgAttrsB":[Landroid/os/Bundle;
    .restart local v9    # "cfgAttrsV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_29
    const-string v34, "request-rac-vendor-attr"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .end local v8    # "cfgAttrsB":[Landroid/os/Bundle;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getCertCheckRevocation()Z

    move-result v34

    if-eqz v34, :cond_2b

    const-string v34, "cert-check-revocation"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAlgorithmSecurityStrength()I

    move-result v34

    if-lez v34, :cond_0

    const-string v34, "algorithm-security-strength"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAlgorithmSecurityStrength()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private encodeRelayData(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "data"    # Lcom/ipsec/client/IPsecRelayData;

    .prologue
    const/4 v5, 0x0

    .local v5, "operationId":I
    invoke-virtual {p2}, Lcom/ipsec/client/IPsecRelayData;->getOperationId()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const-string v6, "operation-id"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "signature"

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecRelayData;->getSignature()[B

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v6, "signature-input"

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecRelayData;->getSignatureInput()[B

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v6, "signature-scheme"

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecRelayData;->getSignatureScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecRelayData;->getDialogAttributes()Ljava/util/Vector;

    move-result-object v1

    .local v1, "authAttrs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v2, v6, [Landroid/os/Bundle;

    .local v2, "authAttrsB":[Landroid/os/Bundle;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;

    .local v0, "attr":Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    aput-object v6, v2, v3

    aget-object v6, v2, v3

    const-string v7, "name"

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v6, v2, v3

    const-string v7, "value"

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;->getAttributeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "attr":Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;
    :cond_1
    const-string v6, "dialog-attributes"

    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .end local v2    # "authAttrsB":[Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ipsec/client/IPsecClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/ipsec/client/IPsecClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ipsec/client/IPsecClient;->mInstance:Lcom/ipsec/client/IPsecClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ipsec/client/IPsecClient;

    invoke-direct {v0, p0}, Lcom/ipsec/client/IPsecClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ipsec/client/IPsecClient;->mInstance:Lcom/ipsec/client/IPsecClient;

    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecClient;->mInstance:Lcom/ipsec/client/IPsecClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;
    .locals 6
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "defaultError"    # Lcom/ipsec/client/IPsecError;

    .prologue
    move-object v1, p2

    .local v1, "ipsecError":Lcom/ipsec/client/IPsecError;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/ipsec/client/IPsecError;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "IPSC"

    const-string v3, "IPsecRemoteConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown IPsecError string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V
    .locals 5
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "state"    # Lcom/ipsec/client/IPsecEvent;
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "ikeErrorValue"    # I

    .prologue
    move-object v0, p2

    .local v0, "event":Lcom/ipsec/client/IPsecEvent;
    new-instance v1, Lcom/ipsec/client/IPsecEventData;

    invoke-direct {v1}, Lcom/ipsec/client/IPsecEventData;-><init>()V

    .local v1, "eventData":Lcom/ipsec/client/IPsecEventData;
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ipsec/client/IIPsecListener;

    .local v2, "eventListener":Lcom/ipsec/client/IIPsecListener;
    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    invoke-virtual {v1, p3}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/ipsec/client/IPsecClient$2;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/ipsec/client/IPsecClient$2;-><init>(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecListener;Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v3, "onUpdateThread":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public checkConnection(Lcom/ipsec/client/IPsecConnection;I)Lcom/ipsec/client/IPsecError;
    .locals 12
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "timeout"    # I

    .prologue
    const/4 v11, 0x0

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkConnection("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .local v3, "result":Lcom/ipsec/client/IPsecError;
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v6, :cond_0

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string v8, "checkConnection(): invalid service state"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkConnection() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .end local v3    # "result":Lcom/ipsec/client/IPsecError;
    .local v4, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v7, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    .local v5, "resultBundle":Landroid/os/Bundle;
    if-nez p1, :cond_4

    :try_start_2
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "checkConnection(): null connection"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    :cond_1
    :goto_1
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v6, :cond_2

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    .local v0, "connectionId":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string v6, "version"

    const-string v8, "5"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "connection-id"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "connection-timeout"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v6, v2}, Lcom/ipsec/client/IIPsecService;->checkConnection(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .end local v0    # "connectionId":I
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :cond_2
    :goto_2
    :try_start_4
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v6, :cond_3

    if-nez v5, :cond_6

    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "checkConnection(): no result available"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    :cond_3
    :goto_3
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkConnection() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .end local v3    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_0

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "result":Lcom/ipsec/client/IPsecError;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "checkConnection(): connection not connected"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    if-ge p2, v6, :cond_1

    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "checkConnection(): invalid timeout"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_1

    .restart local v0    # "connectionId":I
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkConnection(): remote exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto :goto_2

    .end local v0    # "connectionId":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :cond_6
    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkConnection(): result contains error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "error"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_3

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v5    # "resultBundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkConnection() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method

.method public clearLog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v3, "IPSC"

    const-string v4, "IPsecRemoteConnection"

    const-string v5, "clearLog()"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v3, :cond_1

    const-string v3, "IPSC"

    const-string v4, "IPsecRemoteConnection"

    const-string v5, "clearLog(): failed (service not started)"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "parameterBundle":Landroid/os/Bundle;
    const-string v3, "version"

    const-string v4, "5"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v3, v1}, Lcom/ipsec/client/IIPsecService;->clearLog(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .local v2, "resultBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v2, :cond_2

    const-string v3, "IPSC"

    const-string v4, "IPsecRemoteConnection"

    const-string v5, "clearLog(): failed (no result available)"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v2    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "IPSC"

    const-string v4, "IPsecRemoteConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearLog(): failed (remote exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "parameterBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .restart local v1    # "parameterBundle":Landroid/os/Bundle;
    .restart local v2    # "resultBundle":Landroid/os/Bundle;
    :cond_2
    const-string v3, "error"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "IPSC"

    const-string v4, "IPsecRemoteConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearLog(): failed (error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public connect(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;
    .locals 1
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ipsec/client/IPsecClient;->connect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;
    .locals 12
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "eventData"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .local v4, "result":Lcom/ipsec/client/IPsecError;
    const/4 v3, 0x0

    .local v3, "parameterBundle":Landroid/os/Bundle;
    const/4 v6, 0x0

    .local v6, "resultBundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, "connectionId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "errorCause":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v7, :cond_0

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (invalid service state)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .local v5, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v5

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v8, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_1

    :try_start_2
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (null connection)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_0

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v7

    if-eqz v7, :cond_2

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_ALREADY_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (already connected)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_2
    :try_start_4
    invoke-direct {p0, p1, v2}, Lcom/ipsec/client/IPsecClient;->encodeConnectBundle(Lcom/ipsec/client/IPsecConnection;Ljava/lang/StringBuilder;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v7, v9}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v4

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (failing parameter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_3
    :try_start_5
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v3}, Lcom/ipsec/client/IIPsecService;->connect(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    if-nez v6, :cond_4

    :try_start_6
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (no return value)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (remote exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_4
    :try_start_8
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect(): result version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "version"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v7, v9}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v4

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "error"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ike-error-value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ike-error-value"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-eq v4, v7, :cond_5

    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_8

    :cond_5
    const-string v7, "connection-id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (invalid result)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_6
    :try_start_9
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v0}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_8
    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_a

    if-eqz p2, :cond_9

    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    :goto_2
    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :catchall_0
    move-exception v7

    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v7

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v7

    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    :cond_9
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_2

    :cond_a
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_c

    if-eqz p2, :cond_b

    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto :goto_2

    :cond_b
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    const-string v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ike-error-value"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_2

    :cond_c
    if-eqz p2, :cond_d

    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const-string v7, "ike-error-value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto :goto_2

    :cond_d
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    const-string v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ike-error-value"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public continueConnect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;Lcom/ipsec/client/IPsecRelayData;)Lcom/ipsec/client/IPsecError;
    .locals 14
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "eventData"    # Lcom/ipsec/client/IPsecEventData;
    .param p3, "data"    # Lcom/ipsec/client/IPsecRelayData;

    .prologue
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .local v6, "result":Lcom/ipsec/client/IPsecError;
    const/4 v5, 0x0

    .local v5, "parameterBundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .local v8, "resultBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "connectionId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "errorCause":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v9, :cond_0

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (invalid service state)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .local v7, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v7

    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v10, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (null connection)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_0

    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_2
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/ipsec/client/IPsecClient;->encodeConnectBundle(Lcom/ipsec/client/IPsecConnection;Ljava/lang/StringBuilder;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v9, v11}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v6

    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (failing parameter "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v1

    const-string v9, "connection-id"

    invoke-virtual {v5, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p3

    invoke-direct {p0, v5, v0}, Lcom/ipsec/client/IPsecClient;->encodeRelayData(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z

    move-result v4

    .local v4, "ok":Z
    if-nez v4, :cond_4

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect(): encode failed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (operation id not set)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_4
    :try_start_5
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v9, v5}, Lcom/ipsec/client/IIPsecService;->connect(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    if-nez v8, :cond_5

    :try_start_6
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (no return value)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    :try_start_7
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (remote exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_5
    :try_start_8
    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect(): result version: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "version"

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "error"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "error"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v9, v11}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v6

    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "connect(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "error"

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ike-error-value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ike-error-value"

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v6, v9, :cond_9

    if-eqz p2, :cond_6

    sget-object v9, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    :cond_6
    :goto_2
    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_7
    :try_start_9
    const-string v9, "connection-id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "connect() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (invalid result)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_8
    :try_start_a
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_1

    .end local v4    # "ok":Z
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v9

    iget-object v10, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v10, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v9

    .restart local v4    # "ok":Z
    :cond_9
    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    if-ne v6, v9, :cond_a

    if-eqz p2, :cond_6

    sget-object v9, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto/16 :goto_2

    :cond_a
    if-eqz p2, :cond_6

    sget-object v9, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const-string v9, "error"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const-string v9, "ike-error-value"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto/16 :goto_2
.end method

.method public disconnect(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;
    .locals 1
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ipsec/client/IPsecClient;->disconnect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;
    .locals 12
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "eventData"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .local v4, "result":Lcom/ipsec/client/IPsecError;
    const/4 v2, 0x0

    .local v2, "parameterBundle":Landroid/os/Bundle;
    const/4 v6, 0x0

    .local v6, "resultBundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, "connectionId":I
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v7, :cond_0

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (invalid service state)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .local v5, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v5

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v8, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_1

    :try_start_2
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disconnect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (null connection)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_0

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v7

    if-nez v7, :cond_2

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disconnect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (connection not connected)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    .local v3, "parameterBundle":Landroid/os/Bundle;
    :try_start_7
    const-string v7, "version"

    const-string v9, "5"

    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "connection-id"

    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v3}, Lcom/ipsec/client/IIPsecService;->disconnect(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v6

    if-nez v6, :cond_3

    :try_start_9
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disconnect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (no return value)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :catchall_0
    move-exception v7

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v7

    :catchall_1
    move-exception v7

    :goto_1
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v7

    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disconnect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_d
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disconnect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (remote exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_3
    :try_start_e
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disconnect(): result version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "version"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v7, v9}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v4

    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disconnect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "error"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ike-error-value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ike-error-value"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_6

    if-eqz p2, :cond_5

    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    :goto_3
    move-object v2, v3

    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_4
    :try_start_f
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    const-string v7, "ike-error-value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto :goto_3

    :cond_7
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    const-string v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ike-error-value"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_3

    :catchall_3
    move-exception v7

    move-object v2, v3

    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    goto/16 :goto_1
.end method

.method public getIPsecConnectionState(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecConnectionState;
    .locals 11
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIPsecConnectionState("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .local v0, "connectionId":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string v8, "getIPsecConnectionState():  (invalid connection)"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Lcom/ipsec/client/IPsecConnectionState;

    invoke-direct {v4, p1}, Lcom/ipsec/client/IPsecConnectionState;-><init>(Lcom/ipsec/client/IPsecConnection;)V

    .local v4, "state":Lcom/ipsec/client/IPsecConnectionState;
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v6, :cond_2

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string v8, "getIPsecConnectionState():  (invalid service state)"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v5

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v6, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string v7, "version"

    const-string v8, "5"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "connection-id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v2}, Lcom/ipsec/client/IIPsecService;->connectionState(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .local v3, "resultBundle":Landroid/os/Bundle;
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v3, :cond_3

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string v8, "getIPsecConnectionState():  (no return value)"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    goto :goto_0

    .end local v3    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getIPsecConnectionState():  (remote exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v5

    goto/16 :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    .restart local v3    # "resultBundle":Landroid/os/Bundle;
    :cond_3
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIPsecConnectionState(): result version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "version"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "error"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIPsecConnectionState() =  (error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "error"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/ipsec/client/IPsecClient;->decodeConnectionStateBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecConnectionState;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string v8, "getIPsecConnectionState(): failed to decode result bundle"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    goto/16 :goto_0

    :cond_5
    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIPsecConnectionState(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getLogReader()Lcom/ipsec/client/IPsecLogReader;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "getLogReader()"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .local v3, "rd":Lcom/ipsec/client/IPsecLogReader;
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v7, :cond_0

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "getLogReader(): no log available"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v6

    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string v7, "version"

    const-string v8, "5"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v2}, Lcom/ipsec/client/IIPsecService;->getLog(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .local v5, "resultBundle":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v5, :cond_1

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "getLogReader(): no log available"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_0

    .end local v5    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "getLogReader(): no log available"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v6

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    .restart local v5    # "resultBundle":Landroid/os/Bundle;
    :cond_1
    const-string v7, "error"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getLogReader() failed (error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "error"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_0

    :cond_2
    const-string v7, "log-content"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :try_start_4
    const-string v7, "log-content"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "logContent":[B
    if-nez v1, :cond_3

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "getLogReader(): log-content null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    goto/16 :goto_0

    :cond_3
    new-instance v4, Lcom/ipsec/client/IPsecLogReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Lcom/ipsec/client/IPsecLogReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v3    # "rd":Lcom/ipsec/client/IPsecLogReader;
    .local v4, "rd":Lcom/ipsec/client/IPsecLogReader;
    move-object v3, v4

    .end local v4    # "rd":Lcom/ipsec/client/IPsecLogReader;
    .restart local v3    # "rd":Lcom/ipsec/client/IPsecLogReader;
    goto/16 :goto_0

    .end local v1    # "logContent":[B
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    move-object v4, v6

    goto/16 :goto_0

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    move-object v4, v6

    goto/16 :goto_0
.end method

.method public getServiceConnection()Landroid/content/ServiceConnection;
    .locals 4

    .prologue
    new-instance v0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;-><init>(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$1;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    const-string v0, "IPSC"

    const-string v1, "IPsecRemoteConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceConnection() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    return-object v0
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    sget-object v1, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ipsec/client/IPsecServiceInterface;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "IPSC"

    const-string v2, "IPsecRemoteConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceIntent() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public isConnected(Lcom/ipsec/client/IPsecConnection;)Z
    .locals 11
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    const/4 v10, 0x0

    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .local v3, "result":Z
    const/4 v0, 0x0

    .local v0, "connectionId":I
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v5, :cond_0

    const/4 v3, 0x0

    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (invalid service state)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    :goto_0
    return v5

    :cond_0
    :try_start_1
    sget-object v6, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v3, 0x0

    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (invalid connection)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string v5, "version"

    const-string v7, "5"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "connection-id"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v5, v2}, Lcom/ipsec/client/IIPsecService;->isConnected(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .local v4, "resultBundle":Landroid/os/Bundle;
    if-nez v4, :cond_3

    const/4 v3, 0x0

    :try_start_5
    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (no return value)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto/16 :goto_0

    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    :try_start_6
    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (remote exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto/16 :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "resultBundle":Landroid/os/Bundle;
    :cond_3
    :try_start_7
    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): result version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "version"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "error"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x0

    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "error"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto/16 :goto_0

    :cond_4
    :try_start_8
    const-string v5, "connected"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v3, 0x0

    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (invalid result)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto/16 :goto_0

    :cond_5
    :try_start_9
    const-string v5, "connected"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public isServiceStarted()Z
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .local v0, "isStarted":Z
    :goto_0
    iget-object v1, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v1, "IPSC"

    const-string v2, "IPsecRemoteConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceStarted() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .end local v0    # "isStarted":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isStarted":Z
    goto :goto_0

    .end local v0    # "isStarted":Z
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public queryData(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecRelayData;)Lcom/ipsec/client/IPsecError;
    .locals 9
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "data"    # Lcom/ipsec/client/IPsecRelayData;

    .prologue
    const/4 v8, 0x0

    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryData("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .local v0, "connectionId":I
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v4, :cond_0

    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    const-string v6, "queryData():  (invalid service state)"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    sget-object v5, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    const-string v7, "queryData():  (invalid connection)"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string v4, "version"

    const-string v6, "5"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "connection-id"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v4, v2}, Lcom/ipsec/client/IIPsecService;->connectionQuery(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .local v3, "resultBundle":Landroid/os/Bundle;
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v3, :cond_3

    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    const-string v6, "queryData():  (no return value)"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto :goto_0

    .end local v3    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v4, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryData():  (remote exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    .restart local v3    # "resultBundle":Landroid/os/Bundle;
    :cond_3
    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryData(): result version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "version"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "error"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryData() =  (error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v3, p2}, Lcom/ipsec/client/IPsecClient;->decodeRelayDataBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    const-string v6, "getIPsecConnectionState(): failed to decode result bundle"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_0

    :cond_5
    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryData(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_0
.end method

.method public sendKeepalive(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;
    .locals 12
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    const/4 v11, 0x0

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendKeepalive("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .local v3, "result":Lcom/ipsec/client/IPsecError;
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v6, :cond_0

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string v8, "sendKeepalive(): invalid service state"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendKeepalive() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .end local v3    # "result":Lcom/ipsec/client/IPsecError;
    .local v4, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v7, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    .local v5, "resultBundle":Landroid/os/Bundle;
    if-nez p1, :cond_4

    :try_start_2
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "sendKeepalive(): null connection"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    :cond_1
    :goto_1
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v6, :cond_2

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    .local v0, "connectionId":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string v6, "version"

    const-string v8, "5"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "connection-id"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v6, v2}, Lcom/ipsec/client/IIPsecService;->sendKeepalive(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .end local v0    # "connectionId":I
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :cond_2
    :goto_2
    :try_start_4
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v6, :cond_3

    if-nez v5, :cond_5

    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "checkConnection(): no result available"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    :cond_3
    :goto_3
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendKeepalive() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .end local v3    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_0

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "result":Lcom/ipsec/client/IPsecError;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "sendKeepalive(): connection not connected"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    goto :goto_1

    .restart local v0    # "connectionId":I
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendKeepalive(): remote exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto :goto_2

    .end local v0    # "connectionId":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :cond_5
    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendKeepalive(): result contains error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "error"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_3

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v5    # "resultBundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendKeepalive() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method

.method public setQueryData(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecRelayData;)Lcom/ipsec/client/IPsecError;
    .locals 13
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "data"    # Lcom/ipsec/client/IPsecRelayData;

    .prologue
    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setQueryData("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .local v5, "result":Lcom/ipsec/client/IPsecError;
    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v8, :cond_0

    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    const-string v10, "setQueryData(): invalid service state"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setQueryData() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v5

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .local v6, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v9, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    .local v3, "parameterBundle":Landroid/os/Bundle;
    const/4 v7, 0x0

    .local v7, "resultBundle":Landroid/os/Bundle;
    if-nez p1, :cond_6

    :try_start_2
    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    const-string v11, "setQueryData(): null connection"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    :cond_1
    :goto_1
    sget-object v8, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v5, v8, :cond_3

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    .local v0, "connectionId":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .local v4, "parameterBundle":Landroid/os/Bundle;
    :try_start_3
    const-string v8, "version"

    const-string v10, "5"

    invoke-virtual {v4, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "connection-id"

    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v4, p2}, Lcom/ipsec/client/IPsecClient;->encodeRelayData(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z

    move-result v2

    .local v2, "ok":Z
    if-nez v2, :cond_2

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setQueryData(): encode failed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (operation id not set)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    move-object v3, v4

    .end local v0    # "connectionId":I
    .end local v2    # "ok":Z
    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    :cond_3
    :try_start_4
    sget-object v8, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v5, v8, :cond_4

    :try_start_5
    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v8, v3}, Lcom/ipsec/client/IIPsecService;->setQueryData(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    :cond_4
    :goto_2
    :try_start_6
    sget-object v8, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v5, v8, :cond_5

    if-nez v7, :cond_8

    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    const-string v11, "setQueryData(): no result available"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    :cond_5
    :goto_3
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setQueryData() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v5

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    :cond_6
    :try_start_7
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    const-string v11, "setQueryData(): connection not connected"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_1

    :cond_7
    if-nez p2, :cond_1

    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    const-string v11, "setQueryData(): null data"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setQueryData(): remote exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_2

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8
    const-string v8, "error"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setQueryData(): result contains error = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "error"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_3

    :catchall_0
    move-exception v8

    :goto_4
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v7    # "resultBundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v8

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setQueryData() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v8

    .restart local v0    # "connectionId":I
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    .restart local v7    # "resultBundle":Landroid/os/Bundle;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    goto :goto_4
.end method

.method public setServiceListener(Lcom/ipsec/client/IIPsecListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/ipsec/client/IIPsecListener;

    .prologue
    const-string v0, "IPSC"

    const-string v1, "IPsecRemoteConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServiceListener("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0
.end method

.method public startService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v2, "IPSC"

    const-string v3, "IPsecRemoteConnection"

    const-string v4, "startService()"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .local v1, "result":Lcom/ipsec/client/IPsecError;
    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v2, :cond_0

    new-instance v2, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;-><init>(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$1;)V

    iput-object v2, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    sget-object v2, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    invoke-static {v2, v3}, Lcom/ipsec/client/IPsecServiceInterface;->connectService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "IPSC"

    const-string v3, "IPsecRemoteConnection"

    const-string v4, "startService(): Failed to connect to IPsecService"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IIPsecListener;

    .local v0, "listener":Lcom/ipsec/client/IIPsecListener;
    if-eqz v0, :cond_1

    invoke-interface {v0, v1, v7}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    .end local v0    # "listener":Lcom/ipsec/client/IIPsecListener;
    :cond_1
    invoke-direct {p0}, Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;

    :cond_2
    const-string v2, "IPSC"

    const-string v3, "IPsecRemoteConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startService() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public stopService()Lcom/ipsec/client/IPsecError;
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;

    move-result-object v1

    .local v1, "result":Lcom/ipsec/client/IPsecError;
    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IIPsecListener;

    .local v0, "listener":Lcom/ipsec/client/IIPsecListener;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    .end local v0    # "listener":Lcom/ipsec/client/IIPsecListener;
    :cond_0
    return-object v1
.end method
