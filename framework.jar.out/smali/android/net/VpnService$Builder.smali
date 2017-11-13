.class public Landroid/net/VpnService$Builder;
.super Ljava/lang/Object;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private final mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/VpnService;


# direct methods
.method public constructor <init>(Landroid/net/VpnService;)V
    .locals 2

    .prologue
    .line 492
    iput-object p1, p0, Landroid/net/VpnService$Builder;->this$0:Landroid/net/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    .line 493
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 494
    return-void
.end method

.method private verifyApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 686
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 689
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 564
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAddress(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .prologue
    .line 542
    # invokes: Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V
    invoke-static {p1, p2}, Landroid/net/VpnService;->access$100(Ljava/net/InetAddress;I)V

    .line 544
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    .line 549
    return-object p0
.end method

.method public addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addDisallowedApplication already called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/VpnService$Builder;->verifyApp(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    if-nez v0, :cond_1

    .line 723
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 725
    :cond_1
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    return-object p0
.end method

.method public addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 751
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addAllowedApplication already called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/VpnService$Builder;->verifyApp(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    if-nez v0, :cond_1

    .line 755
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 757
    :cond_1
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    return-object p0
.end method

.method public addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 641
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 619
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_1
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-nez v0, :cond_2

    .line 623
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 625
    :cond_2
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    return-object p0
.end method

.method public addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 605
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;
    .locals 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .prologue
    .line 577
    # invokes: Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V
    invoke-static {p1, p2}, Landroid/net/VpnService;->access$100(Ljava/net/InetAddress;I)V

    .line 579
    div-int/lit8 v1, p2, 0x8

    .line 580
    .local v1, "offset":I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 581
    .local v0, "bytes":[B
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 582
    aget-byte v2, v0, v1

    rem-int/lit8 v3, p2, 0x8

    shl-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 583
    aget-byte v2, v0, v1

    if-eqz v2, :cond_0

    .line 584
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 582
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    :cond_1
    iget-object v2, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    new-instance v3, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    invoke-direct {v4, p1, p2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v2, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {v2, p1}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    .line 590
    return-object p0
.end method

.method public addSearchDomain(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 648
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 651
    :cond_0
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    return-object p0
.end method

.method public allowBypass()Landroid/net/VpnService$Builder;
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    .line 773
    return-object p0
.end method

.method public allowFamily(I)Landroid/net/VpnService$Builder;
    .locals 3
    .param p1, "family"    # I

    .prologue
    const/4 v1, 0x1

    .line 674
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p1, v0, :cond_0

    .line 675
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 682
    :goto_0
    return-object p0

    .line 676
    :cond_0
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_1

    .line 677
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    goto :goto_0

    .line 679
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is neither "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public establish()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    .line 848
    iget-object v1, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 849
    iget-object v1, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 852
    :try_start_0
    # invokes: Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;
    invoke-static {}, Landroid/net/VpnService;->access$200()Landroid/net/IConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBlocking(Z)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "blocking"    # Z

    .prologue
    .line 786
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean p1, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    .line 787
    return-object p0
.end method

.method public setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 512
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    .line 513
    return-object p0
.end method

.method public setMtu(I)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "mtu"    # I

    .prologue
    .line 524
    if-gtz p1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad mtu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput p1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 528
    return-object p0
.end method

.method public setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 502
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 503
    return-object p0
.end method

.method public setUnderlyingNetworks([Landroid/net/Network;)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "networks"    # [Landroid/net/Network;

    .prologue
    .line 800
    iget-object v1, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Landroid/net/Network;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Network;

    :goto_0
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 801
    return-object p0

    .line 800
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
