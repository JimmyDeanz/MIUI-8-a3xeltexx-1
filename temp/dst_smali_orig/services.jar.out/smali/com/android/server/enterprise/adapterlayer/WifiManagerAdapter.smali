.class public Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
.super Ljava/lang/Object;
.source "WifiManagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerAdapter"

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static mWifiService:Landroid/net/wifi/IWifiManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiService:Landroid/net/wifi/IWifiManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addDns(Landroid/net/wifi/WifiConfiguration;Ljava/net/InetAddress;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "dns"    # Ljava/net/InetAddress;

    .prologue
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    .local v0, "mIpConfiguration":Landroid/net/IpConfiguration;
    new-instance v1, Landroid/net/StaticIpConfiguration;

    invoke-direct {v1}, Landroid/net/StaticIpConfiguration;-><init>()V

    .local v1, "staticIpConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    goto :goto_0
.end method

.method public forget(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiService:Landroid/net/wifi/IWifiManager;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->removeNetworkByMDM(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WifiManagerAdapter"

    const-string v2, "forget - failed to get wifi service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public prefixLengthToNetmaskInt(I)I
    .locals 1
    .param p1, "prefixLength"    # I

    .prologue
    invoke-static {p1}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v0

    return v0
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->saveNetworkByMDM(Landroid/net/wifi/WifiConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "WifiManagerAdapter"

    const-string v2, "save - failed to get wifi service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method
