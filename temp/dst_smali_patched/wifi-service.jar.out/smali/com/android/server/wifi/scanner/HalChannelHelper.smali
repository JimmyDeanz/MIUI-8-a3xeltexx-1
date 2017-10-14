.class public Lcom/android/server/wifi/scanner/HalChannelHelper;
.super Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;
.source "HalChannelHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HalChannelHelper"


# instance fields
.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 2
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/scanner/HalChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, 0x0

    new-array v0, v1, [I

    .local v0, "emptyFreqList":[I
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wifi/scanner/HalChannelHelper;->setBandChannels([I[I[I)V

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/HalChannelHelper;->updateChannels()V

    return-void
.end method


# virtual methods
.method public updateChannels()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/wifi/scanner/HalChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    .local v0, "channels24G":[I
    if-nez v0, :cond_0

    const-string v3, "HalChannelHelper"

    const-string v4, "Failed to get channels for 2.4GHz band"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/scanner/HalChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v1

    .local v1, "channels5G":[I
    if-nez v1, :cond_1

    const-string v3, "HalChannelHelper"

    const-string v4, "Failed to get channels for 5GHz band"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/scanner/HalChannelHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v2

    .local v2, "channelsDfs":[I
    if-nez v2, :cond_2

    const-string v3, "HalChannelHelper"

    const-string v4, "Failed to get channels for 5GHz DFS only band"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const-string v3, "HalChannelHelper"

    const-string v4, "Failed to get all channels for band, not updating band channel lists"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    if-eqz v2, :cond_3

    array-length v3, v0

    if-gtz v3, :cond_5

    array-length v3, v1

    if-lez v3, :cond_6

    :cond_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/scanner/HalChannelHelper;->setBandChannels([I[I[I)V

    goto :goto_0

    :cond_6
    array-length v3, v2

    if-gtz v3, :cond_5

    const-string v3, "HalChannelHelper"

    const-string v4, "Got zero length for all channel lists"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
