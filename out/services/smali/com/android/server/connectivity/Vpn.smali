.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final CC_PROPERTY_ENABLED_VALUE:Ljava/lang/String; = "Enabled"

.field private static final CC_PROPERTY_ENFORCING_VALUE:Ljava/lang/String; = "Enforcing"

.field private static final DBG:Z

.field private static final LOGD:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final PER_APP_VPN:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "Vpn"


# instance fields
.field private final KNOXVPN_CONTAINER_ENABLED:I

.field private KNOXVPN_FEATURE:I

.field private final KNOXVPN_MDM_ENABLED:I

.field private mAddress:Ljava/lang/String;

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEgressIface:Ljava/lang/String;

.field private volatile mEnableLockdownVpn:Z

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mKnoxOldInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserHandle:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mV6Address:Ljava/lang/String;

.field private mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

.field private mVpnUsers:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 150
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .locals 8
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 166
    iput-boolean v7, p0, Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z

    .line 176
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    .line 178
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    .line 193
    iput v1, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_MDM_ENABLED:I

    .line 194
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_CONTAINER_ENABLED:I

    .line 884
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 206
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 207
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    .line 208
    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 209
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 211
    const-string v0, "[Legacy VPN]"

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    if-nez p4, :cond_0

    .line 221
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 238
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 244
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x11

    const-string v2, "VPN"

    const-string v4, ""

    invoke-direct {v0, v1, v7, v2, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 246
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 247
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 248
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 249
    return-void

    .line 216
    :catch_0
    move-exception v6

    .line 217
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "Vpn"

    const-string v1, "Problem registering observer"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "block"    # Z

    .prologue
    .line 2235
    const-string/jumbo v3, "security.mdpp"

    const-string v4, "Disabled"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2236
    .local v0, "ccModePropertyValue":Ljava/lang/String;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CC property value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    if-eqz v0, :cond_1

    const-string v3, "Enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Enforcing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2241
    :cond_0
    if-eqz p2, :cond_2

    .line 2242
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_1

    .line 2244
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 2245
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    invoke-interface {v3, p1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2246
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x1194

    const/4 v5, 0x1

    invoke-interface {v3, p1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2247
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x6a5

    const/4 v5, 0x1

    invoke-interface {v3, p1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2248
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "ipsec0"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 2249
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetFirewallForVPN_CCMode enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2253
    .local v1, "clatIpv6addr":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2254
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x1194

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2255
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v4, 0x6a5

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2256
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "fe80::/64"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 2257
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const-string v4, "2000::/4"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 2258
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetFirewallForVPN_CCMode enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2275
    .end local v1    # "clatIpv6addr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2259
    :catch_0
    move-exception v2

    .line 2260
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Exception when enabling SetFirewallForVPN_CCMode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2266
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    if-eqz v3, :cond_1

    .line 2267
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 2268
    const-string v3, "Vpn"

    const-string v4, "SetFirewallForVPN_CCMode disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2270
    :catch_1
    move-exception v2

    .line 2271
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Exception when disabling SetFirewallForVPN_CCMode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$Connection;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Vpn;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Vpn;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 146
    sget-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/connectivity/Vpn;Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkAgent;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Vpn;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Vpn;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/connectivity/Vpn;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    return p1
.end method

.method static synthetic access$3100([B)V
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->wipeByteArray([B)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private addVpnUserLocked(I)V
    .locals 26
    .param p1, "userHandle"    # I

    .prologue
    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 717
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "VPN is not active"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 720
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 722
    const/16 v16, -0x1

    .local v16, "start":I
    const/16 v17, -0x1

    .line 723
    .local v17, "stop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 724
    .local v20, "uid":I
    const/16 v23, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 725
    move/from16 v16, v20

    .line 730
    :cond_1
    :goto_1
    move/from16 v17, v20

    .line 731
    goto :goto_0

    .line 726
    :cond_2
    add-int/lit8 v23, v17, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/UidRange;

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    move/from16 v16, v20

    goto :goto_1

    .line 732
    .end local v20    # "uid":I
    :cond_3
    const/16 v23, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/UidRange;

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "start":I
    .end local v17    # "stop":I
    :cond_4
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "[Legacy VPN]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 774
    const/4 v4, 0x0

    .line 775
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 776
    .local v18, "token":J
    const-string v13, ""

    .line 777
    .local v13, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 779
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 780
    .local v15, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x2080

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 781
    if-eqz v4, :cond_5

    .line 782
    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 784
    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 785
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    if-lez v23, :cond_5

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    if-lez v23, :cond_5

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050005

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 788
    .local v22, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050006

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 790
    .local v9, "height":I
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 791
    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 792
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 793
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v11, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 794
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v9    # "height":I
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v22    # "width":I
    :cond_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 802
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v5, v1}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 806
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "label":Ljava/lang/String;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "token":J
    :goto_3
    return-void

    .line 733
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 735
    invoke-static/range {p1 .. p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v21

    .line 736
    .local v21, "userRange":Landroid/net/UidRange;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/UidRange;->start:I

    move/from16 v16, v0

    .line 737
    .restart local v16    # "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 738
    .restart local v20    # "uid":I
    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 739
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 741
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/UidRange;

    add-int/lit8 v25, v20, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    add-int/lit8 v16, v20, 0x1

    goto :goto_4

    .line 745
    .end local v20    # "uid":I
    :cond_8
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/UidRange;->stop:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/UidRange;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/UidRange;->stop:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 748
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "start":I
    .end local v21    # "userRange":Landroid/net/UidRange;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-static/range {p1 .. p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    const-string/jumbo v23, "security.mdpp"

    const-string v24, "Disabled"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, "ccModePropertyValue":Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string v23, "Enabled"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string v23, "Enforcing"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 756
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "persona"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PersonaManager;

    .line 757
    .local v15, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v15}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v14

    .line 758
    .local v14, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_4

    .line 759
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PersonaInfo;

    .line 760
    .local v12, "info":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    move-object/from16 v23, v0

    iget v0, v12, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    const-string v23, "Vpn"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Add UID with prefix "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v12, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 797
    .end local v7    # "ccModePropertyValue":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/PersonaInfo;
    .end local v14    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v15    # "pm":Landroid/os/PersonaManager;
    .restart local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "label":Ljava/lang/String;
    .restart local v18    # "token":J
    :catch_0
    move-exception v8

    .line 798
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Invalid application"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 800
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v23

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23

    .line 804
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "label":Ljava/lang/String;
    .end local v18    # "token":J
    :cond_b
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_3
.end method

.method private agentConnect()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xc

    .line 510
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 512
    .local v7, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 518
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    .line 522
    .local v9, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 526
    .local v12, "token":J
    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/Vpn$2;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v4, "VPN"

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    .line 539
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-nez v0, :cond_3

    .line 540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 543
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    .line 545
    .local v14, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 547
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 548
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    goto :goto_1

    .line 515
    .end local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "token":J
    .end local v14    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 534
    .restart local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .restart local v12    # "token":J
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 545
    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 553
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V

    .line 554
    return-void
.end method

.method private agentDisconnect()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 574
    :cond_0
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .locals 2
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    .line 565
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 566
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 567
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    const/4 v1, 0x0

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 558
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    if-eqz p2, :cond_0

    .line 560
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 562
    :cond_0
    return-void
.end method

.method private copyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "toCopy"    # Ljava/lang/String;

    .prologue
    .line 2209
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2210
    .local v0, "array":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 2211
    .local v1, "copy":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 2212
    const/4 v3, 0x0

    aput-char v3, v0, v2

    .line 2211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2214
    :cond_0
    return-object v1
.end method

.method private copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "toCopy"    # [Ljava/lang/String;

    .prologue
    .line 2224
    if-eqz p1, :cond_0

    .line 2225
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 2226
    .local v0, "copy":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2227
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2231
    .end local v0    # "copy":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private enforceControlPermission()V
    .locals 3

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_VPN"

    const-string v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    .line 1121
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1123
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 1124
    return-object v1

    .line 1128
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .locals 4
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 429
    const-string v3, "[Legacy VPN]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 439
    :goto_0
    return v2

    .line 432
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 435
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "result":I
    goto :goto_0

    .line 436
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .locals 5
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 707
    .local v3, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 708
    .local v0, "app":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v2

    .line 709
    .local v2, "uid":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 711
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_1
    return-object v3
.end method

.method private getVpnTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2290
    packed-switch p1, :pswitch_data_0

    .line 2308
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2292
    :pswitch_0
    const-string v0, "PPTP"

    goto :goto_0

    .line 2294
    :pswitch_1
    const-string v0, "L2TP_IPSEC_RSA"

    goto :goto_0

    .line 2296
    :pswitch_2
    const-string v0, "L2TP_IPSEC_PSK"

    goto :goto_0

    .line 2298
    :pswitch_3
    const-string v0, "IPSEC_XAUTH_RSA"

    goto :goto_0

    .line 2300
    :pswitch_4
    const-string v0, "IPSEC_XAUTH_PSK"

    goto :goto_0

    .line 2302
    :pswitch_5
    const-string v0, "IPSEC_IKEV2_RSA"

    goto :goto_0

    .line 2304
    :pswitch_6
    const-string v0, "IPSEC_IKEV2_PSK"

    goto :goto_0

    .line 2306
    :pswitch_7
    const-string v0, "IPSEC_HYBRID_RSA"

    goto :goto_0

    .line 2290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private hideNotification(I)V
    .locals 6
    .param p1, "user"    # I

    .prologue
    const/4 v1, 0x0

    .line 987
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 988
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 991
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 992
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 994
    .local v2, "token":J
    const/4 v1, 0x0

    const v4, 0x1080a7f

    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    .end local v2    # "token":J
    :cond_0
    return-void

    .line 996
    .restart local v2    # "token":J
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isCallerEstablishedOwnerLocked()Z
    .locals 2

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRunningLocked()Z
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVpnConnectionSecure([Ljava/lang/String;)Z
    .locals 5
    .param p1, "racoon"    # [Ljava/lang/String;

    .prologue
    .line 2189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2190
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2192
    const/4 v0, 0x1

    .line 2193
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 2194
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    .line 2196
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    if-eqz v1, :cond_1

    .line 2197
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    invoke-virtual {v1, p1}, Landroid/app/enterprise/VpnPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z

    move-result v0

    .line 2199
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2200
    return v0
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 424
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v1, 0x2f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(IZ)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x0

    .line 451
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v9, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 452
    .local v1, "allowIPv4":Z
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v2, v9, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 454
    .local v2, "allowIPv6":Z
    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    .line 456
    .local v7, "lp":Landroid/net/LinkProperties;
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 458
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v9, :cond_0

    .line 459
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 460
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v7, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 461
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet4Address;

    or-int/2addr v1, v9

    .line 462
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet6Address;

    or-int/2addr v2, v9

    .line 463
    goto :goto_0

    .line 466
    .end local v0    # "address":Landroid/net/LinkAddress;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 467
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 468
    .local v8, "route":Landroid/net/RouteInfo;
    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 469
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 470
    .local v0, "address":Ljava/net/InetAddress;
    instance-of v9, v0, Ljava/net/Inet4Address;

    or-int/2addr v1, v9

    .line 471
    instance-of v9, v0, Ljava/net/Inet6Address;

    or-int/2addr v2, v9

    .line 472
    goto :goto_1

    .line 475
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "route":Landroid/net/RouteInfo;
    :cond_1
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v9, :cond_3

    .line 476
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 477
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 478
    .restart local v0    # "address":Ljava/net/InetAddress;
    invoke-virtual {v7, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 479
    instance-of v9, v0, Ljava/net/Inet4Address;

    or-int/2addr v1, v9

    .line 480
    instance-of v9, v0, Ljava/net/Inet6Address;

    or-int/2addr v2, v9

    .line 481
    goto :goto_2

    .line 483
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v4    # "dnsServer":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 484
    new-instance v9, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    sget-object v11, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v10, v11, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v9, v10, v13}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 488
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    if-nez v1, :cond_4

    .line 489
    new-instance v9, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    sget-object v11, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v10, v11, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v9, v10, v13}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 491
    :cond_4
    if-nez v2, :cond_5

    .line 492
    new-instance v9, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    sget-object v11, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v10, v11, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v9, v10, v13}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 496
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v3, "buffer":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v9, :cond_6

    .line 498
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 499
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 502
    .end local v5    # "domain":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 506
    return-object v7
.end method

.method private onUserAdded(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 835
    monitor-enter p0

    .line 836
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 837
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 838
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 840
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    .line 841
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v4, :cond_0

    .line 842
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    move-result-object v2

    .line 843
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/UidRange;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/UidRange;

    invoke-virtual {v5, v4}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    .end local v2    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 850
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Vpn"

    const-string v5, "Failed to add restricted user to owner"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 849
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 854
    monitor-enter p0

    .line 855
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 856
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 857
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 859
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 864
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 865
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 864
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .locals 10
    .param p1, "newPackage"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 336
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 337
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 338
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRange;

    .line 339
    .local v3, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v3}, Landroid/net/UidRange;->getStartUser()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 389
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "uidRange":Landroid/net/UidRange;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 343
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 344
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 346
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 347
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 348
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    .line 352
    :cond_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    if-eqz v6, :cond_3

    .line 354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 356
    .local v0, "data":Landroid/os/Parcel;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    # getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn$Connection;->access$200(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v6

    const v7, 0xffffff

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v6, v7, v0, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 362
    :try_start_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 365
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_2
    :goto_2
    :try_start_4
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 377
    :goto_3
    :try_start_5
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Switched from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 379
    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v6}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 381
    :try_start_6
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 385
    :goto_4
    const/4 v6, 0x0

    :try_start_7
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 387
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v7, "prepare"

    invoke-direct {p0, v6, v7}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 389
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    return-void

    .line 358
    .restart local v0    # "data":Landroid/os/Parcel;
    :catch_0
    move-exception v6

    .line 362
    :try_start_8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v6

    .line 366
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v6, :cond_2

    .line 367
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 368
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    goto :goto_2

    .line 373
    :catch_1
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to disallow UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to call protect() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 383
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to allow UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to call protect() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4
.end method

.method private prepareStatusIntent()V
    .locals 3

    .prologue
    .line 941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 943
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 947
    return-void

    .line 945
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeVpnUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 822
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    if-nez v1, :cond_0

    .line 823
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 825
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    move-result-object v0

    .line 826
    .local v0, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_1

    .line 827
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/UidRange;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->removeUidRanges([Landroid/net/UidRange;)V

    .line 829
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 830
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 831
    return-void
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 7
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    .line 970
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 971
    const-string v4, "Vpn"

    const-string/jumbo v5, "showNotification : LOCKDOWN_VPN"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 975
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 978
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/connectivity/Vpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 979
    .local v1, "notification":Landroid/app/Notification;
    const/4 v4, 0x0

    const v5, 0x1080a7f

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "notification":Landroid/app/Notification;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;

    .prologue
    .line 1349
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 1352
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 1353
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1359
    :cond_0
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1360
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    monitor-exit p0

    return-void

    .line 1349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private uidRangesForUser(I)Ljava/util/List;
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v3

    .line 812
    .local v3, "userRange":Landroid/net/UidRange;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    .line 814
    .local v1, "range":Landroid/net/UidRange;
    iget v4, v1, Landroid/net/UidRange;->start:I

    iget v5, v3, Landroid/net/UidRange;->start:I

    if-lt v4, v5, :cond_0

    iget v4, v1, Landroid/net/UidRange;->stop:I

    iget v5, v3, Landroid/net/UidRange;->stop:I

    if-gt v4, v5, :cond_0

    .line 815
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 818
    .end local v1    # "range":Landroid/net/UidRange;
    :cond_1
    return-object v2
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 3
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 280
    :cond_0
    return-void
.end method

.method private static wipeByteArray([B)V
    .locals 2
    .param p0, "byteArray"    # [B

    .prologue
    .line 2218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2219
    const/4 v1, 0x0

    aput-byte v1, p0, v0

    .line 2218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2221
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 1036
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1037
    const/4 v0, 0x0

    .line 1043
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1039
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1040
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1036
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized appliesToUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1099
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 1109
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1102
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1103
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    .line 1104
    .local v1, "uidRange":Landroid/net/UidRange;
    iget v3, v1, Landroid/net/UidRange;->start:I

    if-gt v3, p1, :cond_2

    iget v3, v1, Landroid/net/UidRange;->stop:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v3, :cond_2

    .line 1105
    const/4 v2, 0x1

    goto :goto_0

    .line 1099
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "uidRange":Landroid/net/UidRange;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 2278
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "64:ff9b::"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2279
    .local v0, "clatIpv6addr":Ljava/lang/StringBuffer;
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2281
    .local v2, "octets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 2282
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2283
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 2284
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2281
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2286
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 950
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040449

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x104044b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "text":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080a7f

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 964
    .local v0, "notification":Landroid/app/Notification;
    return-object v0

    .line 950
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x104044a

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 952
    .restart local v2    # "title":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x104044c

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 26
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 587
    .local v12, "mgr":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    move/from16 v23, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 588
    const/16 v20, 0x0

    .line 691
    :goto_0
    monitor-exit p0

    return-object v20

    .line 591
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 592
    const/16 v20, 0x0

    goto :goto_0

    .line 595
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string v22, "android.net.VpnService"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v18

    .line 600
    .local v18, "token":J
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v21

    .line 601
    .local v21, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v22

    if-nez v22, :cond_2

    const-string/jumbo v22, "no_config_vpn"

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 603
    :cond_2
    new-instance v22, Ljava/lang/SecurityException;

    const-string v23, "Restricted users cannot establish VPNs"

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v7

    .line 615
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v22, Ljava/lang/SecurityException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot find "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 617
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v22

    :try_start_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 586
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "mgr":Landroid/os/UserManager;
    .end local v18    # "token":J
    :catchall_1
    move-exception v22

    monitor-exit p0

    throw v22

    .line 606
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "mgr":Landroid/os/UserManager;
    .restart local v18    # "token":J
    .restart local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-interface {v0, v10, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 608
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    if-nez v9, :cond_4

    .line 609
    new-instance v22, Ljava/lang/SecurityException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot find "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 611
    :cond_4
    const-string v22, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 612
    new-instance v22, Ljava/lang/SecurityException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not require "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 617
    :cond_5
    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 622
    .local v13, "oldConfig":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 623
    .local v15, "oldInterface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 624
    .local v14, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v16, v0

    .line 625
    .local v16, "oldNetworkAgent":Landroid/net/NetworkAgent;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    move-object/from16 v17, v0

    .line 629
    .local v17, "oldUsers":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->jniCreate(IZ)I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v20

    .line 631
    .local v20, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_7
    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v23, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v11

    .line 635
    .local v11, "interfaze":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .local v5, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 637
    .local v4, "address":Landroid/net/LinkAddress;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 679
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "interfaze":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 680
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_8
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 681
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 683
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 684
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 685
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    .line 686
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 687
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 688
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 639
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "interfaze":Ljava/lang/String;
    :cond_6
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 640
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "At least one address must be specified"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 642
    :cond_7
    new-instance v6, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 643
    .local v6, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x4000001

    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v10, v6, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 646
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot bind "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 649
    :cond_8
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 650
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 654
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 655
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 658
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 662
    if-eqz v14, :cond_9

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 668
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 669
    if-eqz v15, :cond_a

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 670
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 674
    :cond_a
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v22

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 690
    :try_start_b
    const-string v22, "Vpn"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Established by "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " on "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 675
    :catch_2
    move-exception v7

    .line 676
    .local v7, "e":Ljava/io/IOException;
    :try_start_c
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1405
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    .prologue
    .line 1381
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2

    .prologue
    .line 1390
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1398
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1392
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1393
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1394
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1395
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1390
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNetId()I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget v0, v0, Landroid/net/NetworkAgent;->netId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .locals 1

    .prologue
    .line 1077
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    const/4 v0, 0x0

    .line 1080
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 872
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .locals 2

    .prologue
    .line 1088
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1089
    const/4 v0, 0x0

    .line 1095
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1092
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    .line 1093
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    .line 1094
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1088
    .end local v0    # "info":Lcom/android/internal/net/VpnInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hideNotificationForLockdown()V
    .locals 2

    .prologue
    .line 1031
    const-string v0, "Vpn"

    const-string/jumbo v1, "hideNotificationForLockdown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 1033
    return-void
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 878
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    :goto_0
    monitor-exit p0

    return-void

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 879
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 301
    monitor-enter p0

    if-eqz p1, :cond_3

    .line 302
    :try_start_0
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-eq v2, v3, :cond_2

    .line 305
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 309
    goto :goto_0

    .line 310
    :cond_2
    :try_start_1
    const-string v2, "[Legacy VPN]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 313
    const-string v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    move v0, v1

    .line 314
    goto :goto_0

    .line 319
    :cond_3
    if-eqz p2, :cond_0

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-eq v1, v2, :cond_0

    .line 325
    :cond_4
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 327
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 1047
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1048
    const/4 v0, 0x0

    .line 1054
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1050
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1051
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1047
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setEnableLockdownVpn(Z)V
    .locals 0
    .param p1, "enableLockdownVpn"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z

    .line 269
    return-void
.end method

.method public setEnableTeardown(Z)V
    .locals 0
    .param p1, "enableTeardown"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 262
    return-void
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authorized"    # Z

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 400
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v5}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v4

    .line 401
    .local v4, "uid":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const-string v5, "[Legacy VPN]"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 408
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 410
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v6, 0x2f

    if-eqz p2, :cond_2

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v6, v4, p1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 410
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 412
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set app ops for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 4
    .param p1, "networks"    # [Landroid/net/Network;

    .prologue
    .line 1058
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1059
    const/4 v1, 0x0

    .line 1073
    :goto_0
    monitor-exit p0

    return v1

    .line 1061
    :cond_0
    if-nez p1, :cond_2

    .line 1062
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1073
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1064
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v2, p1

    new-array v2, v2, [Landroid/net/Network;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1065
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1066
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 1067
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1065
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1069
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    new-instance v2, Landroid/net/Network;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(I)V

    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1058
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showNotificationForLockdown(II)V
    .locals 8
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    .prologue
    .line 1002
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showNotificationForLockdown :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 1007
    .local v4, "user":I
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1008
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1009
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 1010
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1012
    .local v2, "token":J
    :try_start_0
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v7, 0x1040450

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1020
    .local v1, "notification":Landroid/app/Notification;
    iget v5, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x62

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 1023
    const/4 v5, 0x0

    const v6, 0x1080a7f

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v5, v6, v1, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "token":J
    :cond_0
    return-void

    .line 1025
    .restart local v2    # "token":J
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1140
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1143
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1147
    return-void

    .line 1145
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 25
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1158
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "KeyStore isn\'t unlocked"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1160
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v16

    .line 1161
    .local v16, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v21

    .line 1162
    .local v21, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "no_config_vpn"

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1164
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Restricted users cannot establish VPNs"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1167
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v15

    .line 1168
    .local v15, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v15}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    .line 1169
    .local v13, "gateway":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v14

    .line 1170
    .local v14, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 1171
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Egress Iface ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") activated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 1175
    const-string v3, "Vpn"

    const-string v4, "Reset connections"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const-string v18, ""

    .line 1179
    .local v18, "privateKey":Ljava/lang/String;
    const-string v22, ""

    .line 1180
    .local v22, "userCert":Ljava/lang/String;
    const-string v10, ""

    .line 1181
    .local v10, "caCert":Ljava/lang/String;
    const-string v20, ""

    .line 1183
    .local v20, "serverCert":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v23

    .line 1186
    .local v23, "value":[B
    if-nez v23, :cond_7

    const/16 v22, 0x0

    .line 1188
    .end local v23    # "value":[B
    :cond_3
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v23

    .line 1190
    .restart local v23    # "value":[B
    if-nez v23, :cond_8

    const/4 v10, 0x0

    .line 1192
    .end local v23    # "value":[B
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v23

    .line 1194
    .restart local v23    # "value":[B
    if-nez v23, :cond_9

    const/16 v20, 0x0

    .line 1196
    .end local v23    # "value":[B
    :cond_5
    :goto_2
    if-eqz v18, :cond_6

    if-eqz v22, :cond_6

    if-eqz v10, :cond_6

    if-nez v20, :cond_a

    .line 1197
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot load credentials"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1186
    .restart local v23    # "value":[B
    :cond_7
    new-instance v22, Ljava/lang/String;

    .end local v22    # "userCert":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 1190
    .restart local v22    # "userCert":Ljava/lang/String;
    :cond_8
    new-instance v10, Ljava/lang/String;

    .end local v10    # "caCert":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v23

    invoke-direct {v10, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 1194
    .restart local v10    # "caCert":Ljava/lang/String;
    :cond_9
    new-instance v20, Ljava/lang/String;

    .end local v20    # "serverCert":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 1201
    .end local v23    # "value":[B
    .restart local v20    # "serverCert":Ljava/lang/String;
    :cond_a
    const/16 v19, 0x0

    .line 1202
    .local v19, "racoon":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_0

    .line 1224
    :goto_3
    const-string/jumbo v3, "security.mdpp"

    const-string v4, "Disabled"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1228
    .local v11, "ccModePropertyValue":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_1

    .line 1295
    :goto_4
    move-object/from16 v24, v19

    .line 1296
    .local v24, "vpnParameters":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnConnectionSecure([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1298
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "Vpn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connecting to VPN network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to server address : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/connectivity/Vpn;->getVpnTypeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed - unsecure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1346
    :goto_5
    return-void

    .line 1204
    .end local v11    # "ccModePropertyValue":Ljava/lang/String;
    .end local v24    # "vpnParameters":[Ljava/lang/String;
    :pswitch_0
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v19, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "udppsk"

    aput-object v4, v19, v3

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x5

    const-string v4, "1701"

    aput-object v4, v19, v3

    .line 1208
    .restart local v19    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 1210
    :pswitch_1
    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v19, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "udprsa"

    aput-object v4, v19, v3

    const/4 v3, 0x3

    aput-object v18, v19, v3

    const/4 v3, 0x4

    aput-object v22, v19, v3

    const/4 v3, 0x5

    aput-object v10, v19, v3

    const/4 v3, 0x6

    aput-object v20, v19, v3

    const/4 v3, 0x7

    const-string v4, "1701"

    aput-object v4, v19, v3

    .line 1214
    .restart local v19    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 1216
    :pswitch_2
    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v19, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "hybridrsa"

    aput-object v4, v19, v3

    const/4 v3, 0x3

    aput-object v10, v19, v3

    const/4 v3, 0x4

    aput-object v20, v19, v3

    const/4 v3, 0x5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v4, v19, v3

    const/16 v3, 0x8

    aput-object v13, v19, v3

    .restart local v19    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 1230
    .restart local v11    # "ccModePropertyValue":Ljava/lang/String;
    :pswitch_3
    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "xauthpsk"

    aput-object v4, v19, v3

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x4

    aput-object v11, v19, v3

    const/4 v4, 0x5

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_b

    const-string v3, "+pfs"

    :goto_6
    aput-object v3, v19, v4

    const/4 v3, 0x6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v4, v19, v3

    .line 1237
    .restart local v19    # "racoon":[Ljava/lang/String;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charon: type = IPSEC_XAUTH_PSK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1230
    .end local v19    # "racoon":[Ljava/lang/String;
    :cond_b
    const-string/jumbo v3, "nonpfs"

    goto :goto_6

    .line 1240
    .restart local v19    # "racoon":[Ljava/lang/String;
    :pswitch_4
    const/16 v3, 0xb

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "xauthrsa"

    aput-object v4, v19, v3

    const/4 v3, 0x2

    aput-object v18, v19, v3

    const/4 v3, 0x3

    aput-object v22, v19, v3

    const/4 v3, 0x4

    aput-object v10, v19, v3

    const/4 v3, 0x5

    aput-object v20, v19, v3

    const/4 v3, 0x6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x7

    aput-object v11, v19, v3

    const/16 v4, 0x8

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_c

    const-string v3, "+pfs"

    :goto_7
    aput-object v3, v19, v4

    const/16 v3, 0x9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v4, v19, v3

    const/16 v3, 0xa

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v4, v19, v3

    .line 1246
    .restart local v19    # "racoon":[Ljava/lang/String;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charon: type = IPSEC_XAUTH_RSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1240
    .end local v19    # "racoon":[Ljava/lang/String;
    :cond_c
    const-string/jumbo v3, "nonpfs"

    goto :goto_7

    .line 1249
    .restart local v19    # "racoon":[Ljava/lang/String;
    :pswitch_5
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ikev2psk"

    aput-object v4, v19, v3

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x4

    aput-object v11, v19, v3

    const/4 v4, 0x5

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_d

    const-string v3, "+pfs"

    :goto_8
    aput-object v3, v19, v4

    .line 1254
    .restart local v19    # "racoon":[Ljava/lang/String;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charon: type = IPSEC_IKEV2_PSK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1249
    .end local v19    # "racoon":[Ljava/lang/String;
    :cond_d
    const-string/jumbo v3, "nonpfs"

    goto :goto_8

    .line 1257
    .restart local v19    # "racoon":[Ljava/lang/String;
    :pswitch_6
    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ikev2rsa"

    aput-object v4, v19, v3

    const/4 v3, 0x2

    aput-object v18, v19, v3

    const/4 v3, 0x3

    aput-object v22, v19, v3

    const/4 v3, 0x4

    aput-object v10, v19, v3

    const/4 v3, 0x5

    aput-object v20, v19, v3

    const/4 v3, 0x6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    aput-object v4, v19, v3

    const/4 v3, 0x7

    aput-object v11, v19, v3

    const/16 v4, 0x8

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_e

    const-string v3, "+pfs"

    :goto_9
    aput-object v3, v19, v4

    .line 1262
    .restart local v19    # "racoon":[Ljava/lang/String;
    const-string v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charon: type = IPSEC_IKEV2_RSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1257
    .end local v19    # "racoon":[Ljava/lang/String;
    :cond_e
    const-string/jumbo v3, "nonpfs"

    goto :goto_9

    .line 1310
    .restart local v19    # "racoon":[Ljava/lang/String;
    .restart local v24    # "vpnParameters":[Ljava/lang/String;
    :cond_f
    const/16 v17, 0x0

    .line 1311
    .local v17, "mtpd":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_2

    .line 1332
    :goto_a
    new-instance v12, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v12}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1333
    .local v12, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1334
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/Vpn;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1335
    iput-object v14, v12, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1336
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/Vpn;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1338
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/Vpn;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1339
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1340
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/Vpn;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v12, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1342
    :cond_10
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1343
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/Vpn;->copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v12, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1345
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1313
    .end local v12    # "config":Lcom/android/internal/net/VpnConfig;
    :pswitch_7
    const/16 v3, 0x14

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v17    # "mtpd":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v17, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "pptp"

    aput-object v4, v17, v3

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v17, v3

    const/4 v3, 0x3

    const-string v4, "1723"

    aput-object v4, v17, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "name"

    aput-object v4, v17, v3

    const/4 v3, 0x5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v4, v17, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "password"

    aput-object v4, v17, v3

    const/4 v3, 0x7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v4, v17, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "linkname"

    aput-object v4, v17, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "vpn"

    aput-object v4, v17, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "refuse-eap"

    aput-object v4, v17, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "nodefaultroute"

    aput-object v4, v17, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "usepeerdns"

    aput-object v4, v17, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "idle"

    aput-object v4, v17, v3

    const/16 v3, 0xe

    const-string v4, "1800"

    aput-object v4, v17, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "mtu"

    aput-object v4, v17, v3

    const/16 v3, 0x10

    const-string v4, "1400"

    aput-object v4, v17, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "mru"

    aput-object v4, v17, v3

    const/16 v3, 0x12

    const-string v4, "1400"

    aput-object v4, v17, v3

    const/16 v4, 0x13

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v3, :cond_12

    const-string v3, "+mppe"

    :goto_b
    aput-object v3, v17, v4

    .line 1320
    .restart local v17    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_a

    .line 1313
    .end local v17    # "mtpd":[Ljava/lang/String;
    :cond_12
    const-string/jumbo v3, "nomppe"

    goto :goto_b

    .line 1323
    .restart local v17    # "mtpd":[Ljava/lang/String;
    :pswitch_8
    const/16 v3, 0x14

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v17    # "mtpd":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v14, v17, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "l2tp"

    aput-object v4, v17, v3

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v4, v17, v3

    const/4 v3, 0x3

    const-string v4, "1701"

    aput-object v4, v17, v3

    const/4 v3, 0x4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v4, v17, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "name"

    aput-object v4, v17, v3

    const/4 v3, 0x6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v4, v17, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "password"

    aput-object v4, v17, v3

    const/16 v3, 0x8

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v4, v17, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "linkname"

    aput-object v4, v17, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "vpn"

    aput-object v4, v17, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "refuse-eap"

    aput-object v4, v17, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "nodefaultroute"

    aput-object v4, v17, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "usepeerdns"

    aput-object v4, v17, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "idle"

    aput-object v4, v17, v3

    const/16 v3, 0xf

    const-string v4, "1800"

    aput-object v4, v17, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "mtu"

    aput-object v4, v17, v3

    const/16 v3, 0x11

    const-string v4, "1300"

    aput-object v4, v17, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "mru"

    aput-object v4, v17, v3

    const/16 v3, 0x13

    const-string v4, "1300"

    aput-object v4, v17, v3

    .restart local v17    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_a

    .line 1202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1228
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1311
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .locals 2

    .prologue
    .line 1365
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1369
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1372
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1374
    :cond_0
    monitor-exit p0

    return-void

    .line 1372
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1365
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
