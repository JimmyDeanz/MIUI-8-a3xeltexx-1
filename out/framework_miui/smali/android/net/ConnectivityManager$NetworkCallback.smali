.class public Landroid/net/ConnectivityManager$NetworkCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCallback"
.end annotation


# instance fields
.field private networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;
    .locals 1
    .param p0, "x0"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 2020
    iget-object v0, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    .locals 0
    .param p0, "x0"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 2020
    iput-object p1, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object p1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2045
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 2086
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 2095
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .prologue
    .line 2061
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2069
    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2115
    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2106
    return-void
.end method

.method public onPreCheck(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2036
    return-void
.end method

.method public onUnavailable()V
    .locals 0

    .prologue
    .line 2076
    return-void
.end method
